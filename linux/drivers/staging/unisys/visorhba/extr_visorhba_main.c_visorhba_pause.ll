; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { i32 }
%struct.visor_device.0 = type opaque
%struct.visorhba_devdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visor_device*, i32 (%struct.visor_device.0*, i32)*)* @visorhba_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorhba_pause(%struct.visor_device* %0, i32 (%struct.visor_device.0*, i32)* %1) #0 {
  %3 = alloca %struct.visor_device*, align 8
  %4 = alloca i32 (%struct.visor_device.0*, i32)*, align 8
  %5 = alloca %struct.visorhba_devdata*, align 8
  store %struct.visor_device* %0, %struct.visor_device** %3, align 8
  store i32 (%struct.visor_device.0*, i32)* %1, i32 (%struct.visor_device.0*, i32)** %4, align 8
  %6 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %7 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %6, i32 0, i32 0
  %8 = call %struct.visorhba_devdata* @dev_get_drvdata(i32* %7)
  store %struct.visorhba_devdata* %8, %struct.visorhba_devdata** %5, align 8
  %9 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %5, align 8
  %10 = call i32 @visorhba_serverdown(%struct.visorhba_devdata* %9)
  %11 = load i32 (%struct.visor_device.0*, i32)*, i32 (%struct.visor_device.0*, i32)** %4, align 8
  %12 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %13 = bitcast %struct.visor_device* %12 to %struct.visor_device.0*
  %14 = call i32 %11(%struct.visor_device.0* %13, i32 0)
  ret i32 0
}

declare dso_local %struct.visorhba_devdata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @visorhba_serverdown(%struct.visorhba_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
