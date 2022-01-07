; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_slg51000-regulator.c_slg51000_clear_fault_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_slg51000-regulator.c_slg51000_clear_fault_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slg51000 = type { i32, i32 }

@SLG51000_SYSCTL_FAULT_LOG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read Fault log register\0A\00", align 1
@SLG51000_FLT_OVER_TEMP_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Fault log: FLT_OVER_TEMP\0A\00", align 1
@SLG51000_FLT_POWER_SEQ_CRASH_REQ_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Fault log: FLT_POWER_SEQ_CRASH_REQ\0A\00", align 1
@SLG51000_FLT_RST_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Fault log: FLT_RST\0A\00", align 1
@SLG51000_FLT_POR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Fault log: FLT_POR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slg51000*)* @slg51000_clear_fault_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slg51000_clear_fault_log(%struct.slg51000* %0) #0 {
  %2 = alloca %struct.slg51000*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.slg51000* %0, %struct.slg51000** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.slg51000*, %struct.slg51000** %2, align 8
  %6 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SLG51000_SYSCTL_FAULT_LOG1, align 4
  %9 = call i32 @regmap_read(i32 %7, i32 %8, i32* %3)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.slg51000*, %struct.slg51000** %2, align 8
  %14 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %57

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SLG51000_FLT_OVER_TEMP_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.slg51000*, %struct.slg51000** %2, align 8
  %24 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SLG51000_FLT_POWER_SEQ_CRASH_REQ_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.slg51000*, %struct.slg51000** %2, align 8
  %34 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SLG51000_FLT_RST_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.slg51000*, %struct.slg51000** %2, align 8
  %44 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SLG51000_FLT_POR_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.slg51000*, %struct.slg51000** %2, align 8
  %54 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %12, %52, %47
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
