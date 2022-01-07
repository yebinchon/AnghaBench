; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_compliance_mode_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_compliance_mode_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.xhci_hcd = type { i32, i32, %struct.usb_hcd*, %struct.xhci_hub }
%struct.usb_hcd = type { i64 }
%struct.xhci_hub = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@comp_mode_recovery_timer = common dso_local global i32 0, align 4
@PORT_PLS_MASK = common dso_local global i32 0, align 4
@USB_SS_PORT_LS_COMP_MOD = common dso_local global i32 0, align 4
@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Compliance mode detected->port %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Attempting compliance mode recovery\00", align 1
@HC_STATE_SUSPENDED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@COMP_MODE_RCVRY_MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @compliance_mode_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compliance_mode_recovery(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.xhci_hub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @comp_mode_recovery_timer, align 4
  %11 = call %struct.xhci_hcd* @from_timer(%struct.xhci_hcd* %8, %struct.timer_list* %9, i32 %10)
  store %struct.xhci_hcd* %11, %struct.xhci_hcd** %3, align 8
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 3
  store %struct.xhci_hub* %13, %struct.xhci_hub** %5, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %60, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.xhci_hub*, %struct.xhci_hub** %5, align 8
  %17 = getelementptr inbounds %struct.xhci_hub, %struct.xhci_hub* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %14
  %21 = load %struct.xhci_hub*, %struct.xhci_hub** %5, align 8
  %22 = getelementptr inbounds %struct.xhci_hub, %struct.xhci_hub* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @readl(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PORT_PLS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @USB_SS_PORT_LS_COMP_MOD, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %20
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %38 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %37, i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %43 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %44 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %42, i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %45, i32 0, i32 2
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %46, align 8
  store %struct.usb_hcd* %47, %struct.usb_hcd** %4, align 8
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HC_STATE_SUSPENDED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %55 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %54)
  br label %56

56:                                               ; preds = %53, %36
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %58 = call i32 @usb_hcd_poll_rh_status(%struct.usb_hcd* %57)
  br label %59

59:                                               ; preds = %56, %20
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %14

63:                                               ; preds = %14
  %64 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %65 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.xhci_hub*, %struct.xhci_hub** %5, align 8
  %68 = getelementptr inbounds %struct.xhci_hub, %struct.xhci_hub* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 1, %69
  %71 = sub nsw i32 %70, 1
  %72 = icmp ne i32 %66, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %75 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %74, i32 0, i32 1
  %76 = load i64, i64* @jiffies, align 8
  %77 = load i32, i32* @COMP_MODE_RCVRY_MSECS, align 4
  %78 = call i64 @msecs_to_jiffies(i32 %77)
  %79 = add nsw i64 %76, %78
  %80 = call i32 @mod_timer(i32* %75, i64 %79)
  br label %81

81:                                               ; preds = %73, %63
  ret void
}

declare dso_local %struct.xhci_hcd* @from_timer(%struct.xhci_hcd*, %struct.timer_list*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, ...) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i32 @usb_hcd_poll_rh_status(%struct.usb_hcd*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
