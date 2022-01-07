; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/clocking-wizard/extr_clk-xlnx-clock-wizard.c_clk_wzrd_clk_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/clocking-wizard/extr_clk-xlnx-clock-wizard.c_clk_wzrd_clk_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.clk_notifier_data = type { i64, i64 }
%struct.clk_wzrd = type { i64, i32, i64, i64 }

@NOTIFY_OK = common dso_local global i32 0, align 4
@clk_wzrd_max_freq = common dso_local global i64* null, align 8
@WZRD_ACLK_MAX_FREQ = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @clk_wzrd_clk_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_wzrd_clk_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.clk_notifier_data*, align 8
  %10 = alloca %struct.clk_wzrd*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.clk_notifier_data*
  store %struct.clk_notifier_data* %12, %struct.clk_notifier_data** %9, align 8
  %13 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %14 = call %struct.clk_wzrd* @to_clk_wzrd(%struct.notifier_block* %13)
  store %struct.clk_wzrd* %14, %struct.clk_wzrd** %10, align 8
  %15 = load %struct.clk_wzrd*, %struct.clk_wzrd** %10, align 8
  %16 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %20, i32* %4, align 4
  br label %66

21:                                               ; preds = %3
  %22 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %9, align 8
  %23 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.clk_wzrd*, %struct.clk_wzrd** %10, align 8
  %26 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i64*, i64** @clk_wzrd_max_freq, align 8
  %31 = load %struct.clk_wzrd*, %struct.clk_wzrd** %10, align 8
  %32 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %30, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  br label %51

38:                                               ; preds = %21
  %39 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %9, align 8
  %40 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.clk_wzrd*, %struct.clk_wzrd** %10, align 8
  %43 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i64, i64* @WZRD_ACLK_MAX_FREQ, align 8
  store i64 %47, i64* %8, align 8
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %49, i32* %4, align 4
  br label %66

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i64, i64* %6, align 8
  switch i64 %52, label %64 [
    i64 128, label %53
    i64 129, label %63
    i64 130, label %63
  ]

53:                                               ; preds = %51
  %54 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %9, align 8
  %55 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %51, %51
  br label %64

64:                                               ; preds = %51, %63
  %65 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %61, %59, %48, %19
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.clk_wzrd* @to_clk_wzrd(%struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
