; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_failed_creating.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_failed_creating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@debugfs_mount = common dso_local global i32 0, align 4
@debugfs_mount_count = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @failed_creating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @failed_creating(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %3 = load %struct.dentry*, %struct.dentry** %2, align 8
  %4 = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @d_inode(i32 %5)
  %7 = call i32 @inode_unlock(i32 %6)
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = call i32 @dput(%struct.dentry* %8)
  %10 = call i32 @simple_release_fs(i32* @debugfs_mount, i32* @debugfs_mount_count)
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.dentry* @ERR_PTR(i32 %12)
  ret %struct.dentry* %13
}

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @simple_release_fs(i32*, i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
