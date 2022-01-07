; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gb_gbphy_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gb_gbphy_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_driver = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.module*, i32, i32* }
%struct.module = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@gbphy_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"registered new driver %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_gbphy_register_driver(%struct.gbphy_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gbphy_driver*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.gbphy_driver* %0, %struct.gbphy_driver** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i64 (...) @greybus_disabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load %struct.gbphy_driver*, %struct.gbphy_driver** %5, align 8
  %16 = getelementptr inbounds %struct.gbphy_driver, %struct.gbphy_driver* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32* @gbphy_bus_type, i32** %17, align 8
  %18 = load %struct.gbphy_driver*, %struct.gbphy_driver** %5, align 8
  %19 = getelementptr inbounds %struct.gbphy_driver, %struct.gbphy_driver* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.gbphy_driver*, %struct.gbphy_driver** %5, align 8
  %22 = getelementptr inbounds %struct.gbphy_driver, %struct.gbphy_driver* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.module*, %struct.module** %6, align 8
  %25 = load %struct.gbphy_driver*, %struct.gbphy_driver** %5, align 8
  %26 = getelementptr inbounds %struct.gbphy_driver, %struct.gbphy_driver* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.module* %24, %struct.module** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.gbphy_driver*, %struct.gbphy_driver** %5, align 8
  %30 = getelementptr inbounds %struct.gbphy_driver, %struct.gbphy_driver* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load %struct.gbphy_driver*, %struct.gbphy_driver** %5, align 8
  %33 = getelementptr inbounds %struct.gbphy_driver, %struct.gbphy_driver* %32, i32 0, i32 1
  %34 = call i32 @driver_register(%struct.TYPE_2__* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %14
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %14
  %40 = load %struct.gbphy_driver*, %struct.gbphy_driver** %5, align 8
  %41 = getelementptr inbounds %struct.gbphy_driver, %struct.gbphy_driver* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %37, %11
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @greybus_disabled(...) #1

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
