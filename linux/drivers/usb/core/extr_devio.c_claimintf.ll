; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_claimintf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_claimintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dev_state = type { i32, i32, i64, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@usbfs_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dev_state*, i32)* @claimintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claimintf(%struct.usb_dev_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_dev_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_dev_state* %0, %struct.usb_dev_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.usb_dev_state*, %struct.usb_dev_state** %4, align 8
  %10 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %9, i32 0, i32 3
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp uge i64 %13, 32
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %62

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.usb_dev_state*, %struct.usb_dev_state** %4, align 8
  %21 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %62

25:                                               ; preds = %18
  %26 = load %struct.usb_dev_state*, %struct.usb_dev_state** %4, align 8
  %27 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.usb_dev_state*, %struct.usb_dev_state** %4, align 8
  %33 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @EACCES, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %30, %25
  %40 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %40, i32 %41)
  store %struct.usb_interface* %42, %struct.usb_interface** %7, align 8
  %43 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %44 = icmp ne %struct.usb_interface* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %50 = load %struct.usb_dev_state*, %struct.usb_dev_state** %4, align 8
  %51 = call i32 @usb_driver_claim_interface(i32* @usbfs_driver, %struct.usb_interface* %49, %struct.usb_dev_state* %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.usb_dev_state*, %struct.usb_dev_state** %4, align 8
  %58 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %36, %24, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, %struct.usb_interface*, %struct.usb_dev_state*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
