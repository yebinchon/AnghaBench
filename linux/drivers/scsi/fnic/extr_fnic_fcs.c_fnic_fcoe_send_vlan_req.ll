; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_fcoe_send_vlan_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_fcoe_send_vlan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, %struct.TYPE_12__*, i32 (%struct.fnic*, i32)*, %struct.fnic_stats, %struct.fcoe_ctlr }
%struct.TYPE_12__ = type { i32 }
%struct.fnic_stats = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.fcoe_ctlr = type { i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)*, %struct.TYPE_18__*, i32 }
%struct.sk_buff = type { i8*, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.fip_vlan = type { %struct.TYPE_20__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_13__ = type { i8*, i32*, i32* }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sending VLAN request...\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@fcoe_all_fcfs = common dso_local global i32 0, align 4
@ETH_P_FIP = common dso_local global i32 0, align 4
@FIP_VER = common dso_local global i32 0, align 4
@FIP_OP_VLAN = common dso_local global i32 0, align 4
@FIP_SC_VL_REQ = common dso_local global i32 0, align 4
@FIP_BPW = common dso_local global i32 0, align 4
@FIP_DT_MAC = common dso_local global i32 0, align 4
@FIP_DT_NAME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FCOE_CTLR_FIPVLAN_TOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fnic*)* @fnic_fcoe_send_vlan_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_fcoe_send_vlan_req(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fnic_stats*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fip_vlan*, align 8
  %9 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  %10 = load %struct.fnic*, %struct.fnic** %2, align 8
  %11 = getelementptr inbounds %struct.fnic, %struct.fnic* %10, i32 0, i32 4
  store %struct.fcoe_ctlr* %11, %struct.fcoe_ctlr** %3, align 8
  %12 = load %struct.fnic*, %struct.fnic** %2, align 8
  %13 = getelementptr inbounds %struct.fnic, %struct.fnic* %12, i32 0, i32 3
  store %struct.fnic_stats* %13, %struct.fnic_stats** %4, align 8
  %14 = load %struct.fnic*, %struct.fnic** %2, align 8
  %15 = call i32 @fnic_fcoe_reset_vlans(%struct.fnic* %14)
  %16 = load %struct.fnic*, %struct.fnic** %2, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 2
  %18 = load i32 (%struct.fnic*, i32)*, i32 (%struct.fnic*, i32)** %17, align 8
  %19 = load %struct.fnic*, %struct.fnic** %2, align 8
  %20 = call i32 %18(%struct.fnic* %19, i32 0)
  %21 = call i64 (...) @printk_ratelimit()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load i32, i32* @KERN_INFO, align 4
  %25 = load %struct.fnic*, %struct.fnic** %2, align 8
  %26 = getelementptr inbounds %struct.fnic, %struct.fnic* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @FNIC_FCS_DBG(i32 %24, i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %23, %1
  %32 = call %struct.sk_buff* @dev_alloc_skb(i32 80)
  store %struct.sk_buff* %32, %struct.sk_buff** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %166

36:                                               ; preds = %31
  store i32 80, i32* %7, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = bitcast i8* %41 to %struct.fip_vlan*
  store %struct.fip_vlan* %42, %struct.fip_vlan** %8, align 8
  %43 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %44 = call i32 @memset(%struct.fip_vlan* %43, i32 0, i32 80)
  %45 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %46 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %50 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32* %48, i32 %51, i32 %52)
  %54 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %55 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @fcoe_all_fcfs, align 4
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @memcpy(i32* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @ETH_P_FIP, align 4
  %62 = call i8* @htons(i32 %61)
  %63 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %64 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load i32, i32* @FIP_VER, align 4
  %67 = call i32 @FIP_VER_ENCAPS(i32 %66)
  %68 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %69 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @FIP_OP_VLAN, align 4
  %72 = call i8* @htons(i32 %71)
  %73 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %74 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load i32, i32* @FIP_SC_VL_REQ, align 4
  %77 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %78 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @FIP_BPW, align 4
  %81 = sext i32 %80 to i64
  %82 = udiv i64 24, %81
  %83 = trunc i64 %82 to i32
  %84 = call i8* @htons(i32 %83)
  %85 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %86 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  %88 = load i32, i32* @FIP_DT_MAC, align 4
  %89 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %90 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* @FIP_BPW, align 4
  %95 = sext i32 %94 to i64
  %96 = udiv i64 12, %95
  %97 = trunc i64 %96 to i32
  %98 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %99 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 4
  %103 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %104 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %108 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ETH_ALEN, align 4
  %111 = call i32 @memcpy(i32* %106, i32 %109, i32 %110)
  %112 = load i32, i32* @FIP_DT_NAME, align 4
  %113 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %114 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* @FIP_BPW, align 4
  %119 = sext i32 %118 to i64
  %120 = udiv i64 12, %119
  %121 = trunc i64 %120 to i32
  %122 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %123 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 4
  %127 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %128 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %127, i32 0, i32 1
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.fip_vlan*, %struct.fip_vlan** %8, align 8
  %133 = getelementptr inbounds %struct.fip_vlan, %struct.fip_vlan* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = call i32 @put_unaligned_be64(i32 %131, i32* %135)
  %137 = load %struct.fnic_stats*, %struct.fnic_stats** %4, align 8
  %138 = getelementptr inbounds %struct.fnic_stats, %struct.fnic_stats* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = call i32 @atomic64_inc(i32* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = call i32 @skb_put(%struct.sk_buff* %141, i32 80)
  %143 = load i32, i32* @ETH_P_FIP, align 4
  %144 = call i8* @htons(i32 %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = call i32 @skb_reset_mac_header(%struct.sk_buff* %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %150 = call i32 @skb_reset_network_header(%struct.sk_buff* %149)
  %151 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %152 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %151, i32 0, i32 0
  %153 = load i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)*, i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)** %152, align 8
  %154 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = call i32 %153(%struct.fcoe_ctlr* %154, %struct.sk_buff* %155)
  %157 = load i64, i64* @jiffies, align 8
  %158 = load i32, i32* @FCOE_CTLR_FIPVLAN_TOV, align 4
  %159 = call i64 @msecs_to_jiffies(i32 %158)
  %160 = add nsw i64 %157, %159
  store i64 %160, i64* %9, align 8
  %161 = load %struct.fnic*, %struct.fnic** %2, align 8
  %162 = getelementptr inbounds %struct.fnic, %struct.fnic* %161, i32 0, i32 0
  %163 = load i64, i64* %9, align 8
  %164 = call i32 @round_jiffies(i64 %163)
  %165 = call i32 @mod_timer(i32* %162, i32 %164)
  br label %166

166:                                              ; preds = %36, %35
  ret void
}

declare dso_local i32 @fnic_fcoe_reset_vlans(%struct.fnic*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @FNIC_FCS_DBG(i32, i32, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @memset(%struct.fip_vlan*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @FIP_VER_ENCAPS(i32) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
