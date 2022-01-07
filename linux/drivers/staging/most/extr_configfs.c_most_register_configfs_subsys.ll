; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_most_register_configfs_subsys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_most_register_configfs_subsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.core_component = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"cdev\00", align 1
@most_cdev_subsys = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@most_net_subsys = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@most_video_subsys = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@most_sound_subsys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Error %d while registering subsystem %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @most_register_configfs_subsys(%struct.core_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.core_component*, align 8
  %4 = alloca i32, align 4
  store %struct.core_component* %0, %struct.core_component** %3, align 8
  %5 = load %struct.core_component*, %struct.core_component** %3, align 8
  %6 = getelementptr inbounds %struct.core_component, %struct.core_component* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @strcmp(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @configfs_register_subsystem(i32* @most_cdev_subsys)
  store i32 %11, i32* %4, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.core_component*, %struct.core_component** %3, align 8
  %14 = getelementptr inbounds %struct.core_component, %struct.core_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strcmp(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call i32 @configfs_register_subsystem(i32* @most_net_subsys)
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %12
  %21 = load %struct.core_component*, %struct.core_component** %3, align 8
  %22 = getelementptr inbounds %struct.core_component, %struct.core_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 @configfs_register_subsystem(i32* @most_video_subsys)
  store i32 %27, i32* %4, align 4
  br label %40

28:                                               ; preds = %20
  %29 = load %struct.core_component*, %struct.core_component** %3, align 8
  %30 = getelementptr inbounds %struct.core_component, %struct.core_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcmp(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = call i32 @configfs_register_subsystem(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @most_sound_subsys, i32 0, i32 0))
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %18
  br label %42

42:                                               ; preds = %41, %10
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.core_component*, %struct.core_component** %3, align 8
  %48 = getelementptr inbounds %struct.core_component, %struct.core_component* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %36
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @configfs_register_subsystem(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
