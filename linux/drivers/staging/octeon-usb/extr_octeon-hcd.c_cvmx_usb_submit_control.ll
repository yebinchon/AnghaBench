; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_submit_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_submit_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_usb_transaction = type { i32 }
%struct.octeon_hcd = type { i32 }
%struct.cvmx_usb_pipe = type { i32 }
%struct.urb = type { i32, i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@CVMX_USB_TRANSFER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvmx_usb_transaction* (%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.urb*)* @cvmx_usb_submit_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvmx_usb_transaction* @cvmx_usb_submit_control(%struct.octeon_hcd* %0, %struct.cvmx_usb_pipe* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.octeon_hcd*, align 8
  %5 = alloca %struct.cvmx_usb_pipe*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %4, align 8
  store %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_pipe** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %10 = load %struct.urb*, %struct.urb** %6, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.usb_ctrlrequest* @cvmx_phys_to_ptr(i32 %16)
  store %struct.usb_ctrlrequest* %17, %struct.usb_ctrlrequest** %9, align 8
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @USB_DIR_IN, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.octeon_hcd*, %struct.octeon_hcd** %4, align 8
  %31 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %5, align 8
  %32 = load i32, i32* @CVMX_USB_TRANSFER_CONTROL, align 4
  %33 = load %struct.urb*, %struct.urb** %6, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = call %struct.cvmx_usb_transaction* @cvmx_usb_submit_transaction(%struct.octeon_hcd* %30, %struct.cvmx_usb_pipe* %31, i32 %32, i32 %35, i32 %36, i32 %37, i32 0, i32 0, i32* null, %struct.urb* %38)
  ret %struct.cvmx_usb_transaction* %39
}

declare dso_local %struct.usb_ctrlrequest* @cvmx_phys_to_ptr(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.cvmx_usb_transaction* @cvmx_usb_submit_transaction(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, i32, i32, i32, i32, i32, i32, i32*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
