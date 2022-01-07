; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { %struct.cdns3_device*, i32, i32 }
%struct.cdns3_device = type { i32, %struct.cdns3_device*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cdns3_aligned_buf = type { i32, %struct.cdns3_aligned_buf*, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdns3_gadget_exit(%struct.cdns3* %0) #0 {
  %2 = alloca %struct.cdns3*, align 8
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca %struct.cdns3_aligned_buf*, align 8
  store %struct.cdns3* %0, %struct.cdns3** %2, align 8
  %5 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %6 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %5, i32 0, i32 0
  %7 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  store %struct.cdns3_device* %7, %struct.cdns3_device** %3, align 8
  %8 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %9 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %12 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %15 = call i32 @devm_free_irq(i32 %10, i32 %13, %struct.cdns3* %14)
  %16 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %17 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pm_runtime_mark_last_busy(i32 %18)
  %20 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %21 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pm_runtime_put_autosuspend(i32 %22)
  %24 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %25 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %24, i32 0, i32 9
  %26 = call i32 @usb_del_gadget_udc(i32* %25)
  %27 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %28 = call i32 @cdns3_free_all_eps(%struct.cdns3_device* %27)
  br label %29

29:                                               ; preds = %35, %1
  %30 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %31 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %30, i32 0, i32 8
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %37 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %36, i32 0, i32 8
  %38 = call %struct.cdns3_device* @cdns3_next_align_buf(i32* %37)
  %39 = bitcast %struct.cdns3_device* %38 to %struct.cdns3_aligned_buf*
  store %struct.cdns3_aligned_buf* %39, %struct.cdns3_aligned_buf** %4, align 8
  %40 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %41 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %4, align 8
  %44 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %4, align 8
  %47 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %4, align 8
  %50 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dma_free_coherent(i32 %42, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %4, align 8
  %54 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %53, i32 0, i32 5
  %55 = call i32 @list_del(i32* %54)
  %56 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %4, align 8
  %57 = bitcast %struct.cdns3_aligned_buf* %56 to %struct.cdns3_device*
  %58 = call i32 @kfree(%struct.cdns3_device* %57)
  br label %29

59:                                               ; preds = %29
  %60 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %61 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %64 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %67 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dma_free_coherent(i32 %62, i32 8, i32 %65, i32 %68)
  %70 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %71 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %70, i32 0, i32 1
  %72 = load %struct.cdns3_device*, %struct.cdns3_device** %71, align 8
  %73 = call i32 @kfree(%struct.cdns3_device* %72)
  %74 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %75 = call i32 @kfree(%struct.cdns3_device* %74)
  %76 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %77 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %76, i32 0, i32 0
  store %struct.cdns3_device* null, %struct.cdns3_device** %77, align 8
  %78 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %79 = call i32 @cdns3_drd_switch_gadget(%struct.cdns3* %78, i32 0)
  ret void
}

declare dso_local i32 @devm_free_irq(i32, i32, %struct.cdns3*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @cdns3_free_all_eps(%struct.cdns3_device*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.cdns3_device* @cdns3_next_align_buf(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.cdns3_device*) #1

declare dso_local i32 @cdns3_drd_switch_gadget(%struct.cdns3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
