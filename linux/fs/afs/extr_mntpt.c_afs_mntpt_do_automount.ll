; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_mntpt.c_afs_mntpt_do_automount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_mntpt.c_afs_mntpt_do_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32 }
%struct.fs_context = type { i32 }

@afs_fs_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.dentry*)* @afs_mntpt_do_automount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @afs_mntpt_do_automount(%struct.dentry* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = call i32 @d_inode(%struct.dentry* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = call %struct.fs_context* @fs_context_for_submount(i32* @afs_fs_type, %struct.dentry* %13)
  store %struct.fs_context* %14, %struct.fs_context** %4, align 8
  %15 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %16 = call i64 @IS_ERR(%struct.fs_context* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %20 = call %struct.vfsmount* @ERR_CAST(%struct.fs_context* %19)
  store %struct.vfsmount* %20, %struct.vfsmount** %2, align 8
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = call i32 @afs_mntpt_set_params(%struct.fs_context* %22, %struct.dentry* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %29 = call %struct.vfsmount* @fc_mount(%struct.fs_context* %28)
  store %struct.vfsmount* %29, %struct.vfsmount** %5, align 8
  br label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.vfsmount* @ERR_PTR(i32 %31)
  store %struct.vfsmount* %32, %struct.vfsmount** %5, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %35 = call i32 @put_fs_context(%struct.fs_context* %34)
  %36 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  store %struct.vfsmount* %36, %struct.vfsmount** %2, align 8
  br label %37

37:                                               ; preds = %33, %18
  %38 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %38
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.fs_context* @fs_context_for_submount(i32*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.fs_context*) #1

declare dso_local %struct.vfsmount* @ERR_CAST(%struct.fs_context*) #1

declare dso_local i32 @afs_mntpt_set_params(%struct.fs_context*, %struct.dentry*) #1

declare dso_local %struct.vfsmount* @fc_mount(%struct.fs_context*) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
