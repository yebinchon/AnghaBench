; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_ll2_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_ll2_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.qedi_ctx = type { i32, i32, i32, i32, %struct.qedi_uio_dev*, i32 }
%struct.qedi_uio_dev = type { %struct.qedi_uio_ctrl* }
%struct.qedi_uio_ctrl = type { i32 }
%struct.skb_work_list = type { i32, i64, %struct.sk_buff* }
%struct.ethhdr = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"qedi is NULL\0A\00", align 1
@UIO_DEV_OPENED = common dso_local global i32 0, align 4
@QEDI_LOG_UIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"UIO DEV is not opened\0A\00", align 1
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@QEDI_LOG_LL2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Dropping frame ethertype [0x%x] len [0x%x].\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Allowed frame ethertype [0x%x] len [0x%x].\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Could not allocate work so dropping frame.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, i32, i32)* @qedi_ll2_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_ll2_rx(i8* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qedi_ctx*, align 8
  %11 = alloca %struct.qedi_uio_dev*, align 8
  %12 = alloca %struct.qedi_uio_ctrl*, align 8
  %13 = alloca %struct.skb_work_list*, align 8
  %14 = alloca %struct.ethhdr*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.qedi_ctx*
  store %struct.qedi_ctx* %16, %struct.qedi_ctx** %10, align 8
  %17 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %18 = icmp ne %struct.qedi_ctx* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = call i32 @QEDI_ERR(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %168

21:                                               ; preds = %4
  %22 = load i32, i32* @UIO_DEV_OPENED, align 4
  %23 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %24 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %23, i32 0, i32 5
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %29 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %28, i32 0, i32 3
  %30 = load i32, i32* @QEDI_LOG_UIO, align 4
  %31 = call i32 (i32*, i32, i8*, ...) @QEDI_INFO(i32* %29, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  store i32 0, i32* %5, align 4
  br label %168

34:                                               ; preds = %21
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ethhdr*
  store %struct.ethhdr* %38, %struct.ethhdr** %14, align 8
  %39 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %40 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @ETH_P_8021Q, align 4
  %43 = call i64 @htons(i32 %42)
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %34
  %46 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %47 = bitcast %struct.ethhdr* %46 to i32*
  %48 = load i32, i32* @VLAN_HLEN, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = mul nsw i32 %52, 2
  %54 = call i32 @memmove(i32* %50, %struct.ethhdr* %51, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i32, i32* @VLAN_HLEN, align 4
  %57 = call i64 @skb_pull(%struct.sk_buff* %55, i32 %56)
  %58 = inttoptr i64 %57 to %struct.ethhdr*
  store %struct.ethhdr* %58, %struct.ethhdr** %14, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call i32 @skb_reset_mac_header(%struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %45, %34
  %62 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %63 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @ETH_P_ARP, align 4
  %66 = call i64 @htons(i32 %65)
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %61
  %69 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %70 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @ETH_P_IP, align 4
  %73 = call i64 @htons(i32 %72)
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %68
  %76 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %77 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @ETH_P_IPV6, align 4
  %80 = call i64 @htons(i32 %79)
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %84 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %83, i32 0, i32 3
  %85 = load i32, i32* @QEDI_LOG_LL2, align 4
  %86 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %87 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32*, i32, i8*, ...) @QEDI_INFO(i32* %84, i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %88, i32 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = call i32 @kfree_skb(%struct.sk_buff* %93)
  store i32 0, i32* %5, align 4
  br label %168

95:                                               ; preds = %75, %68, %61
  %96 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %97 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %96, i32 0, i32 3
  %98 = load i32, i32* @QEDI_LOG_LL2, align 4
  %99 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %100 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32*, i32, i8*, ...) @QEDI_INFO(i32* %97, i32 %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %101, i32 %104)
  %106 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %107 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %106, i32 0, i32 4
  %108 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %107, align 8
  store %struct.qedi_uio_dev* %108, %struct.qedi_uio_dev** %11, align 8
  %109 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %11, align 8
  %110 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %109, i32 0, i32 0
  %111 = load %struct.qedi_uio_ctrl*, %struct.qedi_uio_ctrl** %110, align 8
  store %struct.qedi_uio_ctrl* %111, %struct.qedi_uio_ctrl** %12, align 8
  %112 = load i32, i32* @GFP_ATOMIC, align 4
  %113 = call %struct.skb_work_list* @kzalloc(i32 24, i32 %112)
  store %struct.skb_work_list* %113, %struct.skb_work_list** %13, align 8
  %114 = load %struct.skb_work_list*, %struct.skb_work_list** %13, align 8
  %115 = icmp ne %struct.skb_work_list* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %95
  %117 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %118 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %117, i32 0, i32 3
  %119 = call i32 @QEDI_WARN(i32* %118, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = call i32 @kfree_skb(%struct.sk_buff* %120)
  store i32 0, i32* %5, align 4
  br label %168

122:                                              ; preds = %95
  %123 = load %struct.skb_work_list*, %struct.skb_work_list** %13, align 8
  %124 = getelementptr inbounds %struct.skb_work_list, %struct.skb_work_list* %123, i32 0, i32 0
  %125 = call i32 @INIT_LIST_HEAD(i32* %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = load %struct.skb_work_list*, %struct.skb_work_list** %13, align 8
  %128 = getelementptr inbounds %struct.skb_work_list, %struct.skb_work_list* %127, i32 0, i32 2
  store %struct.sk_buff* %126, %struct.sk_buff** %128, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %122
  %133 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %134 = call i64 @skb_vlan_tag_get(%struct.sk_buff* %133)
  %135 = load %struct.skb_work_list*, %struct.skb_work_list** %13, align 8
  %136 = getelementptr inbounds %struct.skb_work_list, %struct.skb_work_list* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %132, %122
  %138 = load %struct.skb_work_list*, %struct.skb_work_list** %13, align 8
  %139 = getelementptr inbounds %struct.skb_work_list, %struct.skb_work_list* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = load %struct.skb_work_list*, %struct.skb_work_list** %13, align 8
  %144 = getelementptr inbounds %struct.skb_work_list, %struct.skb_work_list* %143, i32 0, i32 2
  %145 = load %struct.sk_buff*, %struct.sk_buff** %144, align 8
  %146 = load i32, i32* @ETH_P_8021Q, align 4
  %147 = call i64 @htons(i32 %146)
  %148 = load %struct.skb_work_list*, %struct.skb_work_list** %13, align 8
  %149 = getelementptr inbounds %struct.skb_work_list, %struct.skb_work_list* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @__vlan_insert_tag(%struct.sk_buff* %145, i64 %147, i64 %150)
  br label %152

152:                                              ; preds = %142, %137
  %153 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %154 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %153, i32 0, i32 1
  %155 = call i32 @spin_lock_bh(i32* %154)
  %156 = load %struct.skb_work_list*, %struct.skb_work_list** %13, align 8
  %157 = getelementptr inbounds %struct.skb_work_list, %struct.skb_work_list* %156, i32 0, i32 0
  %158 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %159 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %158, i32 0, i32 2
  %160 = call i32 @list_add_tail(i32* %157, i32* %159)
  %161 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %162 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %161, i32 0, i32 1
  %163 = call i32 @spin_unlock_bh(i32* %162)
  %164 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %165 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @wake_up_process(i32 %166)
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %152, %116, %82, %27, %19
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memmove(i32*, %struct.ethhdr*, i32) #1

declare dso_local i64 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.skb_work_list* @kzalloc(i32, i32) #1

declare dso_local i32 @QEDI_WARN(i32*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_insert_tag(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
