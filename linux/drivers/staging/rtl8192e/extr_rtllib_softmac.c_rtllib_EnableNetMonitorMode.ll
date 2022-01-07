; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_EnableNetMonitorMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_EnableNetMonitorMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtllib_device = type { i32 (%struct.net_device.0*, i32, i32)* }
%struct.net_device.0 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"========>Enter Monitor Mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtllib_EnableNetMonitorMode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtllib_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.rtllib_device* @netdev_priv_rsl(%struct.net_device* %6)
  store %struct.rtllib_device* %7, %struct.rtllib_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @netdev_info(%struct.net_device* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %11 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %10, i32 0, i32 0
  %12 = load i32 (%struct.net_device.0*, i32, i32)*, i32 (%struct.net_device.0*, i32, i32)** %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = bitcast %struct.net_device* %13 to %struct.net_device.0*
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 %12(%struct.net_device.0* %14, i32 1, i32 %18)
  ret void
}

declare dso_local %struct.rtllib_device* @netdev_priv_rsl(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
