; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c___cdns3_gadget_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c___cdns3_gadget_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to set dma mask: %d\0A\00", align 1
@cdns3_device_irq_handler = common dso_local global i32 0, align 4
@cdns3_device_thread_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3*)* @__cdns3_gadget_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cdns3_gadget_init(%struct.cdns3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3*, align 8
  %4 = alloca i32, align 4
  store %struct.cdns3* %0, %struct.cdns3** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %6 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @DMA_BIT_MASK(i32 32)
  %9 = call i32 @dma_set_mask_and_coherent(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %14 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %21 = call i32 @cdns3_drd_switch_gadget(%struct.cdns3* %20, i32 1)
  %22 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %23 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_get_sync(i32 %24)
  %26 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %27 = call i32 @cdns3_gadget_start(%struct.cdns3* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %56

32:                                               ; preds = %19
  %33 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %34 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %37 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @cdns3_device_irq_handler, align 4
  %40 = load i32, i32* @cdns3_device_thread_irq_handler, align 4
  %41 = load i32, i32* @IRQF_SHARED, align 4
  %42 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %43 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_name(i32 %44)
  %46 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %47 = call i32 @devm_request_threaded_irq(i32 %35, i32 %38, i32 %39, i32 %40, i32 %41, i32 %45, %struct.cdns3* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %52

51:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %56

52:                                               ; preds = %50
  %53 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %54 = call i32 @cdns3_gadget_exit(%struct.cdns3* %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %51, %30, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cdns3_drd_switch_gadget(%struct.cdns3*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @cdns3_gadget_start(%struct.cdns3*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32, i32, i32, i32, %struct.cdns3*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @cdns3_gadget_exit(%struct.cdns3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
