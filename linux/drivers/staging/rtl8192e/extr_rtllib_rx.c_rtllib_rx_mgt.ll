; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_mgt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_mgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.rtllib_rx_stats = type { i32 }
%struct.rtllib_hdr_4addr = type { i32 }
%struct.rtllib_probe_response = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"received BEACON (%d)\0A\00", align 1
@RTLLIB_PS_DISABLED = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@RTLLIB_LINKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"received PROBE RESPONSE (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"received PROBE RESQUEST (%d)\0A\00", align 1
@IEEE_SOFTMAC_PROBERS = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, %struct.sk_buff*, %struct.rtllib_rx_stats*)* @rtllib_rx_mgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_rx_mgt(%struct.rtllib_device* %0, %struct.sk_buff* %1, %struct.rtllib_rx_stats* %2) #0 {
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rtllib_rx_stats*, align 8
  %7 = alloca %struct.rtllib_hdr_4addr*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.rtllib_rx_stats* %2, %struct.rtllib_rx_stats** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.rtllib_hdr_4addr*
  store %struct.rtllib_hdr_4addr* %11, %struct.rtllib_hdr_4addr** %7, align 8
  %12 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %7, align 8
  %13 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  %16 = call i32 @WLAN_FC_GET_STYPE(i32 %15)
  %17 = icmp ne i32 %16, 128
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %7, align 8
  %20 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = call i32 @WLAN_FC_GET_STYPE(i32 %22)
  %24 = icmp ne i32 %23, 130
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %28 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %18, %3
  %30 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %7, align 8
  %31 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = call i32 @WLAN_FC_GET_STYPE(i32 %33)
  switch i32 %34, label %131 [
    i32 130, label %35
    i32 128, label %77
    i32 129, label %92
  ]

35:                                               ; preds = %29
  %36 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %37 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %7, align 8
  %40 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = call i32 @WLAN_FC_GET_STYPE(i32 %42)
  %44 = call i32 @netdev_dbg(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %46 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %7, align 8
  %47 = bitcast %struct.rtllib_hdr_4addr* %46 to %struct.rtllib_probe_response*
  %48 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %6, align 8
  %49 = call i32 @rtllib_process_probe_response(%struct.rtllib_device* %45, %struct.rtllib_probe_response* %47, %struct.rtllib_rx_stats* %48)
  %50 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %51 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %35
  %55 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %56 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RTLLIB_PS_DISABLED, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %62 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IW_MODE_INFRA, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %68 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RTLLIB_LINKED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66, %35
  %73 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %74 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %73, i32 0, i32 4
  %75 = call i32 @tasklet_schedule(i32* %74)
  br label %76

76:                                               ; preds = %72, %66, %60, %54
  br label %131

77:                                               ; preds = %29
  %78 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %79 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %7, align 8
  %82 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = call i32 @WLAN_FC_GET_STYPE(i32 %84)
  %86 = call i32 @netdev_dbg(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %88 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %7, align 8
  %89 = bitcast %struct.rtllib_hdr_4addr* %88 to %struct.rtllib_probe_response*
  %90 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %6, align 8
  %91 = call i32 @rtllib_process_probe_response(%struct.rtllib_device* %87, %struct.rtllib_probe_response* %89, %struct.rtllib_rx_stats* %90)
  br label %131

92:                                               ; preds = %29
  %93 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %94 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %7, align 8
  %97 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le16_to_cpu(i32 %98)
  %100 = call i32 @WLAN_FC_GET_STYPE(i32 %99)
  %101 = call i32 @netdev_dbg(i32 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %103 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IEEE_SOFTMAC_PROBERS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %92
  %109 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %110 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IW_MODE_ADHOC, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %116 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IW_MODE_MASTER, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %114, %108
  %121 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %122 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @RTLLIB_LINKED, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call i32 @rtllib_rx_probe_rq(%struct.rtllib_device* %127, %struct.sk_buff* %128)
  br label %130

130:                                              ; preds = %126, %120, %114, %92
  br label %131

131:                                              ; preds = %29, %130, %77, %76
  ret void
}

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtllib_process_probe_response(%struct.rtllib_device*, %struct.rtllib_probe_response*, %struct.rtllib_rx_stats*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @rtllib_rx_probe_rq(%struct.rtllib_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
