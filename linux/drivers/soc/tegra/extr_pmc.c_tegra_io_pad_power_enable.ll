; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_power_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_power_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@pmc = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"failed to prepare I/O pad: %d\0A\00", align 1
@IO_DPD_REQ_CODE_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to enable I/O pad: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_io_pad_power_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmc, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmc, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @tegra_io_pad_prepare(%struct.TYPE_6__* %10, i32 %11, i64* %3, i64* %4, i32* %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmc, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmc, align 8
  %23 = load i32, i32* @IO_DPD_REQ_CODE_OFF, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %23, %24
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @tegra_pmc_writel(%struct.TYPE_6__* %22, i32 %25, i64 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmc, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @tegra_io_pad_poll(%struct.TYPE_6__* %28, i64 %29, i32 %30, i32 0, i32 250)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmc, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %43

40:                                               ; preds = %21
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmc, align 8
  %42 = call i32 @tegra_io_pad_unprepare(%struct.TYPE_6__* %41)
  br label %43

43:                                               ; preds = %40, %34, %15
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pmc, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tegra_io_pad_prepare(%struct.TYPE_6__*, i32, i64*, i64*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tegra_pmc_writel(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @tegra_io_pad_poll(%struct.TYPE_6__*, i64, i32, i32, i32) #1

declare dso_local i32 @tegra_io_pad_unprepare(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
