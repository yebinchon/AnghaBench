; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-driver.c_dpaa2_dpio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-driver.c_dpaa2_dpio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, i32, %struct.TYPE_2__, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.dpio_priv = type { i32 }

@cpus_unused_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dpio_open() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @dpaa2_dpio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_dpio_remove(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dpio_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %8, i32 0, i32 3
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.dpio_priv* @dev_get_drvdata(%struct.device* %10)
  store %struct.dpio_priv* %11, %struct.dpio_priv** %5, align 8
  %12 = load %struct.dpio_priv*, %struct.dpio_priv** %5, align 8
  %13 = getelementptr inbounds %struct.dpio_priv, %struct.dpio_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dpaa2_io_get_cpu(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.dpio_priv*, %struct.dpio_priv** %5, align 8
  %17 = getelementptr inbounds %struct.dpio_priv, %struct.dpio_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dpaa2_io_down(i32 %18)
  %20 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %21 = call i32 @dpio_teardown_irqs(%struct.fsl_mc_device* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @cpus_unused_mask, align 4
  %24 = call i32 @cpumask_set_cpu(i32 %22, i32 %23)
  %25 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %29 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %33 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %32, i32 0, i32 1
  %34 = call i32 @dpio_open(i32 %27, i32 0, i32 %31, i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %59

40:                                               ; preds = %1
  %41 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %42 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %45 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dpio_disable(i32 %43, i32 0, i32 %46)
  %48 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %49 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %52 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dpio_close(i32 %50, i32 0, i32 %53)
  %55 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %56 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fsl_mc_portal_free(i32 %57)
  store i32 0, i32* %2, align 4
  br label %65

59:                                               ; preds = %37
  %60 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %61 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fsl_mc_portal_free(i32 %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %40
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.dpio_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dpaa2_io_get_cpu(i32) #1

declare dso_local i32 @dpaa2_io_down(i32) #1

declare dso_local i32 @dpio_teardown_irqs(%struct.fsl_mc_device*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @dpio_open(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dpio_disable(i32, i32, i32) #1

declare dso_local i32 @dpio_close(i32, i32, i32) #1

declare dso_local i32 @fsl_mc_portal_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
