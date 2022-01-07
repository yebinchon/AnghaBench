; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_sysfs.c_parent_create_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_sysfs.c_parent_create_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_parent = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"mdev_supported_types\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parent_create_sysfs_files(%struct.mdev_parent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdev_parent*, align 8
  %4 = alloca i32, align 4
  store %struct.mdev_parent* %0, %struct.mdev_parent** %3, align 8
  %5 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %6 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @kset_create_and_add(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null, i32* %8)
  %10 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %11 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %13 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %21 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %20, i32 0, i32 3
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %24 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %28 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sysfs_create_groups(i32* %26, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %55

36:                                               ; preds = %19
  %37 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %38 = call i32 @add_mdev_supported_type_groups(%struct.mdev_parent* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %43 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %47 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sysfs_remove_groups(i32* %45, i32 %50)
  br label %54

52:                                               ; preds = %36
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %61

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %35
  %56 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %57 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kset_unregister(i32 %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %52, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @kset_create_and_add(i8*, i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sysfs_create_groups(i32*, i32) #1

declare dso_local i32 @add_mdev_supported_type_groups(%struct.mdev_parent*) #1

declare dso_local i32 @sysfs_remove_groups(i32*, i32) #1

declare dso_local i32 @kset_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
