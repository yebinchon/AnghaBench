; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_transfer_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_transfer_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32 }
%struct.cvmx_usb_pipe = type { i32, i64, i64, i32 }
%struct.cvmx_usb_transaction = type { i64 }
%union.cvmx_usbcx_hcintx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CVMX_USB_STAGE_NON_CONTROL = common dso_local global i64 0, align 8
@CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE = common dso_local global i64 0, align 8
@CVMX_USB_STATUS_OK = common dso_local global i32 0, align 4
@CVMX_USB_SPEED_HIGH = common dso_local global i64 0, align 8
@CVMX_USB_DIRECTION_OUT = common dso_local global i64 0, align 8
@CVMX_USB_PIPE_FLAGS_NEED_PING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.cvmx_usb_transaction*, i64, i32, i32)* @cvmx_usb_transfer_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_usb_transfer_bulk(%struct.octeon_hcd* %0, %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_transaction* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %union.cvmx_usbcx_hcintx, align 8
  %8 = alloca %struct.octeon_hcd*, align 8
  %9 = alloca %struct.cvmx_usb_pipe*, align 8
  %10 = alloca %struct.cvmx_usb_transaction*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %union.cvmx_usbcx_hcintx, %union.cvmx_usbcx_hcintx* %7, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 %3, i64* %14, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %8, align 8
  store %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_pipe** %9, align 8
  store %struct.cvmx_usb_transaction* %2, %struct.cvmx_usb_transaction** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %16 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %17 = call i64 @cvmx_usb_pipe_needs_split(%struct.octeon_hcd* %15, %struct.cvmx_usb_pipe* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %6
  %20 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %21 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CVMX_USB_STAGE_NON_CONTROL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i64, i64* @CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE, align 8
  %27 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %28 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %49

29:                                               ; preds = %19
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %35 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* @CVMX_USB_STAGE_NON_CONTROL, align 8
  %40 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %41 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %48

42:                                               ; preds = %32, %29
  %43 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %44 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %45 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %46 = load i32, i32* @CVMX_USB_STATUS_OK, align 4
  %47 = call i32 @cvmx_usb_complete(%struct.octeon_hcd* %43, %struct.cvmx_usb_pipe* %44, %struct.cvmx_usb_transaction* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %38
  br label %49

49:                                               ; preds = %48, %25
  br label %89

50:                                               ; preds = %6
  %51 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %52 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CVMX_USB_SPEED_HIGH, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %58 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CVMX_USB_DIRECTION_OUT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = bitcast %union.cvmx_usbcx_hcintx* %7 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @CVMX_USB_PIPE_FLAGS_NEED_PING, align 4
  %69 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %70 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %62, %56, %50
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %79 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76, %73
  %83 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %84 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %9, align 8
  %85 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %86 = load i32, i32* @CVMX_USB_STATUS_OK, align 4
  %87 = call i32 @cvmx_usb_complete(%struct.octeon_hcd* %83, %struct.cvmx_usb_pipe* %84, %struct.cvmx_usb_transaction* %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %49
  ret void
}

declare dso_local i64 @cvmx_usb_pipe_needs_split(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*) #1

declare dso_local i32 @cvmx_usb_complete(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.cvmx_usb_transaction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
