; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_backlight_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_backlight_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_ops = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.backlight_properties = type { i32, i32 }

@sony_backlight_ng_ops = common dso_local global %struct.backlight_ops zeroinitializer, align 8
@sony_bl_props = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@sony_nc_acpi_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"GBRT\00", align 1
@sony_backlight_ops = common dso_local global %struct.backlight_ops zeroinitializer, align 8
@SONY_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sony\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to register backlight device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sony_nc_backlight_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_nc_backlight_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.backlight_ops*, align 8
  %3 = alloca %struct.backlight_properties, align 4
  store i32 0, i32* %1, align 4
  store %struct.backlight_ops* null, %struct.backlight_ops** %2, align 8
  %4 = call i64 @sony_find_snc_handle(i32 303)
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  store %struct.backlight_ops* @sony_backlight_ng_ops, %struct.backlight_ops** %2, align 8
  store i32 256, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 0), align 8
  %7 = call i32 @sony_nc_backlight_ng_read_limits(i32 303, %struct.TYPE_10__* @sony_bl_props)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 1), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 2), align 8
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %1, align 4
  br label %56

11:                                               ; preds = %0
  %12 = call i64 @sony_find_snc_handle(i32 311)
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  store %struct.backlight_ops* @sony_backlight_ng_ops, %struct.backlight_ops** %2, align 8
  store i32 256, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 0), align 8
  %15 = call i32 @sony_nc_backlight_ng_read_limits(i32 311, %struct.TYPE_10__* @sony_bl_props)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 1), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 2), align 8
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %1, align 4
  br label %55

19:                                               ; preds = %11
  %20 = call i64 @sony_find_snc_handle(i32 323)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  store %struct.backlight_ops* @sony_backlight_ng_ops, %struct.backlight_ops** %2, align 8
  store i32 12288, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 0), align 8
  %23 = call i32 @sony_nc_backlight_ng_read_limits(i32 323, %struct.TYPE_10__* @sony_bl_props)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 2), align 8
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %1, align 4
  br label %54

27:                                               ; preds = %19
  %28 = call i64 @sony_find_snc_handle(i32 331)
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  store %struct.backlight_ops* @sony_backlight_ng_ops, %struct.backlight_ops** %2, align 8
  store i32 12288, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 0), align 8
  %31 = call i32 @sony_nc_backlight_ng_read_limits(i32 331, %struct.TYPE_10__* @sony_bl_props)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 2), align 8
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %1, align 4
  br label %53

35:                                               ; preds = %27
  %36 = call i64 @sony_find_snc_handle(i32 332)
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  store %struct.backlight_ops* @sony_backlight_ng_ops, %struct.backlight_ops** %2, align 8
  store i32 12288, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 0), align 8
  %39 = call i32 @sony_nc_backlight_ng_read_limits(i32 332, %struct.TYPE_10__* @sony_bl_props)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 1), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 2), align 8
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %1, align 4
  br label %52

43:                                               ; preds = %35
  %44 = load i32, i32* @sony_nc_acpi_handle, align 4
  %45 = call i64 @acpi_has_method(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  store %struct.backlight_ops* @sony_backlight_ops, %struct.backlight_ops** %2, align 8
  %48 = load i32, i32* @SONY_MAX_BRIGHTNESS, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %51

50:                                               ; preds = %43
  br label %78

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %30
  br label %54

54:                                               ; preds = %53, %22
  br label %55

55:                                               ; preds = %54, %14
  br label %56

56:                                               ; preds = %55, %6
  %57 = call i32 @memset(%struct.backlight_properties* %3, i32 0, i32 8)
  %58 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %59 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %1, align 4
  %61 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.backlight_ops*, %struct.backlight_ops** %2, align 8
  %63 = call %struct.TYPE_9__* @backlight_device_register(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.TYPE_10__* @sony_bl_props, %struct.backlight_ops* %62, %struct.backlight_properties* %3)
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 3), align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 3), align 8
  %65 = call i64 @IS_ERR(%struct.TYPE_9__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 3), align 8
  br label %78

69:                                               ; preds = %56
  %70 = load %struct.backlight_ops*, %struct.backlight_ops** %2, align 8
  %71 = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 3), align 8
  %74 = call i32 %72(%struct.TYPE_9__* %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sony_bl_props, i32 0, i32 3), align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %50, %69, %67
  ret void
}

declare dso_local i64 @sony_find_snc_handle(i32) #1

declare dso_local i32 @sony_nc_backlight_ng_read_limits(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @acpi_has_method(i32, i8*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @backlight_device_register(i8*, i32*, %struct.TYPE_10__*, %struct.backlight_ops*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
