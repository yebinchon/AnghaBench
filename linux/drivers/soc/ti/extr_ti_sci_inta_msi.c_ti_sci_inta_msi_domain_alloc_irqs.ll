; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_inta_msi.c_ti_sci_inta_msi_domain_alloc_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_inta_msi.c_ti_sci_inta_msi_domain_alloc_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_sci_resource = type { i32 }
%struct.platform_device = type { i64, i32 }
%struct.irq_domain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to allocate IRQs %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_sci_inta_msi_domain_alloc_irqs(%struct.device* %0, %struct.ti_sci_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ti_sci_resource*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ti_sci_resource* %1, %struct.ti_sci_resource** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.irq_domain* @dev_get_msi_domain(%struct.device* %12)
  store %struct.irq_domain* %13, %struct.irq_domain** %7, align 8
  %14 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %15 = icmp ne %struct.irq_domain* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %5, align 8
  %30 = call i32 @ti_sci_inta_msi_alloc_descs(%struct.device* %28, %struct.ti_sci_resource* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %52

35:                                               ; preds = %27
  %36 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @msi_domain_alloc_irqs(%struct.irq_domain* %36, %struct.device* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %52

47:                                               ; preds = %42
  %48 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 1
  %50 = call i32 @ti_sci_inta_msi_free_descs(i32* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %46, %33, %24, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.irq_domain* @dev_get_msi_domain(%struct.device*) #1

declare dso_local i32 @ti_sci_inta_msi_alloc_descs(%struct.device*, %struct.ti_sci_resource*) #1

declare dso_local i32 @msi_domain_alloc_irqs(%struct.irq_domain*, %struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_inta_msi_free_descs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
