; ModuleID = '/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.pts_fs_info = type { %struct.pts_mount_opts }
%struct.pts_mount_opts = type { i64, i64, i64, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c",mode=%03o\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c",ptmxmode=%03o\00", align 1
@NR_UNIX98_PTY_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c",max=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @devpts_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devpts_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.pts_fs_info*, align 8
  %6 = alloca %struct.pts_mount_opts*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pts_fs_info* @DEVPTS_SB(i32 %9)
  store %struct.pts_fs_info* %10, %struct.pts_fs_info** %5, align 8
  %11 = load %struct.pts_fs_info*, %struct.pts_fs_info** %5, align 8
  %12 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %11, i32 0, i32 0
  store %struct.pts_mount_opts* %12, %struct.pts_mount_opts** %6, align 8
  %13 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %14 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %20 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @from_kuid_munged(i32* @init_user_ns, i32 %21)
  %23 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %26 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %32 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @from_kgid_munged(i32* @init_user_ns, i32 %33)
  %35 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %39 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %44 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %48 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NR_UNIX98_PTY_MAX, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %36
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %55 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %52, %36
  ret i32 0
}

declare dso_local %struct.pts_fs_info* @DEVPTS_SB(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @from_kuid_munged(i32*, i32) #1

declare dso_local i64 @from_kgid_munged(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
