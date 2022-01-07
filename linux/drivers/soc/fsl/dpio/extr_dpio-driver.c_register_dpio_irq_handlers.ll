; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-driver.c_register_dpio_irq_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-driver.c_register_dpio_irq_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, %struct.fsl_mc_device_irq** }
%struct.fsl_mc_device_irq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dpio_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"devm_request_irq() failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"irq_set_affinity failed irq %d cpu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*, i32)* @register_dpio_irq_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_dpio_irq_handlers(%struct.fsl_mc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_mc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_mc_device_irq*, align 8
  %8 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %10 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %9, i32 0, i32 1
  %11 = load %struct.fsl_mc_device_irq**, %struct.fsl_mc_device_irq*** %10, align 8
  %12 = getelementptr inbounds %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %11, i64 0
  %13 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %12, align 8
  store %struct.fsl_mc_device_irq* %13, %struct.fsl_mc_device_irq** %7, align 8
  %14 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %15 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %14, i32 0, i32 0
  %16 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %7, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @dpio_irq_handler, align 4
  %22 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %23 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %22, i32 0, i32 0
  %24 = call i32 @dev_name(i32* %23)
  %25 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %26 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %25, i32 0, i32 0
  %27 = call i32 @devm_request_irq(i32* %15, i32 %20, i32 %21, i32 0, i32 %24, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %32 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %58

36:                                               ; preds = %2
  %37 = call i32 @cpumask_clear(i32* %8)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @cpumask_set_cpu(i32 %38, i32* %8)
  %40 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %7, align 8
  %41 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @irq_set_affinity_hint(i32 %44, i32* %8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %49 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %48, i32 0, i32 0
  %50 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %7, align 8
  %51 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %47, %36
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @cpumask_clear(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i64 @irq_set_affinity_hint(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
