; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_most_deregister_configfs_subsys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_most_deregister_configfs_subsys.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @most_deregister_configfs_subsys(%struct.core_component* %0) #0 {
  %2 = alloca %struct.core_component*, align 8
  store %struct.core_component* %0, %struct.core_component** %2, align 8
  %3 = load %struct.core_component*, %struct.core_component** %2, align 8
  %4 = getelementptr inbounds %struct.core_component, %struct.core_component* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @strcmp(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @configfs_unregister_subsystem(i32* @most_cdev_subsys)
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.core_component*, %struct.core_component** %2, align 8
  %12 = getelementptr inbounds %struct.core_component, %struct.core_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcmp(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = call i32 @configfs_unregister_subsystem(i32* @most_net_subsys)
  br label %36

18:                                               ; preds = %10
  %19 = load %struct.core_component*, %struct.core_component** %2, align 8
  %20 = getelementptr inbounds %struct.core_component, %struct.core_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcmp(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = call i32 @configfs_unregister_subsystem(i32* @most_video_subsys)
  br label %35

26:                                               ; preds = %18
  %27 = load %struct.core_component*, %struct.core_component** %2, align 8
  %28 = getelementptr inbounds %struct.core_component, %struct.core_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcmp(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = call i32 @configfs_unregister_subsystem(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @most_sound_subsys, i32 0, i32 0))
  br label %34

34:                                               ; preds = %32, %26
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %16
  br label %37

37:                                               ; preds = %36, %8
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @configfs_unregister_subsystem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
