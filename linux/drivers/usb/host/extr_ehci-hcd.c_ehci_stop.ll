; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ehci_hcd = type { i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stop\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ehci_stop completed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @ehci_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ehci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %4)
  store %struct.ehci_hcd* %5, %struct.ehci_hcd** %3, align 8
  %6 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %7 = call i32 @ehci_dbg(%struct.ehci_hcd* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %8, i32 0, i32 2
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %13, i32 0, i32 2
  %15 = call i32 @spin_unlock_irq(i32* %14)
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %17 = call i32 @ehci_quiesce(%struct.ehci_hcd* %16)
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %19 = call i32 @ehci_silence_controller(%struct.ehci_hcd* %18)
  %20 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %21 = call i32 @ehci_reset(%struct.ehci_hcd* %20)
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 3
  %24 = call i32 @hrtimer_cancel(i32* %23)
  %25 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %26 = call i32 @remove_sysfs_files(%struct.ehci_hcd* %25)
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %28 = call i32 @remove_debug_files(%struct.ehci_hcd* %27)
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %29, i32 0, i32 2
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %33 = call i32 @end_free_itds(%struct.ehci_hcd* %32)
  %34 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %35 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %34, i32 0, i32 2
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %38 = call i32 @ehci_mem_cleanup(%struct.ehci_hcd* %37)
  %39 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = call i32 (...) @usb_amd_dev_put()
  br label %45

45:                                               ; preds = %43, %1
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %47 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %48 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %49 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @ehci_readl(%struct.ehci_hcd* %47, i32* %51)
  %53 = call i32 @dbg_status(%struct.ehci_hcd* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  ret void
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ehci_quiesce(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_silence_controller(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_reset(%struct.ehci_hcd*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @remove_sysfs_files(%struct.ehci_hcd*) #1

declare dso_local i32 @remove_debug_files(%struct.ehci_hcd*) #1

declare dso_local i32 @end_free_itds(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_mem_cleanup(%struct.ehci_hcd*) #1

declare dso_local i32 @usb_amd_dev_put(...) #1

declare dso_local i32 @dbg_status(%struct.ehci_hcd*, i8*, i32) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
