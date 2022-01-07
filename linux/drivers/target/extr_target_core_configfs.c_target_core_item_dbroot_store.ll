; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_core_item_dbroot_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_core_item_dbroot_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { i32 }

@g_tf_lock = common dso_local global i32 0, align 4
@g_tf_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"db_root: cannot be changed: target drivers registered\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DB_ROOT_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"db_root: count %d exceeds DB_ROOT_LEN-1: %u\0A\00", align 1
@db_root_stage = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"db_root: cannot open: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"db_root: not a directory: %s\0A\00", align 1
@db_root = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Target_Core_ConfigFS: db_root set to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @target_core_item_dbroot_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_core_item_dbroot_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call i32 @mutex_lock(i32* @g_tf_lock)
  %11 = call i32 @list_empty(i32* @g_tf_list)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = call i32 @mutex_unlock(i32* @g_tf_lock)
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %98

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @DB_ROOT_LEN, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = call i32 @mutex_unlock(i32* @g_tf_lock)
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @DB_ROOT_LEN, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %98

33:                                               ; preds = %18
  %34 = load i8*, i8** @db_root_stage, align 8
  %35 = load i32, i32* @DB_ROOT_LEN, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = call i32 @mutex_unlock(i32* @g_tf_lock)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %98

44:                                               ; preds = %33
  %45 = load i8*, i8** @db_root_stage, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i8*, i8** @db_root_stage, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %53, %44
  %60 = load i8*, i8** @db_root_stage, align 8
  %61 = load i32, i32* @O_RDONLY, align 4
  %62 = call %struct.file* @filp_open(i8* %60, i32 %61, i32 0)
  store %struct.file* %62, %struct.file** %9, align 8
  %63 = load %struct.file*, %struct.file** %9, align 8
  %64 = call i64 @IS_ERR(%struct.file* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = call i32 @mutex_unlock(i32* @g_tf_lock)
  %68 = load i8*, i8** @db_root_stage, align 8
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %98

72:                                               ; preds = %59
  %73 = load %struct.file*, %struct.file** %9, align 8
  %74 = call %struct.TYPE_2__* @file_inode(%struct.file* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @S_ISDIR(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %72
  %80 = load %struct.file*, %struct.file** %9, align 8
  %81 = call i32 @filp_close(%struct.file* %80, i32* null)
  %82 = call i32 @mutex_unlock(i32* @g_tf_lock)
  %83 = load i8*, i8** @db_root_stage, align 8
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %98

87:                                               ; preds = %72
  %88 = load %struct.file*, %struct.file** %9, align 8
  %89 = call i32 @filp_close(%struct.file* %88, i32* null)
  %90 = load i32, i32* @db_root, align 4
  %91 = load i8*, i8** @db_root_stage, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @strncpy(i32 %90, i8* %91, i32 %92)
  %94 = call i32 @mutex_unlock(i32* @g_tf_lock)
  %95 = load i32, i32* @db_root, align 4
  %96 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %87, %79, %66, %40, %24, %13
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.file* @filp_open(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local i32 @filp_close(%struct.file*, i32*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
