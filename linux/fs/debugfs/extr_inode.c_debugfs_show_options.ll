; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.debugfs_fs_info* }
%struct.debugfs_fs_info = type { %struct.debugfs_mount_opts }
%struct.debugfs_mount_opts = type { i64, i32, i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@DEBUGFS_DEFAULT_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c",mode=%o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @debugfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.debugfs_fs_info*, align 8
  %6 = alloca %struct.debugfs_mount_opts*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.debugfs_fs_info*, %struct.debugfs_fs_info** %10, align 8
  store %struct.debugfs_fs_info* %11, %struct.debugfs_fs_info** %5, align 8
  %12 = load %struct.debugfs_fs_info*, %struct.debugfs_fs_info** %5, align 8
  %13 = getelementptr inbounds %struct.debugfs_fs_info, %struct.debugfs_fs_info* %12, i32 0, i32 0
  store %struct.debugfs_mount_opts* %13, %struct.debugfs_mount_opts** %6, align 8
  %14 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %6, align 8
  %15 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %18 = call i32 @uid_eq(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %6, align 8
  %23 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @from_kuid_munged(i32* @init_user_ns, i32 %24)
  %26 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %6, align 8
  %29 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %32 = call i32 @gid_eq(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %6, align 8
  %37 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @from_kgid_munged(i32* @init_user_ns, i32 %38)
  %40 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %6, align 8
  %43 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DEBUGFS_DEFAULT_MODE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %6, align 8
  %50 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %47, %41
  ret i32 0
}

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i64 @from_kgid_munged(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
