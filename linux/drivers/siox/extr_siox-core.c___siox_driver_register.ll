; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c___siox_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c___siox_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_driver = type { %struct.TYPE_2__, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, %struct.module* }
%struct.module = type { i32 }

@siox_is_registered = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Driver %s doesn't provide needed callbacks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@siox_bus_type = common dso_local global i32 0, align 4
@siox_driver_probe = common dso_local global i32 0, align 4
@siox_driver_remove = common dso_local global i32 0, align 4
@siox_driver_shutdown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to register siox driver %s (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__siox_driver_register(%struct.siox_driver* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siox_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  store %struct.siox_driver* %0, %struct.siox_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %7 = load i32, i32* @siox_is_registered, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EPROBE_DEFER, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %86

16:                                               ; preds = %2
  %17 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %18 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %23 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %28 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %86

34:                                               ; preds = %21, %16
  %35 = load %struct.module*, %struct.module** %5, align 8
  %36 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %37 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  store %struct.module* %35, %struct.module** %38, align 8
  %39 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %40 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  store i32* @siox_bus_type, i32** %41, align 8
  %42 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %43 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* @siox_driver_probe, align 4
  %48 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %49 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %34
  %52 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %53 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @siox_driver_remove, align 4
  %58 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %59 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %63 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @siox_driver_shutdown, align 4
  %68 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %69 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %73 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %72, i32 0, i32 0
  %74 = call i32 @driver_register(%struct.TYPE_2__* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.siox_driver*, %struct.siox_driver** %4, align 8
  %79 = getelementptr inbounds %struct.siox_driver, %struct.siox_driver* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %71
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %26, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
