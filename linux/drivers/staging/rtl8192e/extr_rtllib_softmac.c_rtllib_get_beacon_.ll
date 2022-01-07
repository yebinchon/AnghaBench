; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_get_beacon_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_get_beacon_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.rtllib_device = type { i32 }
%struct.rtllib_probe_response = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rtllib_get_beacon_.broadcast_addr = internal constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@RTLLIB_STYPE_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rtllib_device*)* @rtllib_get_beacon_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rtllib_get_beacon_(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtllib_probe_response*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  %6 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %7 = call %struct.sk_buff* @rtllib_probe_resp(%struct.rtllib_device* %6, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @rtllib_get_beacon_.broadcast_addr, i64 0, i64 0))
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.rtllib_probe_response*
  store %struct.rtllib_probe_response* %15, %struct.rtllib_probe_response** %5, align 8
  %16 = load i32, i32* @RTLLIB_STYPE_BEACON, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = load %struct.rtllib_probe_response*, %struct.rtllib_probe_response** %5, align 8
  %19 = getelementptr inbounds %struct.rtllib_probe_response, %struct.rtllib_probe_response* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %2, align 8
  br label %22

22:                                               ; preds = %11, %10
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %23
}

declare dso_local %struct.sk_buff* @rtllib_probe_resp(%struct.rtllib_device*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
