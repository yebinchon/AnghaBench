; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_next_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_next_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_usb_pipe = type { i32 }
%struct.octeon_hcd = type { i32 }

@CVMX_USB_TRANSFER_ISOCHRONOUS = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_INTERRUPT = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_CONTROL = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_BULK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvmx_usb_pipe* (%struct.octeon_hcd*, i32)* @cvmx_usb_next_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvmx_usb_pipe* @cvmx_usb_next_pipe(%struct.octeon_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.cvmx_usb_pipe*, align 8
  %4 = alloca %struct.octeon_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cvmx_usb_pipe*, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.octeon_hcd*, %struct.octeon_hcd** %4, align 8
  %11 = load i32, i32* @CVMX_USB_TRANSFER_ISOCHRONOUS, align 4
  %12 = call %struct.cvmx_usb_pipe* @cvmx_usb_find_ready_pipe(%struct.octeon_hcd* %10, i32 %11)
  store %struct.cvmx_usb_pipe* %12, %struct.cvmx_usb_pipe** %6, align 8
  %13 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %6, align 8
  %14 = icmp ne %struct.cvmx_usb_pipe* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %6, align 8
  store %struct.cvmx_usb_pipe* %16, %struct.cvmx_usb_pipe** %3, align 8
  br label %38

17:                                               ; preds = %9
  %18 = load %struct.octeon_hcd*, %struct.octeon_hcd** %4, align 8
  %19 = load i32, i32* @CVMX_USB_TRANSFER_INTERRUPT, align 4
  %20 = call %struct.cvmx_usb_pipe* @cvmx_usb_find_ready_pipe(%struct.octeon_hcd* %18, i32 %19)
  store %struct.cvmx_usb_pipe* %20, %struct.cvmx_usb_pipe** %6, align 8
  %21 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %6, align 8
  %22 = icmp ne %struct.cvmx_usb_pipe* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %6, align 8
  store %struct.cvmx_usb_pipe* %24, %struct.cvmx_usb_pipe** %3, align 8
  br label %38

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.octeon_hcd*, %struct.octeon_hcd** %4, align 8
  %28 = load i32, i32* @CVMX_USB_TRANSFER_CONTROL, align 4
  %29 = call %struct.cvmx_usb_pipe* @cvmx_usb_find_ready_pipe(%struct.octeon_hcd* %27, i32 %28)
  store %struct.cvmx_usb_pipe* %29, %struct.cvmx_usb_pipe** %6, align 8
  %30 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %6, align 8
  %31 = icmp ne %struct.cvmx_usb_pipe* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %6, align 8
  store %struct.cvmx_usb_pipe* %33, %struct.cvmx_usb_pipe** %3, align 8
  br label %38

34:                                               ; preds = %26
  %35 = load %struct.octeon_hcd*, %struct.octeon_hcd** %4, align 8
  %36 = load i32, i32* @CVMX_USB_TRANSFER_BULK, align 4
  %37 = call %struct.cvmx_usb_pipe* @cvmx_usb_find_ready_pipe(%struct.octeon_hcd* %35, i32 %36)
  store %struct.cvmx_usb_pipe* %37, %struct.cvmx_usb_pipe** %3, align 8
  br label %38

38:                                               ; preds = %34, %32, %23, %15
  %39 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %3, align 8
  ret %struct.cvmx_usb_pipe* %39
}

declare dso_local %struct.cvmx_usb_pipe* @cvmx_usb_find_ready_pipe(%struct.octeon_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
