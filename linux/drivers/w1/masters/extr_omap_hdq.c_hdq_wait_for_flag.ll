; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_hdq_wait_for_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_hdq_wait_for_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@OMAP_HDQ_TIMEOUT = common dso_local global i64 0, align 8
@OMAP_HDQ_FLAG_CLEAR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@OMAP_HDQ_FLAG_SET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*, i32, i64, i64, i64*)* @hdq_wait_for_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdq_wait_for_flag(%struct.hdq_data* %0, i32 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdq_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.hdq_data* %0, %struct.hdq_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* @OMAP_HDQ_TIMEOUT, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @OMAP_HDQ_FLAG_CLEAR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %36, %20
  %22 = load %struct.hdq_data*, %struct.hdq_data** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @hdq_reg_in(%struct.hdq_data* %22, i32 %23)
  %25 = load i64*, i64** %11, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = and i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @time_before(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %21
  %35 = phi i1 [ false, %21 ], [ %33, %29 ]
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %21

38:                                               ; preds = %34
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %44, %38
  br label %84

48:                                               ; preds = %5
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @OMAP_HDQ_FLAG_SET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %68, %52
  %54 = load %struct.hdq_data*, %struct.hdq_data** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @hdq_reg_in(%struct.hdq_data* %54, i32 %55)
  %57 = load i64*, i64** %11, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = and i64 %56, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i64 @time_before(i64 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %61, %53
  %67 = phi i1 [ false, %53 ], [ %65, %61 ]
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %53

70:                                               ; preds = %66
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @ETIMEDOUT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %70
  br label %83

80:                                               ; preds = %48
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %86

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %47
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i64 @hdq_reg_in(%struct.hdq_data*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
