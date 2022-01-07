; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_transfer_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_transfer_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32 }
%struct.cvmx_usb_pipe = type { i64, i32, i64, i32 }
%struct.cvmx_usb_transaction = type { i64 }

@CVMX_USB_DIRECTION_OUT = common dso_local global i64 0, align 8
@CVMX_USB_STATUS_OK = common dso_local global i32 0, align 4
@CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.cvmx_usb_transaction*, i32, i32, i32)* @cvmx_usb_transfer_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_usb_transfer_isoc(%struct.octeon_hcd* %0, %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_transaction* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.octeon_hcd*, align 8
  %8 = alloca %struct.cvmx_usb_pipe*, align 8
  %9 = alloca %struct.cvmx_usb_transaction*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %7, align 8
  store %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_pipe** %8, align 8
  store %struct.cvmx_usb_transaction* %2, %struct.cvmx_usb_transaction** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.octeon_hcd*, %struct.octeon_hcd** %7, align 8
  %14 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %15 = call i64 @cvmx_usb_pipe_needs_split(%struct.octeon_hcd* %13, %struct.cvmx_usb_pipe* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %81

17:                                               ; preds = %6
  %18 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %19 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CVMX_USB_DIRECTION_OUT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 188
  br i1 %28, label %29, label %44

29:                                               ; preds = %26, %23
  %30 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %31 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %34 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  %39 = load %struct.octeon_hcd*, %struct.octeon_hcd** %7, align 8
  %40 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %41 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %9, align 8
  %42 = load i32, i32* @CVMX_USB_STATUS_OK, align 4
  %43 = call i32 @cvmx_usb_complete(%struct.octeon_hcd* %39, %struct.cvmx_usb_pipe* %40, %struct.cvmx_usb_transaction* %41, i32 %42)
  br label %44

44:                                               ; preds = %29, %26
  br label %96

45:                                               ; preds = %17
  %46 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %9, align 8
  %47 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %57 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54, %51
  %61 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %62 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %65 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  %70 = load %struct.octeon_hcd*, %struct.octeon_hcd** %7, align 8
  %71 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %72 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %9, align 8
  %73 = load i32, i32* @CVMX_USB_STATUS_OK, align 4
  %74 = call i32 @cvmx_usb_complete(%struct.octeon_hcd* %70, %struct.cvmx_usb_pipe* %71, %struct.cvmx_usb_transaction* %72, i32 %73)
  br label %75

75:                                               ; preds = %60, %54
  br label %80

76:                                               ; preds = %45
  %77 = load i64, i64* @CVMX_USB_STAGE_NON_CONTROL_SPLIT_COMPLETE, align 8
  %78 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %9, align 8
  %79 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %75
  br label %96

81:                                               ; preds = %6
  %82 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %83 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %86 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load %struct.octeon_hcd*, %struct.octeon_hcd** %7, align 8
  %92 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %8, align 8
  %93 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %9, align 8
  %94 = load i32, i32* @CVMX_USB_STATUS_OK, align 4
  %95 = call i32 @cvmx_usb_complete(%struct.octeon_hcd* %91, %struct.cvmx_usb_pipe* %92, %struct.cvmx_usb_transaction* %93, i32 %94)
  br label %96

96:                                               ; preds = %44, %81, %80
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
