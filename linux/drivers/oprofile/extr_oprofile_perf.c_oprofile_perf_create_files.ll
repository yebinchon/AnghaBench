; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofile_perf.c_oprofile_perf_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofile_perf.c_oprofile_perf_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@num_counters = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@counter_config = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"unit_mask\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @oprofile_perf_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oprofile_perf_create_files(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [4 x i8], align 1
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %59, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @num_counters, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %62

10:                                               ; preds = %6
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @snprintf(i8* %11, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.dentry*, %struct.dentry** %2, align 8
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %16 = call %struct.dentry* @oprofilefs_mkdir(%struct.dentry* %14, i8* %15)
  store %struct.dentry* %16, %struct.dentry** %4, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  %23 = call i32 @oprofilefs_create_ulong(%struct.dentry* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = call i32 @oprofilefs_create_ulong(%struct.dentry* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %29)
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = call i32 @oprofilefs_create_ulong(%struct.dentry* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %36)
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = call i32 @oprofilefs_create_ulong(%struct.dentry* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %43)
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i32 @oprofilefs_create_ulong(%struct.dentry* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %50)
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @oprofilefs_create_ulong(%struct.dentry* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %57)
  br label %59

59:                                               ; preds = %10
  %60 = load i32, i32* %3, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %6

62:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @oprofilefs_mkdir(%struct.dentry*, i8*) #1

declare dso_local i32 @oprofilefs_create_ulong(%struct.dentry*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
