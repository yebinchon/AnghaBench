; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_restart_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_restart_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.notifier_block = type { i32 }

@pmc = common dso_local global %struct.TYPE_10__* null, align 8
@PMC_SCRATCH0_MODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@PMC_SCRATCH0_MODE_RECOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"bootloader\00", align 1
@PMC_SCRATCH0_MODE_BOOTLOADER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"forced-recovery\00", align 1
@PMC_SCRATCH0_MODE_RCM = common dso_local global i32 0, align 4
@PMC_CNTRL = common dso_local global i32 0, align 4
@PMC_CNTRL_MAIN_RST = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @tegra_pmc_restart_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pmc_restart_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pmc, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pmc, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tegra_pmc_scratch_readl(%struct.TYPE_10__* %10, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @PMC_SCRATCH0_MODE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @PMC_SCRATCH0_MODE_RECOVERY, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @PMC_SCRATCH0_MODE_BOOTLOADER, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @PMC_SCRATCH0_MODE_RCM, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pmc, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pmc, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @tegra_pmc_scratch_writel(%struct.TYPE_10__* %51, i32 %52, i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pmc, align 8
  %62 = load i32, i32* @PMC_CNTRL, align 4
  %63 = call i32 @tegra_pmc_readl(%struct.TYPE_10__* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @PMC_CNTRL_MAIN_RST, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pmc, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @PMC_CNTRL, align 4
  %70 = call i32 @tegra_pmc_writel(%struct.TYPE_10__* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %71
}

declare dso_local i32 @tegra_pmc_scratch_readl(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @tegra_pmc_scratch_writel(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @tegra_pmc_readl(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @tegra_pmc_writel(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
