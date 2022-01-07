; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { i32, i32, i32 }

@trace_xhci_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"xhci_init\00", align 1
@link_quirk = common dso_local global i64 0, align 8
@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"QUIRK: Not clearing Link TRB chain bits.\00", align 1
@XHCI_LINK_TRB_QUIRK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"xHCI doesn't need link TRB QUIRK\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Finished xhci_init\00", align 1
@XHCI_COMP_MODE_QUIRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @xhci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_init(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %6 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %5)
  store %struct.xhci_hcd* %6, %struct.xhci_hcd** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %8 = load i32, i32* @trace_xhci_dbg_init, align 4
  %9 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %7, i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 149
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load i64, i64* @link_quirk, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %22 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %23 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %21, i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @XHCI_LINK_TRB_QUIRK, align 4
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %33

29:                                               ; preds = %17, %1
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %31 = load i32, i32* @trace_xhci_dbg_init, align 4
  %32 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %30, i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %20
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @xhci_mem_init(%struct.xhci_hcd* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %38 = load i32, i32* @trace_xhci_dbg_init, align 4
  %39 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %37, i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i64 (...) @xhci_compliance_mode_recovery_timer_quirk_check()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load i32, i32* @XHCI_COMP_MODE_QUIRK, align 4
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %45 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %49 = call i32 @compliance_mode_recovery_timer_init(%struct.xhci_hcd* %48)
  br label %50

50:                                               ; preds = %42, %33
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @xhci_mem_init(%struct.xhci_hcd*, i32) #1

declare dso_local i64 @xhci_compliance_mode_recovery_timer_quirk_check(...) #1

declare dso_local i32 @compliance_mode_recovery_timer_init(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
