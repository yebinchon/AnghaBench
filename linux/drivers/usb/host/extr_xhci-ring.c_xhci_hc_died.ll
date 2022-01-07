; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_hc_died.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_hc_died.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32*, i32 }

@XHCI_STATE_DYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"xHCI host controller not responding, assume dead\0A\00", align 1
@XHCI_STATE_REMOVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_hc_died(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @XHCI_STATE_DYING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %66

12:                                               ; preds = %1
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %14 = call i32 @xhci_err(%struct.xhci_hcd* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @XHCI_STATE_DYING, align 4
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %21 = call i32 @xhci_cleanup_command_queue(%struct.xhci_hcd* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %52, %12
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @HCS_MAX_SLOTS(i32 %26)
  %28 = icmp sle i32 %23, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %31 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %52

39:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %48, %39
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 31
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @xhci_kill_endpoint_urbs(%struct.xhci_hcd* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %40

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %38
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %22

55:                                               ; preds = %22
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %57 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @XHCI_STATE_REMOVING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %64 = call i32 @xhci_to_hcd(%struct.xhci_hcd* %63)
  %65 = call i32 @usb_hc_died(i32 %64)
  br label %66

66:                                               ; preds = %11, %62, %55
  ret void
}

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_cleanup_command_queue(%struct.xhci_hcd*) #1

declare dso_local i32 @HCS_MAX_SLOTS(i32) #1

declare dso_local i32 @xhci_kill_endpoint_urbs(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @usb_hc_died(i32) #1

declare dso_local i32 @xhci_to_hcd(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
