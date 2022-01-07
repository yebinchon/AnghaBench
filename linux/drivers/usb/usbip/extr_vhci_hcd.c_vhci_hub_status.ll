; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_hub_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_hub_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64 }
%struct.vhci_hcd = type { i32*, %struct.vhci* }
%struct.vhci = type { i32 }

@VHCI_HC_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"hw accessible flag not on?\0A\00", align 1
@PORT_C_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"port %d status changed\0A\00", align 1
@HC_STATE_SUSPENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @vhci_hub_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_hub_status(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vhci_hcd*, align 8
  %6 = alloca %struct.vhci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd* %11)
  store %struct.vhci_hcd* %12, %struct.vhci_hcd** %5, align 8
  %13 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %14 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %13, i32 0, i32 1
  %15 = load %struct.vhci*, %struct.vhci** %14, align 8
  store %struct.vhci* %15, %struct.vhci** %6, align 8
  %16 = load i32, i32* @VHCI_HC_PORTS, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @DIV_ROUND_UP(i32 %17, i32 8)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @memset(i8* %19, i32 0, i32 %20)
  %22 = load %struct.vhci*, %struct.vhci** %6, align 8
  %23 = getelementptr inbounds %struct.vhci, %struct.vhci* %22, i32 0, i32 0
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %27 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @usbip_dbg_vhci_rh(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %81

31:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %65, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @VHCI_HC_PORTS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %38 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PORT_C_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i8*, ...) @usbip_dbg_vhci_rh(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = srem i32 %51, 8
  %53 = shl i32 1, %52
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  %57 = sdiv i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = or i32 %61, %53
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %47, %36
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %32

68:                                               ; preds = %32
  %69 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %70 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HC_STATE_SUSPENDED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %79 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %78)
  br label %80

80:                                               ; preds = %77, %74, %68
  br label %81

81:                                               ; preds = %80, %29
  %82 = load %struct.vhci*, %struct.vhci** %6, align 8
  %83 = getelementptr inbounds %struct.vhci, %struct.vhci* %82, i32 0, i32 0
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  br label %91

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  ret i32 %92
}

declare dso_local %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @usbip_dbg_vhci_rh(i8*, ...) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
