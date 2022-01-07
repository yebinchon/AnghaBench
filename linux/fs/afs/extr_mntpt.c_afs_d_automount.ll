; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_mntpt.c_afs_d_automount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_mntpt.c_afs_d_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"{%pd}\00", align 1
@afs_vfsmounts = common dso_local global i32 0, align 4
@afs_wq = common dso_local global i32 0, align 4
@afs_mntpt_expiry_timer = common dso_local global i32 0, align 4
@afs_mntpt_expiry_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @afs_d_automount(%struct.path* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %5 = load %struct.path*, %struct.path** %3, align 8
  %6 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.path*, %struct.path** %3, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vfsmount* @afs_mntpt_do_automount(i32 %11)
  store %struct.vfsmount* %12, %struct.vfsmount** %4, align 8
  %13 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %14 = call i64 @IS_ERR(%struct.vfsmount* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  store %struct.vfsmount* %17, %struct.vfsmount** %2, align 8
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %20 = call i32 @mntget(%struct.vfsmount* %19)
  %21 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %22 = call i32 @mnt_set_expiry(%struct.vfsmount* %21, i32* @afs_vfsmounts)
  %23 = load i32, i32* @afs_wq, align 4
  %24 = load i32, i32* @afs_mntpt_expiry_timeout, align 4
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 @queue_delayed_work(i32 %23, i32* @afs_mntpt_expiry_timer, i32 %26)
  %28 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %29 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.vfsmount* %28)
  %30 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  store %struct.vfsmount* %30, %struct.vfsmount** %2, align 8
  br label %31

31:                                               ; preds = %18, %16
  %32 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %32
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local %struct.vfsmount* @afs_mntpt_do_automount(i32) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local i32 @mnt_set_expiry(%struct.vfsmount*, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @_leave(i8*, %struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
