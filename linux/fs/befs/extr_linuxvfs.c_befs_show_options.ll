; ModuleID = '/home/carl/AnghaBench/linux/fs/befs/extr_linuxvfs.c_befs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/befs/extr_linuxvfs.c_befs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.befs_sb_info = type { %struct.befs_mount_options }
%struct.befs_mount_options = type { i64, i64, i32, i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c",charset=%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c",debug\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @befs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.befs_sb_info*, align 8
  %6 = alloca %struct.befs_mount_options*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.befs_sb_info* @BEFS_SB(i32 %9)
  store %struct.befs_sb_info* %10, %struct.befs_sb_info** %5, align 8
  %11 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %12 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %11, i32 0, i32 0
  store %struct.befs_mount_options* %12, %struct.befs_mount_options** %6, align 8
  %13 = load %struct.befs_mount_options*, %struct.befs_mount_options** %6, align 8
  %14 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %17 = call i32 @uid_eq(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.befs_mount_options*, %struct.befs_mount_options** %6, align 8
  %22 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @from_kuid_munged(i32* @init_user_ns, i32 %23)
  %25 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.befs_mount_options*, %struct.befs_mount_options** %6, align 8
  %28 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %31 = call i32 @gid_eq(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.befs_mount_options*, %struct.befs_mount_options** %6, align 8
  %36 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @from_kgid_munged(i32* @init_user_ns, i32 %37)
  %39 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.befs_mount_options*, %struct.befs_mount_options** %6, align 8
  %42 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.befs_mount_options*, %struct.befs_mount_options** %6, align 8
  %48 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.befs_mount_options*, %struct.befs_mount_options** %6, align 8
  %53 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %58 = call i32 @seq_puts(%struct.seq_file* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51
  ret i32 0
}

declare dso_local %struct.befs_sb_info* @BEFS_SB(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i64 @from_kgid_munged(i32*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
