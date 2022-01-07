; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.usb_host_endpoint = type { %struct.cvmx_usb_pipe* }
%struct.cvmx_usb_pipe = type { i32 }
%struct.octeon_hcd = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Closing pipe %p failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @octeon_usb_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_usb_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.octeon_hcd*, align 8
  %7 = alloca %struct.cvmx_usb_pipe*, align 8
  %8 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %14 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %13, i32 0, i32 0
  %15 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %14, align 8
  %16 = icmp ne %struct.cvmx_usb_pipe* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %19 = call %struct.octeon_hcd* @hcd_to_octeon(%struct.usb_hcd* %18)
  store %struct.octeon_hcd* %19, %struct.octeon_hcd** %6, align 8
  %20 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %21 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %20, i32 0, i32 0
  %22 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %21, align 8
  store %struct.cvmx_usb_pipe* %22, %struct.cvmx_usb_pipe** %7, align 8
  %23 = load %struct.octeon_hcd*, %struct.octeon_hcd** %6, align 8
  %24 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.octeon_hcd*, %struct.octeon_hcd** %6, align 8
  %28 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %29 = call i32 @cvmx_usb_cancel_all(%struct.octeon_hcd* %27, %struct.cvmx_usb_pipe* %28)
  %30 = load %struct.octeon_hcd*, %struct.octeon_hcd** %6, align 8
  %31 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %32 = call i64 @cvmx_usb_close_pipe(%struct.octeon_hcd* %30, %struct.cvmx_usb_pipe* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %17
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %7, align 8
  %37 = call i32 @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.cvmx_usb_pipe* %36)
  br label %38

38:                                               ; preds = %34, %17
  %39 = load %struct.octeon_hcd*, %struct.octeon_hcd** %6, align 8
  %40 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %39, i32 0, i32 0
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %44 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %43, i32 0, i32 0
  store %struct.cvmx_usb_pipe* null, %struct.cvmx_usb_pipe** %44, align 8
  br label %45

45:                                               ; preds = %38, %2
  ret void
}

declare dso_local %struct.octeon_hcd* @hcd_to_octeon(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cvmx_usb_cancel_all(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*) #1

declare dso_local i64 @cvmx_usb_close_pipe(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.cvmx_usb_pipe*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
