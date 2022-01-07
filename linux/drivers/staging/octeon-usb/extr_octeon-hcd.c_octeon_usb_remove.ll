; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.octeon_hcd = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"USB shutdown failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @octeon_usb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_usb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.octeon_hcd*, align 8
  %7 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.usb_hcd* @dev_get_drvdata(%struct.device* %10)
  store %struct.usb_hcd* %11, %struct.usb_hcd** %5, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %13 = call %struct.octeon_hcd* @hcd_to_octeon(%struct.usb_hcd* %12)
  store %struct.octeon_hcd* %13, %struct.octeon_hcd** %6, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %15 = call i32 @usb_remove_hcd(%struct.usb_hcd* %14)
  %16 = load %struct.octeon_hcd*, %struct.octeon_hcd** %6, align 8
  %17 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.octeon_hcd*, %struct.octeon_hcd** %6, align 8
  %21 = call i32 @cvmx_usb_shutdown(%struct.octeon_hcd* %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.octeon_hcd*, %struct.octeon_hcd** %6, align 8
  %23 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %1
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %34 = call i32 @usb_put_hcd(%struct.usb_hcd* %33)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.octeon_hcd* @hcd_to_octeon(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cvmx_usb_shutdown(%struct.octeon_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
