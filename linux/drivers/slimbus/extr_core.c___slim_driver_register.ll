; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c___slim_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c___slim_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_driver = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { %struct.module*, i32*, i64 }
%struct.module = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@slimbus_bus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__slim_driver_register(%struct.slim_driver* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slim_driver*, align 8
  %5 = alloca %struct.module*, align 8
  store %struct.slim_driver* %0, %struct.slim_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %6 = load %struct.slim_driver*, %struct.slim_driver** %4, align 8
  %7 = getelementptr inbounds %struct.slim_driver, %struct.slim_driver* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.slim_driver*, %struct.slim_driver** %4, align 8
  %13 = getelementptr inbounds %struct.slim_driver, %struct.slim_driver* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %2
  %17 = load %struct.slim_driver*, %struct.slim_driver** %4, align 8
  %18 = getelementptr inbounds %struct.slim_driver, %struct.slim_driver* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %16
  %25 = load %struct.slim_driver*, %struct.slim_driver** %4, align 8
  %26 = getelementptr inbounds %struct.slim_driver, %struct.slim_driver* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32* @slimbus_bus, i32** %27, align 8
  %28 = load %struct.module*, %struct.module** %5, align 8
  %29 = load %struct.slim_driver*, %struct.slim_driver** %4, align 8
  %30 = getelementptr inbounds %struct.slim_driver, %struct.slim_driver* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.module* %28, %struct.module** %31, align 8
  %32 = load %struct.slim_driver*, %struct.slim_driver** %4, align 8
  %33 = getelementptr inbounds %struct.slim_driver, %struct.slim_driver* %32, i32 0, i32 0
  %34 = call i32 @driver_register(%struct.TYPE_2__* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %21
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
