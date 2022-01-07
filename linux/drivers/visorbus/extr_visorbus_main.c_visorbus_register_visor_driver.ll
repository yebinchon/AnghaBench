; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_register_visor_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_register_visor_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_driver = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32 }

@initialized = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@visorbus_type = common dso_local global i32 0, align 4
@visordriver_probe_device = common dso_local global i32 0, align 4
@visordriver_remove_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @visorbus_register_visor_driver(%struct.visor_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.visor_driver*, align 8
  store %struct.visor_driver* %0, %struct.visor_driver** %3, align 8
  %4 = load i32, i32* @initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %68

9:                                                ; preds = %1
  %10 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %11 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %68

17:                                               ; preds = %9
  %18 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %19 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %68

25:                                               ; preds = %17
  %26 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %27 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %68

33:                                               ; preds = %25
  %34 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %35 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %68

41:                                               ; preds = %33
  %42 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %43 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %46 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %49 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32* @visorbus_type, i32** %50, align 8
  %51 = load i32, i32* @visordriver_probe_device, align 4
  %52 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %53 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @visordriver_remove_device, align 4
  %56 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %57 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %60 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %63 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.visor_driver*, %struct.visor_driver** %3, align 8
  %66 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %65, i32 0, i32 0
  %67 = call i32 @driver_register(%struct.TYPE_2__* %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %41, %38, %30, %22, %14, %6
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
