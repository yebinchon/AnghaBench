; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_rx_deauth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_rx_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i64, i64, i32, i32 (%struct.rtllib_device*)*, i32, i32, i32 (i32, i32)*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rtllib_hdr_3addr = type { i32, i32, i32 }
%struct.rtllib_disassoc = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE_SOFTMAC_ASSOCIATE = common dso_local global i32 0, align 4
@RTLLIB_LINKED = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"==========>received disassoc/deauth(%x) frame, reason code:%x\0A\00", align 1
@RTLLIB_ASSOCIATING = common dso_local global i64 0, align 8
@LED_CTL_START_TO_LINK = common dso_local global i32 0, align 4
@SEC_ALG_CCMP = common dso_local global i32 0, align 4
@SEC_ALG_TKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, %struct.sk_buff*)* @rtllib_rx_deauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_rx_deauth(%struct.rtllib_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rtllib_hdr_3addr*, align 8
  %7 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.rtllib_hdr_3addr*
  store %struct.rtllib_hdr_3addr* %11, %struct.rtllib_hdr_3addr** %6, align 8
  %12 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %6, align 8
  %13 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %16 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i64 @memcmp(i32 %14, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

23:                                               ; preds = %2
  %24 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %25 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IEEE_SOFTMAC_ASSOCIATE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %108

30:                                               ; preds = %23
  %31 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %32 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RTLLIB_LINKED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %108

36:                                               ; preds = %30
  %37 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %38 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IW_MODE_INFRA, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %108

42:                                               ; preds = %36
  %43 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %6, align 8
  %44 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %48 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @WLAN_FC_GET_STYPE(i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.rtllib_disassoc*
  %56 = getelementptr inbounds %struct.rtllib_disassoc, %struct.rtllib_disassoc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @netdev_info(i32 %49, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %57)
  %59 = load i64, i64* @RTLLIB_ASSOCIATING, align 8
  %60 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %61 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %63 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %62, i32 0, i32 9
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %68 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %67, i32 0, i32 3
  store i32 1, i32* %68, align 8
  %69 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %70 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %73 = call i32 @rtllib_disassociate(%struct.rtllib_device* %72)
  %74 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %75 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %6, align 8
  %76 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @RemovePeerTS(%struct.rtllib_device* %74, i32 %77)
  %79 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %80 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %79, i32 0, i32 7
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %80, align 8
  %82 = icmp ne i32 (i32, i32)* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %42
  %84 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %85 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %84, i32 0, i32 7
  %86 = load i32 (i32, i32)*, i32 (i32, i32)** %85, align 8
  %87 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %88 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @LED_CTL_START_TO_LINK, align 4
  %91 = call i32 %86(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %42
  %93 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %94 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %93, i32 0, i32 4
  %95 = load i32 (%struct.rtllib_device*)*, i32 (%struct.rtllib_device*)** %94, align 8
  %96 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %97 = call i32 %95(%struct.rtllib_device* %96)
  %98 = load i32, i32* @SEC_ALG_CCMP, align 4
  %99 = load i32, i32* @SEC_ALG_TKIP, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %92
  %104 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %105 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %104, i32 0, i32 5
  %106 = call i32 @schedule_delayed_work(i32* %105, i32 5)
  br label %107

107:                                              ; preds = %103, %92
  br label %108

108:                                              ; preds = %107, %36, %30, %23
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %22
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #1

declare dso_local i32 @rtllib_disassociate(%struct.rtllib_device*) #1

declare dso_local i32 @RemovePeerTS(%struct.rtllib_device*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
