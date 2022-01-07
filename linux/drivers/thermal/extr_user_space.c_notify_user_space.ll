; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_user_space.c_notify_user_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_user_space.c_notify_user_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"NAME=%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TEMP=%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TRIP=%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"EVENT=%d\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32)* @notify_user_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_user_space(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [5 x i8*], align 16
  %6 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %12 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @kasprintf(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  store i8* %14, i8** %15, align 16
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %18 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @kasprintf(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i8* @kasprintf(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 2
  store i8* %24, i8** %25, align 16
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %28 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @kasprintf(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 3
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 4
  store i8* null, i8** %32, align 16
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %34 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* @KOBJ_CHANGE, align 4
  %37 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  %38 = call i32 @kobject_uevent_env(i32* %35, i32 %36, i8** %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %48, %2
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @kfree(i8* %46)
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %39

51:                                               ; preds = %39
  %52 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %53 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %52, i32 0, i32 3
  %54 = call i32 @mutex_unlock(i32* %53)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
