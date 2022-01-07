; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_passive_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_passive_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.thermal_zone_device = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Processor\00", align 1
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @passive_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @passive_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.thermal_zone_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.thermal_zone_device* @to_thermal_zone(%struct.device* %12)
  store %struct.thermal_zone_device* %13, %struct.thermal_zone_device** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %70

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 1000
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %70

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %34 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %39 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %44 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %43, i32 0, i32 1
  store i32 1000, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %47 = call i32 @thermal_zone_device_rebind_exception(%struct.thermal_zone_device* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 10)
  br label %62

48:                                               ; preds = %32, %29
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %48
  %52 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %53 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %58 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %60 = call i32 @thermal_zone_device_unbind_exception(%struct.thermal_zone_device* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 10)
  br label %61

61:                                               ; preds = %56, %51, %48
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %65 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %67 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %68 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %66, i32 %67)
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %62, %26, %17
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local %struct.thermal_zone_device* @to_thermal_zone(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @thermal_zone_device_rebind_exception(%struct.thermal_zone_device*, i8*, i32) #1

declare dso_local i32 @thermal_zone_device_unbind_exception(%struct.thermal_zone_device*, i8*, i32) #1

declare dso_local i32 @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
