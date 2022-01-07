; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_transfer_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_transfer_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32 }
%struct.cvmx_usb_pipe = type { i32, i64, i32 }
%struct.cvmx_usb_transaction = type { i64 }

@CVMX_USB_STAGE_NON_CONTROL = common dso_local global i64 0, align 8
@CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE = common dso_local global i64 0, align 8
@CVMX_USB_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.cvmx_usb_transaction*, i32, i32)* @cvmx_usb_transfer_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_usb_transfer_intr(%struct.octeon_hcd* %0, %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_transaction* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.octeon_hcd*, align 8
  %7 = alloca %struct.cvmx_usb_pipe*, align 8
  %8 = alloca %struct.cvmx_usb_transaction*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %6, align 8
  store %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_pipe** %7, align 8
  store %struct.cvmx_usb_transaction* %2, %struct.cvmx_usb_transaction** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.octeon_hcd*, %struct.octeon_hcd** %6, align 8
  %12 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %13 = call i64 @cvmx_usb_pipe_needs_split(%struct.octeon_hcd* %11, %struct.cvmx_usb_pipe* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %5
  %16 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %8, align 8
  %17 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CVMX_USB_STAGE_NON_CONTROL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* @CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE, align 8
  %23 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %8, align 8
  %24 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %54

25:                                               ; preds = %15
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %31 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, i64* @CVMX_USB_STAGE_NON_CONTROL, align 8
  %36 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %8, align 8
  %37 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %53

38:                                               ; preds = %28, %25
  %39 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %40 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %43 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load %struct.octeon_hcd*, %struct.octeon_hcd** %6, align 8
  %49 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %50 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %8, align 8
  %51 = load i32, i32* @CVMX_USB_STATUS_OK, align 4
  %52 = call i32 @cvmx_usb_complete(%struct.octeon_hcd* %48, %struct.cvmx_usb_pipe* %49, %struct.cvmx_usb_transaction* %50, i32 %51)
  br label %53

53:                                               ; preds = %38, %34
  br label %54

54:                                               ; preds = %53, %21
  br label %80

55:                                               ; preds = %5
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %61 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58, %55
  %65 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %66 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %69 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load %struct.octeon_hcd*, %struct.octeon_hcd** %6, align 8
  %75 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %76 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %8, align 8
  %77 = load i32, i32* @CVMX_USB_STATUS_OK, align 4
  %78 = call i32 @cvmx_usb_complete(%struct.octeon_hcd* %74, %struct.cvmx_usb_pipe* %75, %struct.cvmx_usb_transaction* %76, i32 %77)
  br label %79

79:                                               ; preds = %64, %58
  br label %80

80:                                               ; preds = %79, %54
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
