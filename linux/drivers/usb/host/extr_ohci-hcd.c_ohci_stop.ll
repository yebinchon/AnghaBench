; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c_ohci_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c_ohci_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ohci_hcd = type { i64, i32*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IO_WATCHDOG_OFF = common dso_local global i32 0, align 4
@OHCI_INTR_MIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @ohci_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ohci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %4)
  store %struct.ohci_hcd* %5, %struct.ohci_hcd** %3, align 8
  %6 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %7 = call i32 @ohci_dump(%struct.ohci_hcd* %6)
  %8 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %9 = call i64 @quirk_nec(%struct.ohci_hcd* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %12, i32 0, i32 5
  %14 = call i32 @flush_work(i32* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %17 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %16, i32 0, i32 4
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load i32, i32* @IO_WATCHDOG_OFF, align 4
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %23 = load i32, i32* @OHCI_INTR_MIE, align 4
  %24 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %25 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @ohci_writel(%struct.ohci_hcd* %22, i32 %23, i32* %27)
  %29 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %30 = call i32 @ohci_usb_reset(%struct.ohci_hcd* %29)
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %35 = call i32 @free_irq(i64 %33, %struct.usb_hcd* %34)
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %37 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %39 = call i64 @quirk_amdiso(%struct.ohci_hcd* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %15
  %42 = call i32 (...) @usb_amd_dev_put()
  br label %43

43:                                               ; preds = %41, %15
  %44 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %45 = call i32 @remove_debug_files(%struct.ohci_hcd* %44)
  %46 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %47 = call i32 @ohci_mem_cleanup(%struct.ohci_hcd* %46)
  %48 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %49 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %83

52:                                               ; preds = %43
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %62 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = ptrtoint i32* %63 to i64
  %65 = call i32 @gen_pool_free(i64 %60, i64 %64, i32 4)
  br label %78

66:                                               ; preds = %52
  %67 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %68 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %72 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %75 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @dma_free_coherent(i32 %70, i32 4, i32* %73, i64 %76)
  br label %78

78:                                               ; preds = %66, %57
  %79 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %80 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %82 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %43
  ret void
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_dump(%struct.ohci_hcd*) #1

declare dso_local i64 @quirk_nec(%struct.ohci_hcd*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

declare dso_local i32 @ohci_usb_reset(%struct.ohci_hcd*) #1

declare dso_local i32 @free_irq(i64, %struct.usb_hcd*) #1

declare dso_local i64 @quirk_amdiso(%struct.ohci_hcd*) #1

declare dso_local i32 @usb_amd_dev_put(...) #1

declare dso_local i32 @remove_debug_files(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_mem_cleanup(%struct.ohci_hcd*) #1

declare dso_local i32 @gen_pool_free(i64, i64, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
