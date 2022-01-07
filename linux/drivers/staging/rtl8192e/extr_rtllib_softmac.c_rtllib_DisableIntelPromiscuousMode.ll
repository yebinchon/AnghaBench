; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_DisableIntelPromiscuousMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_DisableIntelPromiscuousMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtllib_device = type { i32, i32 (%struct.net_device.0*, i32, i32*)*, i32 (%struct.net_device.1*, i32, i32)* }
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque

@.str = private unnamed_addr constant [38 x i8] c"========>Exit Intel Promiscuous Mode\0A\00", align 1
@HW_VAR_CECHK_BSSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtllib_DisableIntelPromiscuousMode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtllib_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.rtllib_device* @netdev_priv_rsl(%struct.net_device* %7)
  store %struct.rtllib_device* %8, %struct.rtllib_device** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @netdev_info(%struct.net_device* %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %12 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %11, i32 0, i32 2
  %13 = load i32 (%struct.net_device.1*, i32, i32)*, i32 (%struct.net_device.1*, i32, i32)** %12, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = bitcast %struct.net_device* %14 to %struct.net_device.1*
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 %13(%struct.net_device.1* %15, i32 0, i32 %19)
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %22 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %21, i32 0, i32 1
  %23 = load i32 (%struct.net_device.0*, i32, i32*)*, i32 (%struct.net_device.0*, i32, i32*)** %22, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = bitcast %struct.net_device* %24 to %struct.net_device.0*
  %26 = load i32, i32* @HW_VAR_CECHK_BSSID, align 4
  %27 = call i32 %23(%struct.net_device.0* %25, i32 %26, i32* %5)
  %28 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %29 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
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
