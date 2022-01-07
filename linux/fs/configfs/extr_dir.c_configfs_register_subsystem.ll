; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_register_subsystem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_register_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_subsystem = type { %struct.config_group }
%struct.config_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dentry = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32 }
%struct.configfs_fragment = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_register_subsystem(%struct.configfs_subsystem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.configfs_subsystem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_group*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.configfs_dirent*, align 8
  %9 = alloca %struct.configfs_fragment*, align 8
  store %struct.configfs_subsystem* %0, %struct.configfs_subsystem** %3, align 8
  %10 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %3, align 8
  %11 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %10, i32 0, i32 0
  store %struct.config_group* %11, %struct.config_group** %5, align 8
  %12 = call %struct.configfs_fragment* (...) @new_fragment()
  store %struct.configfs_fragment* %12, %struct.configfs_fragment** %9, align 8
  %13 = load %struct.configfs_fragment*, %struct.configfs_fragment** %9, align 8
  %14 = icmp ne %struct.configfs_fragment* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %109

18:                                               ; preds = %1
  %19 = call %struct.dentry* (...) @configfs_pin_fs()
  store %struct.dentry* %19, %struct.dentry** %7, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = call i64 @IS_ERR(%struct.dentry* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.configfs_fragment*, %struct.configfs_fragment** %9, align 8
  %25 = call i32 @put_fragment(%struct.configfs_fragment* %24)
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = call i32 @PTR_ERR(%struct.dentry* %26)
  store i32 %27, i32* %2, align 4
  br label %109

28:                                               ; preds = %18
  %29 = load %struct.config_group*, %struct.config_group** %5, align 8
  %30 = getelementptr inbounds %struct.config_group, %struct.config_group* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = load %struct.config_group*, %struct.config_group** %5, align 8
  %36 = getelementptr inbounds %struct.config_group, %struct.config_group* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.config_group*, %struct.config_group** %5, align 8
  %40 = getelementptr inbounds %struct.config_group, %struct.config_group* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %28
  %43 = load %struct.dentry*, %struct.dentry** %7, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = load %struct.configfs_dirent*, %struct.configfs_dirent** %44, align 8
  store %struct.configfs_dirent* %45, %struct.configfs_dirent** %8, align 8
  %46 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %47 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @to_config_group(i32 %48)
  %50 = load %struct.config_group*, %struct.config_group** %5, align 8
  %51 = call i32 @link_group(i32 %49, %struct.config_group* %50)
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = call i32 @d_inode(%struct.dentry* %52)
  %54 = load i32, i32* @I_MUTEX_PARENT, align 4
  %55 = call i32 @inode_lock_nested(i32 %53, i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  %58 = load %struct.dentry*, %struct.dentry** %7, align 8
  %59 = load %struct.config_group*, %struct.config_group** %5, align 8
  %60 = getelementptr inbounds %struct.config_group, %struct.config_group* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.dentry* @d_alloc_name(%struct.dentry* %58, i64 %62)
  store %struct.dentry* %63, %struct.dentry** %6, align 8
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = icmp ne %struct.dentry* %64, null
  br i1 %65, label %66, label %95

66:                                               ; preds = %42
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = call i32 @d_add(%struct.dentry* %67, i32* null)
  %69 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %70 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.config_group*, %struct.config_group** %5, align 8
  %73 = getelementptr inbounds %struct.config_group, %struct.config_group* %72, i32 0, i32 0
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = load %struct.configfs_fragment*, %struct.configfs_fragment** %9, align 8
  %76 = call i32 @configfs_attach_group(i32 %71, %struct.TYPE_2__* %73, %struct.dentry* %74, %struct.configfs_fragment* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %66
  %80 = load %struct.dentry*, %struct.dentry** %6, align 8
  %81 = call i32 @d_inode(%struct.dentry* %80)
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.dentry*, %struct.dentry** %6, align 8
  %84 = call i32 @d_drop(%struct.dentry* %83)
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = call i32 @dput(%struct.dentry* %85)
  br label %94

87:                                               ; preds = %66
  %88 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %89 = load %struct.dentry*, %struct.dentry** %6, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 0
  %91 = load %struct.configfs_dirent*, %struct.configfs_dirent** %90, align 8
  %92 = call i32 @configfs_dir_set_ready(%struct.configfs_dirent* %91)
  %93 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  br label %94

94:                                               ; preds = %87, %79
  br label %95

95:                                               ; preds = %94, %42
  %96 = load %struct.dentry*, %struct.dentry** %7, align 8
  %97 = call i32 @d_inode(%struct.dentry* %96)
  %98 = call i32 @inode_unlock(i32 %97)
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.config_group*, %struct.config_group** %5, align 8
  %103 = call i32 @unlink_group(%struct.config_group* %102)
  %104 = call i32 (...) @configfs_release_fs()
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.configfs_fragment*, %struct.configfs_fragment** %9, align 8
  %107 = call i32 @put_fragment(%struct.configfs_fragment* %106)
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %23, %15
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.configfs_fragment* @new_fragment(...) #1

declare dso_local %struct.dentry* @configfs_pin_fs(...) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @put_fragment(%struct.configfs_fragment*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @link_group(i32, %struct.config_group*) #1

declare dso_local i32 @to_config_group(i32) #1

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i64) #1

declare dso_local i32 @d_add(%struct.dentry*, i32*) #1

declare dso_local i32 @configfs_attach_group(i32, %struct.TYPE_2__*, %struct.dentry*, %struct.configfs_fragment*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @configfs_dir_set_ready(%struct.configfs_dirent*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @unlink_group(%struct.config_group*) #1

declare dso_local i32 @configfs_release_fs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
