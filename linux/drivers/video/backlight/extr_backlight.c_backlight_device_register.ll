; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_backlight_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_backlight_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32, %struct.backlight_ops*, %struct.TYPE_7__, %struct.TYPE_8__, i32, i32 }
%struct.backlight_ops = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.backlight_properties = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"backlight_device_register: name=%s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@backlight_class = common dso_local global i32 0, align 4
@bl_device_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BACKLIGHT_TYPE_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: invalid backlight type\00", align 1
@BACKLIGHT_RAW = common dso_local global i8* null, align 8
@backlight_dev_list_mutex = common dso_local global i32 0, align 4
@backlight_dev_list = common dso_local global i32 0, align 4
@backlight_notifier = common dso_local global i32 0, align 4
@BACKLIGHT_REGISTERED = common dso_local global i32 0, align 4
@pmac_backlight = common dso_local global %struct.backlight_device* null, align 8
@pmac_backlight_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.backlight_device* @backlight_device_register(i8* %0, %struct.device* %1, i8* %2, %struct.backlight_ops* %3, %struct.backlight_properties* %4) #0 {
  %6 = alloca %struct.backlight_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.backlight_ops*, align 8
  %11 = alloca %struct.backlight_properties*, align 8
  %12 = alloca %struct.backlight_device*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.backlight_ops* %3, %struct.backlight_ops** %10, align 8
  store %struct.backlight_properties* %4, %struct.backlight_properties** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.backlight_device* @kzalloc(i32 56, i32 %16)
  store %struct.backlight_device* %17, %struct.backlight_device** %12, align 8
  %18 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %19 = icmp ne %struct.backlight_device* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.backlight_device* @ERR_PTR(i32 %22)
  store %struct.backlight_device* %23, %struct.backlight_device** %6, align 8
  br label %117

24:                                               ; preds = %5
  %25 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %25, i32 0, i32 5
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %29 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %28, i32 0, i32 4
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load i32, i32* @backlight_class, align 4
  %32 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %33 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %37 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store %struct.device* %35, %struct.device** %38, align 8
  %39 = load i32, i32* @bl_device_release, align 4
  %40 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %41 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %44 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %43, i32 0, i32 2
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @dev_set_name(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %48 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %47, i32 0, i32 2
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %48, i8* %49)
  %51 = load %struct.backlight_properties*, %struct.backlight_properties** %11, align 8
  %52 = icmp ne %struct.backlight_properties* %51, null
  br i1 %52, label %53, label %76

53:                                               ; preds = %24
  %54 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %55 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %54, i32 0, i32 3
  %56 = load %struct.backlight_properties*, %struct.backlight_properties** %11, align 8
  %57 = call i32 @memcpy(%struct.TYPE_8__* %55, %struct.backlight_properties* %56, i32 8)
  %58 = load %struct.backlight_properties*, %struct.backlight_properties** %11, align 8
  %59 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %53
  %63 = load %struct.backlight_properties*, %struct.backlight_properties** %11, align 8
  %64 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BACKLIGHT_TYPE_MAX, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62, %53
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** @BACKLIGHT_RAW, align 8
  %72 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %73 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  br label %75

75:                                               ; preds = %68, %62
  br label %81

76:                                               ; preds = %24
  %77 = load i8*, i8** @BACKLIGHT_RAW, align 8
  %78 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %79 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  br label %81

81:                                               ; preds = %76, %75
  %82 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %83 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %82, i32 0, i32 2
  %84 = call i32 @device_register(%struct.TYPE_7__* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %89 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %88, i32 0, i32 2
  %90 = call i32 @put_device(%struct.TYPE_7__* %89)
  %91 = load i32, i32* %13, align 4
  %92 = call %struct.backlight_device* @ERR_PTR(i32 %91)
  store %struct.backlight_device* %92, %struct.backlight_device** %6, align 8
  br label %117

93:                                               ; preds = %81
  %94 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %95 = call i32 @backlight_register_fb(%struct.backlight_device* %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %100 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %99, i32 0, i32 2
  %101 = call i32 @device_unregister(%struct.TYPE_7__* %100)
  %102 = load i32, i32* %13, align 4
  %103 = call %struct.backlight_device* @ERR_PTR(i32 %102)
  store %struct.backlight_device* %103, %struct.backlight_device** %6, align 8
  br label %117

104:                                              ; preds = %93
  %105 = load %struct.backlight_ops*, %struct.backlight_ops** %10, align 8
  %106 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %107 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %106, i32 0, i32 1
  store %struct.backlight_ops* %105, %struct.backlight_ops** %107, align 8
  %108 = call i32 @mutex_lock(i32* @backlight_dev_list_mutex)
  %109 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %110 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %109, i32 0, i32 0
  %111 = call i32 @list_add(i32* %110, i32* @backlight_dev_list)
  %112 = call i32 @mutex_unlock(i32* @backlight_dev_list_mutex)
  %113 = load i32, i32* @BACKLIGHT_REGISTERED, align 4
  %114 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  %115 = call i32 @blocking_notifier_call_chain(i32* @backlight_notifier, i32 %113, %struct.backlight_device* %114)
  %116 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  store %struct.backlight_device* %116, %struct.backlight_device** %6, align 8
  br label %117

117:                                              ; preds = %104, %98, %87, %20
  %118 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  ret %struct.backlight_device* %118
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local %struct.backlight_device* @kzalloc(i32, i32) #1

declare dso_local %struct.backlight_device* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.backlight_properties*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i8*) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i32 @backlight_register_fb(%struct.backlight_device*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
