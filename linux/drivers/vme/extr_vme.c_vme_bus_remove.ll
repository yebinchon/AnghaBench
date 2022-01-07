; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/extr_vme.c_vme_bus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/extr_vme.c_vme_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.vme_driver* }
%struct.vme_driver = type { i32 (%struct.vme_dev*)* }
%struct.vme_dev = type opaque
%struct.vme_dev.0 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vme_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vme_bus_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.vme_driver*, align 8
  %5 = alloca %struct.vme_dev.0*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.vme_dev.0* @dev_to_vme_dev(%struct.device* %6)
  store %struct.vme_dev.0* %7, %struct.vme_dev.0** %5, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.vme_driver*, %struct.vme_driver** %9, align 8
  store %struct.vme_driver* %10, %struct.vme_driver** %4, align 8
  %11 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %12 = getelementptr inbounds %struct.vme_driver, %struct.vme_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.vme_dev*)*, i32 (%struct.vme_dev*)** %12, align 8
  %14 = icmp ne i32 (%struct.vme_dev*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %17 = getelementptr inbounds %struct.vme_driver, %struct.vme_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.vme_dev*)*, i32 (%struct.vme_dev*)** %17, align 8
  %19 = load %struct.vme_dev.0*, %struct.vme_dev.0** %5, align 8
  %20 = bitcast %struct.vme_dev.0* %19 to %struct.vme_dev*
  %21 = call i32 %18(%struct.vme_dev* %20)
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.vme_dev.0* @dev_to_vme_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
