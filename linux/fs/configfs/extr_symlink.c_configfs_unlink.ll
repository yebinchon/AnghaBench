; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_symlink.c_configfs_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_symlink.c_configfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32, i32, %struct.configfs_dirent*, i32 }
%struct.config_item = type { %struct.config_item_type* }
%struct.config_item_type = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.config_item*, %struct.configfs_dirent*)* }

@EPERM = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_LINK = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.configfs_dirent*, align 8
  %6 = alloca %struct.configfs_dirent*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.config_item_type*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  %12 = load %struct.configfs_dirent*, %struct.configfs_dirent** %11, align 8
  store %struct.configfs_dirent* %12, %struct.configfs_dirent** %5, align 8
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %16 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CONFIGFS_ITEM_LINK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %83

22:                                               ; preds = %2
  %23 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %24 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %23, i32 0, i32 2
  %25 = load %struct.configfs_dirent*, %struct.configfs_dirent** %24, align 8
  store %struct.configfs_dirent* %25, %struct.configfs_dirent** %6, align 8
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.config_item* @configfs_get_config_item(i32 %28)
  store %struct.config_item* %29, %struct.config_item** %7, align 8
  %30 = load %struct.config_item*, %struct.config_item** %7, align 8
  %31 = getelementptr inbounds %struct.config_item, %struct.config_item* %30, i32 0, i32 0
  %32 = load %struct.config_item_type*, %struct.config_item_type** %31, align 8
  store %struct.config_item_type* %32, %struct.config_item_type** %8, align 8
  %33 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %34 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %35 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %34, i32 0, i32 3
  %36 = call i32 @list_del_init(i32* %35)
  %37 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %38 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @configfs_drop_dentry(%struct.configfs_dirent* %38, i32 %41)
  %43 = load %struct.dentry*, %struct.dentry** %4, align 8
  %44 = call i32 @dput(%struct.dentry* %43)
  %45 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %46 = call i32 @configfs_put(%struct.configfs_dirent* %45)
  %47 = load %struct.config_item_type*, %struct.config_item_type** %8, align 8
  %48 = icmp ne %struct.config_item_type* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %22
  %50 = load %struct.config_item_type*, %struct.config_item_type** %8, align 8
  %51 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load %struct.config_item_type*, %struct.config_item_type** %8, align 8
  %56 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.config_item*, %struct.configfs_dirent*)*, i32 (%struct.config_item*, %struct.configfs_dirent*)** %58, align 8
  %60 = icmp ne i32 (%struct.config_item*, %struct.configfs_dirent*)* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.config_item_type*, %struct.config_item_type** %8, align 8
  %63 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.config_item*, %struct.configfs_dirent*)*, i32 (%struct.config_item*, %struct.configfs_dirent*)** %65, align 8
  %67 = load %struct.config_item*, %struct.config_item** %7, align 8
  %68 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %69 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %68, i32 0, i32 2
  %70 = load %struct.configfs_dirent*, %struct.configfs_dirent** %69, align 8
  %71 = call i32 %66(%struct.config_item* %67, %struct.configfs_dirent* %70)
  br label %72

72:                                               ; preds = %61, %54, %49, %22
  %73 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %74 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %75 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  %78 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %79 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %80 = call i32 @configfs_put(%struct.configfs_dirent* %79)
  %81 = load %struct.config_item*, %struct.config_item** %7, align 8
  %82 = call i32 @config_item_put(%struct.config_item* %81)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %72, %21
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local %struct.config_item* @configfs_get_config_item(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @configfs_drop_dentry(%struct.configfs_dirent*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @configfs_put(%struct.configfs_dirent*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
