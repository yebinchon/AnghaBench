; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_show_cache_flavor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_show_cache_flavor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cifs_sb_info = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c",cache=\00", align 1
@CIFS_MOUNT_STRICT_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@CIFS_MOUNT_DIRECT_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@CIFS_MOUNT_RW_CACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"singleclient\00", align 1
@CIFS_MOUNT_RO_CACHE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"loose\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.cifs_sb_info*)* @cifs_show_cache_flavor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_show_cache_flavor(%struct.seq_file* %0, %struct.cifs_sb_info* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.cifs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.cifs_sb_info* %1, %struct.cifs_sb_info** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = call i32 @seq_puts(%struct.seq_file* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %8 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CIFS_MOUNT_STRICT_IO, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call i32 @seq_puts(%struct.seq_file* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %18 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CIFS_MOUNT_DIRECT_IO, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 @seq_puts(%struct.seq_file* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %51

26:                                               ; preds = %16
  %27 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %28 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CIFS_MOUNT_RW_CACHE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = call i32 @seq_puts(%struct.seq_file* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %50

36:                                               ; preds = %26
  %37 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %38 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CIFS_MOUNT_RO_CACHE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 @seq_puts(%struct.seq_file* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %49

46:                                               ; preds = %36
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = call i32 @seq_puts(%struct.seq_file* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50, %23
  br label %52

52:                                               ; preds = %51, %13
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
