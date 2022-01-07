; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_init_dbroot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_init_dbroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.TYPE_2__ = type { i32 }

@db_root_stage = common dso_local global i32 0, align 4
@DB_ROOT_LEN = common dso_local global i32 0, align 4
@DB_ROOT_PREFERRED = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"db_root: cannot open: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"db_root: not a valid directory: %s\0A\00", align 1
@db_root = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Target_Core_ConfigFS: db_root set to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @target_init_dbroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_init_dbroot() #0 {
  %1 = alloca %struct.file*, align 8
  %2 = load i32, i32* @db_root_stage, align 4
  %3 = load i32, i32* @DB_ROOT_LEN, align 4
  %4 = load i8*, i8** @DB_ROOT_PREFERRED, align 8
  %5 = call i32 @snprintf(i32 %2, i32 %3, i8* %4)
  %6 = load i32, i32* @db_root_stage, align 4
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = call %struct.file* @filp_open(i32 %6, i32 %7, i32 0)
  store %struct.file* %8, %struct.file** %1, align 8
  %9 = load %struct.file*, %struct.file** %1, align 8
  %10 = call i64 @IS_ERR(%struct.file* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @db_root_stage, align 4
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %36

15:                                               ; preds = %0
  %16 = load %struct.file*, %struct.file** %1, align 8
  %17 = call %struct.TYPE_2__* @file_inode(%struct.file* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @S_ISDIR(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load %struct.file*, %struct.file** %1, align 8
  %24 = call i32 @filp_close(%struct.file* %23, i32* null)
  %25 = load i32, i32* @db_root_stage, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %36

27:                                               ; preds = %15
  %28 = load %struct.file*, %struct.file** %1, align 8
  %29 = call i32 @filp_close(%struct.file* %28, i32* null)
  %30 = load i32, i32* @db_root, align 4
  %31 = load i32, i32* @db_root_stage, align 4
  %32 = load i32, i32* @DB_ROOT_LEN, align 4
  %33 = call i32 @strncpy(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @db_root, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %27, %22, %12
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local %struct.file* @filp_open(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local i32 @filp_close(%struct.file*, i32*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
