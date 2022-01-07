; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_sequence_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_sequence_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.clk = type { i32 }
%struct.reset_control = type { i32 }
%struct.tegra_powergate = type { i32, i32, %struct.TYPE_3__*, %struct.reset_control*, %struct.clk** }

@pmc = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to turn on partition %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_powergate_sequence_power_up(i32 %0, %struct.clk* %1, %struct.reset_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.reset_control*, align 8
  %8 = alloca %struct.tegra_powergate*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.clk* %1, %struct.clk** %6, align 8
  store %struct.reset_control* %2, %struct.reset_control** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmc, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @tegra_powergate_is_available(%struct.TYPE_3__* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.tegra_powergate* @kzalloc(i32 32, i32 %18)
  store %struct.tegra_powergate* %19, %struct.tegra_powergate** %8, align 8
  %20 = load %struct.tegra_powergate*, %struct.tegra_powergate** %8, align 8
  %21 = icmp ne %struct.tegra_powergate* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tegra_powergate*, %struct.tegra_powergate** %8, align 8
  %28 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.tegra_powergate*, %struct.tegra_powergate** %8, align 8
  %30 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %29, i32 0, i32 4
  store %struct.clk** %6, %struct.clk*** %30, align 8
  %31 = load %struct.tegra_powergate*, %struct.tegra_powergate** %8, align 8
  %32 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %34 = load %struct.tegra_powergate*, %struct.tegra_powergate** %8, align 8
  %35 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %34, i32 0, i32 3
  store %struct.reset_control* %33, %struct.reset_control** %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmc, align 8
  %37 = load %struct.tegra_powergate*, %struct.tegra_powergate** %8, align 8
  %38 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %37, i32 0, i32 2
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %38, align 8
  %39 = load %struct.tegra_powergate*, %struct.tegra_powergate** %8, align 8
  %40 = call i32 @tegra_powergate_power_up(%struct.tegra_powergate* %39, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %25
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmc, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %25
  %51 = load %struct.tegra_powergate*, %struct.tegra_powergate** %8, align 8
  %52 = call i32 @kfree(%struct.tegra_powergate* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %22, %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @tegra_powergate_is_available(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.tegra_powergate* @kzalloc(i32, i32) #1

declare dso_local i32 @tegra_powergate_power_up(%struct.tegra_powergate*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.tegra_powergate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
