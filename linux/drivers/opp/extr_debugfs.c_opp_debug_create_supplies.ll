; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_debugfs.c_opp_debug_create_supplies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_debugfs.c_opp_debug_create_supplies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pm_opp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.opp_table = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"supply-%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"u_volt_target\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"u_volt_min\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"u_volt_max\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"u_amp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_pm_opp*, %struct.opp_table*, %struct.dentry*)* @opp_debug_create_supplies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opp_debug_create_supplies(%struct.dev_pm_opp* %0, %struct.opp_table* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.dev_pm_opp*, align 8
  %5 = alloca %struct.opp_table*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [15 x i8], align 1
  store %struct.dev_pm_opp* %0, %struct.dev_pm_opp** %4, align 8
  store %struct.opp_table* %1, %struct.opp_table** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %63, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.opp_table*, %struct.opp_table** %5, align 8
  %13 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %10
  %17 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @snprintf(i8* %17, i32 15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = call %struct.dentry* @debugfs_create_dir(i8* %20, %struct.dentry* %21)
  store %struct.dentry* %22, %struct.dentry** %7, align 8
  %23 = load i32, i32* @S_IRUGO, align 4
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %4, align 8
  %26 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = call i32 @debugfs_create_ulong(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %23, %struct.dentry* %24, i32* %31)
  %33 = load i32, i32* @S_IRUGO, align 4
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %4, align 8
  %36 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = call i32 @debugfs_create_ulong(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %33, %struct.dentry* %34, i32* %41)
  %43 = load i32, i32* @S_IRUGO, align 4
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %4, align 8
  %46 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i32 @debugfs_create_ulong(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %43, %struct.dentry* %44, i32* %51)
  %53 = load i32, i32* @S_IRUGO, align 4
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %4, align 8
  %56 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @debugfs_create_ulong(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %53, %struct.dentry* %54, i32* %61)
  br label %63

63:                                               ; preds = %16
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %10

66:                                               ; preds = %10
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_ulong(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
