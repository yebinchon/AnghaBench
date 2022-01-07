; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb251xb.c_usb251xb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb251xb.c_usb251xb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb251xb = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }
%struct.usb251xb_data = type { i32 }

@usb251xb_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get ofdata: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to connect hub (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Hub probed successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb251xb*)* @usb251xb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb251xb_probe(%struct.usb251xb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb251xb*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i32, align 4
  store %struct.usb251xb* %0, %struct.usb251xb** %3, align 8
  %8 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %9 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load i32, i32* @usb251xb_of_match, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.device* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %21 = icmp ne %struct.of_device_id* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %24 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %25 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.usb251xb_data*
  %28 = call i32 @usb251xb_get_ofdata(%struct.usb251xb* %23, %struct.usb251xb_data* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %57

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %19, %1
  %38 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %39 = call i32 @usb251x_check_gpio_chip(%struct.usb251xb* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %57

44:                                               ; preds = %37
  %45 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %46 = call i32 @usb251xb_connect(%struct.usb251xb* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %44
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @dev_info(%struct.device* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %49, %42, %31
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @usb251xb_get_ofdata(%struct.usb251xb*, %struct.usb251xb_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @usb251x_check_gpio_chip(%struct.usb251xb*) #1

declare dso_local i32 @usb251xb_connect(%struct.usb251xb*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
