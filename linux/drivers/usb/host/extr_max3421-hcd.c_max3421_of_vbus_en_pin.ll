; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_of_vbus_en_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_of_vbus_en_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max3421_hcd_platform_data = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"maxim,vbus-en-pin\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"device tree node property 'maxim,vbus-en-pin' is missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"property 'maxim,vbus-en-pin' value is <%d %d>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.max3421_hcd_platform_data*)* @max3421_of_vbus_en_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3421_of_vbus_en_pin(%struct.device* %0, %struct.max3421_hcd_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max3421_hcd_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8*], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.max3421_hcd_platform_data* %1, %struct.max3421_hcd_platform_data** %5, align 8
  %8 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %5, align 8
  %9 = icmp ne %struct.max3421_hcd_platform_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %18 = call i32 @of_property_read_u32_array(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %17, i32 2)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %13
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %28 = load i8*, i8** %27, align 16
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @dev_info(%struct.device* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %28, i8* %30)
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %33 = load i8*, i8** %32, align 16
  %34 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %5, align 8
  %35 = getelementptr inbounds %struct.max3421_hcd_platform_data, %struct.max3421_hcd_platform_data* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %5, align 8
  %39 = getelementptr inbounds %struct.max3421_hcd_platform_data, %struct.max3421_hcd_platform_data* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %25, %21, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @of_property_read_u32_array(i32, i8*, i8**, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
