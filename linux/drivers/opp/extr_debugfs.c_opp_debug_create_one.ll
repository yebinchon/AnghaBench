; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_debugfs.c_opp_debug_create_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_debugfs.c_opp_debug_create_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pm_opp = type { i64, i64, %struct.dentry*, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.opp_table = type { %struct.dentry* }

@.str = private unnamed_addr constant [8 x i8] c"opp:%lu\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"turbo\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"performance_state\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"rate_hz\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"clock_latency_ns\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opp_debug_create_one(%struct.dev_pm_opp* %0, %struct.opp_table* %1) #0 {
  %3 = alloca %struct.dev_pm_opp*, align 8
  %4 = alloca %struct.opp_table*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [25 x i8], align 16
  store %struct.dev_pm_opp* %0, %struct.dev_pm_opp** %3, align 8
  store %struct.opp_table* %1, %struct.opp_table** %4, align 8
  %9 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %10 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %9, i32 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %5, align 8
  %12 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %13 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @likely(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %19 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %23 = call i64 @_get_opp_count(%struct.opp_table* %22)
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @snprintf(i8* %25, i32 25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 0
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = call %struct.dentry* @debugfs_create_dir(i8* %28, %struct.dentry* %29)
  store %struct.dentry* %30, %struct.dentry** %6, align 8
  %31 = load i32, i32* @S_IRUGO, align 4
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %34 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %33, i32 0, i32 7
  %35 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %31, %struct.dentry* %32, i32* %34)
  %36 = load i32, i32* @S_IRUGO, align 4
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %39 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %38, i32 0, i32 6
  %40 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %36, %struct.dentry* %37, i32* %39)
  %41 = load i32, i32* @S_IRUGO, align 4
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %44 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %43, i32 0, i32 5
  %45 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %41, %struct.dentry* %42, i32* %44)
  %46 = load i32, i32* @S_IRUGO, align 4
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %49 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %48, i32 0, i32 4
  %50 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %46, %struct.dentry* %47, i32* %49)
  %51 = load i32, i32* @S_IRUGO, align 4
  %52 = load %struct.dentry*, %struct.dentry** %6, align 8
  %53 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %54 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %53, i32 0, i32 3
  %55 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %51, %struct.dentry* %52, i32* %54)
  %56 = load i32, i32* @S_IRUGO, align 4
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %59 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %58, i32 0, i32 0
  %60 = call i32 @debugfs_create_ulong(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %56, %struct.dentry* %57, i64* %59)
  %61 = load i32, i32* @S_IRUGO, align 4
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %64 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %63, i32 0, i32 1
  %65 = call i32 @debugfs_create_ulong(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %61, %struct.dentry* %62, i64* %64)
  %66 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %67 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = call i32 @opp_debug_create_supplies(%struct.dev_pm_opp* %66, %struct.opp_table* %67, %struct.dentry* %68)
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %72 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %71, i32 0, i32 2
  store %struct.dentry* %70, %struct.dentry** %72, align 8
  ret void
}

declare dso_local i64 @likely(i64) #1

declare dso_local i64 @_get_opp_count(%struct.opp_table*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_ulong(i8*, i32, %struct.dentry*, i64*) #1

declare dso_local i32 @opp_debug_create_supplies(%struct.dev_pm_opp*, %struct.opp_table*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
