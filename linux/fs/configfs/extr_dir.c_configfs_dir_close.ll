; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_dir_close.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_dir_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.configfs_dirent*, %struct.TYPE_2__ }
%struct.configfs_dirent = type { i32 }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@configfs_dirent_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @configfs_dir_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_dir_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.configfs_dirent*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.configfs_dirent*, %struct.configfs_dirent** %12, align 8
  store %struct.configfs_dirent* %13, %struct.configfs_dirent** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = call i32 @d_inode(%struct.dentry* %14)
  %16 = call i32 @inode_lock(i32 %15)
  %17 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %18 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %19 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %18, i32 0, i32 0
  %20 = call i32 @list_del_init(i32* %19)
  %21 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call i32 @d_inode(%struct.dentry* %22)
  %24 = call i32 @inode_unlock(i32 %23)
  %25 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %26 = call i32 @release_configfs_dirent(%struct.configfs_dirent* %25)
  ret i32 0
}

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @release_configfs_dirent(%struct.configfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
