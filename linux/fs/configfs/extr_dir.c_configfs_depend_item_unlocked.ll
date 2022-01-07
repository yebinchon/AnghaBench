; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_depend_item_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_depend_item_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_subsystem = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32 }
%struct.config_item = type { %struct.TYPE_7__*, %struct.config_group* }
%struct.TYPE_7__ = type { i32 }
%struct.config_group = type { %struct.config_item, %struct.configfs_subsystem* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_depend_item_unlocked(%struct.configfs_subsystem* %0, %struct.config_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.configfs_subsystem*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.configfs_subsystem*, align 8
  %7 = alloca %struct.config_group*, align 8
  %8 = alloca %struct.config_group*, align 8
  %9 = alloca %struct.configfs_dirent*, align 8
  %10 = alloca i32, align 4
  store %struct.configfs_subsystem* %0, %struct.configfs_subsystem** %4, align 8
  store %struct.config_item* %1, %struct.config_item** %5, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.config_item*, %struct.config_item** %5, align 8
  %14 = call i64 @configfs_is_root(%struct.config_item* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %102

19:                                               ; preds = %2
  %20 = load %struct.config_item*, %struct.config_item** %5, align 8
  %21 = getelementptr inbounds %struct.config_item, %struct.config_item* %20, i32 0, i32 1
  %22 = load %struct.config_group*, %struct.config_group** %21, align 8
  store %struct.config_group* %22, %struct.config_group** %8, align 8
  %23 = load %struct.config_group*, %struct.config_group** %8, align 8
  %24 = getelementptr inbounds %struct.config_group, %struct.config_group* %23, i32 0, i32 0
  %25 = call i64 @configfs_is_root(%struct.config_item* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.config_item*, %struct.config_item** %5, align 8
  %29 = call i32 @to_config_group(%struct.config_item* %28)
  %30 = call %struct.configfs_subsystem* @to_configfs_subsystem(i32 %29)
  store %struct.configfs_subsystem* %30, %struct.configfs_subsystem** %6, align 8
  %31 = load %struct.config_group*, %struct.config_group** %8, align 8
  store %struct.config_group* %31, %struct.config_group** %7, align 8
  br label %50

32:                                               ; preds = %19
  %33 = load %struct.config_group*, %struct.config_group** %8, align 8
  %34 = getelementptr inbounds %struct.config_group, %struct.config_group* %33, i32 0, i32 1
  %35 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %34, align 8
  store %struct.configfs_subsystem* %35, %struct.configfs_subsystem** %6, align 8
  %36 = load %struct.config_group*, %struct.config_group** %8, align 8
  store %struct.config_group* %36, %struct.config_group** %7, align 8
  br label %37

37:                                               ; preds = %44, %32
  %38 = load %struct.config_group*, %struct.config_group** %7, align 8
  %39 = getelementptr inbounds %struct.config_group, %struct.config_group* %38, i32 0, i32 0
  %40 = call i64 @configfs_is_root(%struct.config_item* %39)
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.config_group*, %struct.config_group** %7, align 8
  %46 = getelementptr inbounds %struct.config_group, %struct.config_group* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.config_item, %struct.config_item* %46, i32 0, i32 1
  %48 = load %struct.config_group*, %struct.config_group** %47, align 8
  store %struct.config_group* %48, %struct.config_group** %7, align 8
  br label %37

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %6, align 8
  %52 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %4, align 8
  %53 = icmp ne %struct.configfs_subsystem* %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load %struct.config_group*, %struct.config_group** %7, align 8
  %56 = getelementptr inbounds %struct.config_group, %struct.config_group* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.config_item, %struct.config_item* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i32 @d_inode(%struct.TYPE_7__* %58)
  %60 = call i32 @inode_lock(i32 %59)
  %61 = load %struct.config_group*, %struct.config_group** %7, align 8
  %62 = getelementptr inbounds %struct.config_group, %struct.config_group* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.config_item, %struct.config_item* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %6, align 8
  %68 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call %struct.configfs_dirent* @configfs_find_subsys_dentry(i32 %66, %struct.TYPE_8__* %69)
  store %struct.configfs_dirent* %70, %struct.configfs_dirent** %9, align 8
  %71 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %72 = icmp ne %struct.configfs_dirent* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %54
  br label %93

74:                                               ; preds = %54
  br label %83

75:                                               ; preds = %50
  %76 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %6, align 8
  %77 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.configfs_dirent*, %struct.configfs_dirent** %81, align 8
  store %struct.configfs_dirent* %82, %struct.configfs_dirent** %9, align 8
  br label %83

83:                                               ; preds = %75, %74
  %84 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %85 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.config_item*, %struct.config_item** %5, align 8
  %88 = call i32 @configfs_do_depend_item(i32 %86, %struct.config_item* %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %6, align 8
  %90 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %4, align 8
  %91 = icmp ne %struct.configfs_subsystem* %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.config_group*, %struct.config_group** %7, align 8
  %95 = getelementptr inbounds %struct.config_group, %struct.config_group* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.config_item, %struct.config_item* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = call i32 @d_inode(%struct.TYPE_7__* %97)
  %99 = call i32 @inode_unlock(i32 %98)
  br label %100

100:                                              ; preds = %93, %83
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @configfs_is_root(%struct.config_item*) #1

declare dso_local %struct.configfs_subsystem* @to_configfs_subsystem(i32) #1

declare dso_local i32 @to_config_group(%struct.config_item*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.TYPE_7__*) #1

declare dso_local %struct.configfs_dirent* @configfs_find_subsys_dentry(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @configfs_do_depend_item(i32, %struct.config_item*) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
