; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/clocking-wizard/extr_clk-xlnx-clock-wizard.c_clk_wzrd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/clocking-wizard/extr_clk-xlnx-clock-wizard.c_clk_wzrd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.clk_wzrd = type { i32, i32, i32, i64, i32*, i32* }

@WZRD_NUM_OUTPUTS = common dso_local global i32 0, align 4
@wzrd_clk_int_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clk_wzrd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_wzrd_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_wzrd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.clk_wzrd* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.clk_wzrd* %6, %struct.clk_wzrd** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @of_clk_del_provider(i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @WZRD_NUM_OUTPUTS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.clk_wzrd*, %struct.clk_wzrd** %4, align 8
  %18 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_unregister(i32 %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %12

28:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @wzrd_clk_int_max, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.clk_wzrd*, %struct.clk_wzrd** %4, align 8
  %35 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_unregister(i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %29

45:                                               ; preds = %29
  %46 = load %struct.clk_wzrd*, %struct.clk_wzrd** %4, align 8
  %47 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.clk_wzrd*, %struct.clk_wzrd** %4, align 8
  %52 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.clk_wzrd*, %struct.clk_wzrd** %4, align 8
  %55 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %54, i32 0, i32 1
  %56 = call i32 @clk_notifier_unregister(i32 %53, i32* %55)
  %57 = load %struct.clk_wzrd*, %struct.clk_wzrd** %4, align 8
  %58 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.clk_wzrd*, %struct.clk_wzrd** %4, align 8
  %61 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %60, i32 0, i32 1
  %62 = call i32 @clk_notifier_unregister(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %50, %45
  %64 = load %struct.clk_wzrd*, %struct.clk_wzrd** %4, align 8
  %65 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @clk_disable_unprepare(i32 %66)
  ret i32 0
}

declare dso_local %struct.clk_wzrd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_clk_del_provider(i32) #1

declare dso_local i32 @clk_unregister(i32) #1

declare dso_local i32 @clk_notifier_unregister(i32, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
