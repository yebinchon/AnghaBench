; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_debugfs.c_rproc_create_debug_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_debugfs.c_rproc_create_debug_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.device }
%struct.device = type { i32 }

@rproc_dbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@rproc_name_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@rproc_recovery_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"crash\00", align 1
@rproc_crash_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"resource_table\00", align 1
@rproc_rsc_table_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"carveout_memories\00", align 1
@rproc_carveouts_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rproc_create_debug_dir(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %4 = load %struct.rproc*, %struct.rproc** %2, align 8
  %5 = getelementptr inbounds %struct.rproc, %struct.rproc* %4, i32 0, i32 1
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load i32, i32* @rproc_dbg, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %47

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @dev_name(%struct.device* %10)
  %12 = load i32, i32* @rproc_dbg, align 4
  %13 = call i32 @debugfs_create_dir(i32 %11, i32 %12)
  %14 = load %struct.rproc*, %struct.rproc** %2, align 8
  %15 = getelementptr inbounds %struct.rproc, %struct.rproc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.rproc*, %struct.rproc** %2, align 8
  %17 = getelementptr inbounds %struct.rproc, %struct.rproc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  br label %47

21:                                               ; preds = %9
  %22 = load %struct.rproc*, %struct.rproc** %2, align 8
  %23 = getelementptr inbounds %struct.rproc, %struct.rproc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rproc*, %struct.rproc** %2, align 8
  %26 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 256, i32 %24, %struct.rproc* %25, i32* @rproc_name_ops)
  %27 = load %struct.rproc*, %struct.rproc** %2, align 8
  %28 = getelementptr inbounds %struct.rproc, %struct.rproc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rproc*, %struct.rproc** %2, align 8
  %31 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 256, i32 %29, %struct.rproc* %30, i32* @rproc_recovery_ops)
  %32 = load %struct.rproc*, %struct.rproc** %2, align 8
  %33 = getelementptr inbounds %struct.rproc, %struct.rproc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rproc*, %struct.rproc** %2, align 8
  %36 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 128, i32 %34, %struct.rproc* %35, i32* @rproc_crash_ops)
  %37 = load %struct.rproc*, %struct.rproc** %2, align 8
  %38 = getelementptr inbounds %struct.rproc, %struct.rproc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rproc*, %struct.rproc** %2, align 8
  %41 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 256, i32 %39, %struct.rproc* %40, i32* @rproc_rsc_table_ops)
  %42 = load %struct.rproc*, %struct.rproc** %2, align 8
  %43 = getelementptr inbounds %struct.rproc, %struct.rproc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rproc*, %struct.rproc** %2, align 8
  %46 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 256, i32 %44, %struct.rproc* %45, i32* @rproc_carveouts_ops)
  br label %47

47:                                               ; preds = %21, %20, %8
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.rproc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
