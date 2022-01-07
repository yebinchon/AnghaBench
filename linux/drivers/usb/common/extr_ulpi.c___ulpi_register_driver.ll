; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_ulpi.c___ulpi_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_ulpi.c___ulpi_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulpi_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, %struct.module* }
%struct.module = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ulpi_bus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ulpi_register_driver(%struct.ulpi_driver* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ulpi_driver*, align 8
  %5 = alloca %struct.module*, align 8
  store %struct.ulpi_driver* %0, %struct.ulpi_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %6 = load %struct.ulpi_driver*, %struct.ulpi_driver** %4, align 8
  %7 = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.module*, %struct.module** %5, align 8
  %15 = load %struct.ulpi_driver*, %struct.ulpi_driver** %4, align 8
  %16 = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.module* %14, %struct.module** %17, align 8
  %18 = load %struct.ulpi_driver*, %struct.ulpi_driver** %4, align 8
  %19 = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* @ulpi_bus, i32** %20, align 8
  %21 = load %struct.ulpi_driver*, %struct.ulpi_driver** %4, align 8
  %22 = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %21, i32 0, i32 0
  %23 = call i32 @driver_register(%struct.TYPE_2__* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %13, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
