; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_thermal_zone_create_device_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_thermal_zone_create_device_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32 }
%struct.thermal_zone_device = type { %struct.TYPE_2__, %struct.attribute_group, i64 }
%struct.TYPE_2__ = type { %struct.attribute_group** }

@thermal_zone_attribute_groups = common dso_local global %struct.attribute_group** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thermal_zone_create_device_groups(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.attribute_group**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.attribute_group**, %struct.attribute_group*** @thermal_zone_attribute_groups, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.attribute_group** %10)
  %12 = add nsw i32 %11, 2
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.attribute_group** @kcalloc(i32 %13, i32 8, i32 %14)
  store %struct.attribute_group** %15, %struct.attribute_group*** %6, align 8
  %16 = load %struct.attribute_group**, %struct.attribute_group*** %6, align 8
  %17 = icmp ne %struct.attribute_group** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %68

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 2
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.attribute_group**, %struct.attribute_group*** @thermal_zone_attribute_groups, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %28, i64 %30
  %32 = load %struct.attribute_group*, %struct.attribute_group** %31, align 8
  %33 = load %struct.attribute_group**, %struct.attribute_group*** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %33, i64 %35
  store %struct.attribute_group* %32, %struct.attribute_group** %36, align 8
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %42 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @create_trip_attrs(%struct.thermal_zone_device* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.attribute_group**, %struct.attribute_group*** %6, align 8
  %53 = call i32 @kfree(%struct.attribute_group** %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %68

55:                                               ; preds = %45
  %56 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %57 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %56, i32 0, i32 1
  %58 = load %struct.attribute_group**, %struct.attribute_group*** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %58, i64 %61
  store %struct.attribute_group* %57, %struct.attribute_group** %62, align 8
  br label %63

63:                                               ; preds = %55, %40
  %64 = load %struct.attribute_group**, %struct.attribute_group*** %6, align 8
  %65 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %66 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store %struct.attribute_group** %64, %struct.attribute_group*** %67, align 8
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %51, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ARRAY_SIZE(%struct.attribute_group**) #1

declare dso_local %struct.attribute_group** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @create_trip_attrs(%struct.thermal_zone_device*, i32) #1

declare dso_local i32 @kfree(%struct.attribute_group**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
