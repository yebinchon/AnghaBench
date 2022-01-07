; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via-core.c_via_create_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via-core.c_via_create_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viafb_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.viafb_subdev_info = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.viafb_dev*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"Unable to allocate pdev %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to add pdev %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viafb_dev*, %struct.viafb_subdev_info*)* @via_create_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_create_subdev(%struct.viafb_dev* %0, %struct.viafb_subdev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.viafb_dev*, align 8
  %5 = alloca %struct.viafb_subdev_info*, align 8
  %6 = alloca i32, align 4
  store %struct.viafb_dev* %0, %struct.viafb_dev** %4, align 8
  store %struct.viafb_subdev_info* %1, %struct.viafb_subdev_info** %5, align 8
  %7 = load %struct.viafb_subdev_info*, %struct.viafb_subdev_info** %5, align 8
  %8 = getelementptr inbounds %struct.viafb_subdev_info, %struct.viafb_subdev_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.TYPE_8__* @platform_device_alloc(i32 %9, i32 -1)
  %11 = load %struct.viafb_subdev_info*, %struct.viafb_subdev_info** %5, align 8
  %12 = getelementptr inbounds %struct.viafb_subdev_info, %struct.viafb_subdev_info* %11, i32 0, i32 0
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %12, align 8
  %13 = load %struct.viafb_subdev_info*, %struct.viafb_subdev_info** %5, align 8
  %14 = getelementptr inbounds %struct.viafb_subdev_info, %struct.viafb_subdev_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load %struct.viafb_dev*, %struct.viafb_dev** %4, align 8
  %19 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.viafb_subdev_info*, %struct.viafb_subdev_info** %5, align 8
  %23 = getelementptr inbounds %struct.viafb_subdev_info, %struct.viafb_subdev_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %2
  %29 = load %struct.viafb_dev*, %struct.viafb_dev** %4, align 8
  %30 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.viafb_subdev_info*, %struct.viafb_subdev_info** %5, align 8
  %34 = getelementptr inbounds %struct.viafb_subdev_info, %struct.viafb_subdev_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32* %32, i32** %37, align 8
  %38 = load %struct.viafb_dev*, %struct.viafb_dev** %4, align 8
  %39 = load %struct.viafb_subdev_info*, %struct.viafb_subdev_info** %5, align 8
  %40 = getelementptr inbounds %struct.viafb_subdev_info, %struct.viafb_subdev_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store %struct.viafb_dev* %38, %struct.viafb_dev** %43, align 8
  %44 = load %struct.viafb_subdev_info*, %struct.viafb_subdev_info** %5, align 8
  %45 = getelementptr inbounds %struct.viafb_subdev_info, %struct.viafb_subdev_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 @platform_device_add(%struct.TYPE_8__* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %28
  %51 = load %struct.viafb_dev*, %struct.viafb_dev** %4, align 8
  %52 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.viafb_subdev_info*, %struct.viafb_subdev_info** %5, align 8
  %56 = getelementptr inbounds %struct.viafb_subdev_info, %struct.viafb_subdev_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.viafb_subdev_info*, %struct.viafb_subdev_info** %5, align 8
  %60 = getelementptr inbounds %struct.viafb_subdev_info, %struct.viafb_subdev_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i32 @platform_device_put(%struct.TYPE_8__* %61)
  %63 = load %struct.viafb_subdev_info*, %struct.viafb_subdev_info** %5, align 8
  %64 = getelementptr inbounds %struct.viafb_subdev_info, %struct.viafb_subdev_info* %63, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %64, align 8
  br label %65

65:                                               ; preds = %50, %28
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %17
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_8__* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
