; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32, %struct.cvmx_usb_transaction* }
%struct.cvmx_usb_pipe = type { i32, i32 }
%struct.cvmx_usb_transaction = type { i64, i32, i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@CVMX_USB_TRANSFER_ISOCHRONOUS = common dso_local global i64 0, align 8
@CVMX_USB_STATUS_OK = common dso_local global i32 0, align 4
@CVMX_USB_STAGE_NON_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.cvmx_usb_transaction*, i32)* @cvmx_usb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_usb_complete(%struct.octeon_hcd* %0, %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_transaction* %2, i32 %3) #0 {
  %5 = alloca %struct.octeon_hcd*, align 8
  %6 = alloca %struct.cvmx_usb_pipe*, align 8
  %7 = alloca %struct.cvmx_usb_transaction*, align 8
  %8 = alloca i32, align 4
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %5, align 8
  store %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_pipe** %6, align 8
  store %struct.cvmx_usb_transaction* %2, %struct.cvmx_usb_transaction** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %10 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %9, i32 0, i32 1
  %11 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %10, align 8
  %12 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %13 = icmp eq %struct.cvmx_usb_transaction* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %16 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %15, i32 0, i32 1
  store %struct.cvmx_usb_transaction* null, %struct.cvmx_usb_transaction** %16, align 8
  br label %17

17:                                               ; preds = %14, %4
  %18 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %19 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CVMX_USB_TRANSFER_ISOCHRONOUS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %17
  %27 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %28 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %31 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %30, i32 0, i32 6
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 %29, i64* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %37 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %36, i32 0, i32 6
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 8
  %41 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %42 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %63

45:                                               ; preds = %26
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @CVMX_USB_STATUS_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %51 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %53 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %57 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %56, i32 0, i32 6
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 1
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %57, align 8
  %60 = load i32, i32* @CVMX_USB_STAGE_NON_CONTROL, align 4
  %61 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %62 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  br label %92

63:                                               ; preds = %45, %26
  br label %64

64:                                               ; preds = %63, %17
  %65 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %66 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %65, i32 0, i32 4
  %67 = call i32 @list_del(i32* %66)
  %68 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %6, align 8
  %69 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %68, i32 0, i32 1
  %70 = call i64 @list_empty(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %6, align 8
  %74 = getelementptr inbounds %struct.cvmx_usb_pipe, %struct.cvmx_usb_pipe* %73, i32 0, i32 0
  %75 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %76 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %75, i32 0, i32 0
  %77 = call i32 @list_move_tail(i32* %74, i32* %76)
  br label %78

78:                                               ; preds = %72, %64
  %79 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %6, align 8
  %82 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %83 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %84 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %87 = getelementptr inbounds %struct.cvmx_usb_transaction, %struct.cvmx_usb_transaction* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @octeon_usb_urb_complete_callback(%struct.octeon_hcd* %79, i32 %80, %struct.cvmx_usb_pipe* %81, %struct.cvmx_usb_transaction* %82, i64 %85, i32 %88)
  %90 = load %struct.cvmx_usb_transaction*, %struct.cvmx_usb_transaction** %7, align 8
  %91 = call i32 @kfree(%struct.cvmx_usb_transaction* %90)
  br label %92

92:                                               ; preds = %78, %49
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @octeon_usb_urb_complete_callback(%struct.octeon_hcd*, i32, %struct.cvmx_usb_pipe*, %struct.cvmx_usb_transaction*, i64, i32) #1

declare dso_local i32 @kfree(%struct.cvmx_usb_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
