; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_d_iput.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_d_iput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { %struct.dentry* }
%struct.inode = type { i32 }

@configfs_dirent_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.inode*)* @configfs_d_iput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configfs_d_iput(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.configfs_dirent*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  store %struct.configfs_dirent* %8, %struct.configfs_dirent** %5, align 8
  %9 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %10 = icmp ne %struct.configfs_dirent* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %13 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %14 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %13, i32 0, i32 0
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = icmp eq %struct.dentry* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %20 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %19, i32 0, i32 0
  store %struct.dentry* null, %struct.dentry** %20, align 8
  br label %21

21:                                               ; preds = %18, %11
  %22 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %23 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %24 = call i32 @configfs_put(%struct.configfs_dirent* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i32 @iput(%struct.inode* %26)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @configfs_put(%struct.configfs_dirent*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
