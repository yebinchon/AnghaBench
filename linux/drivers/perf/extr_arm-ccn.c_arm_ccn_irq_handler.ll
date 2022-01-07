; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_ccn = type { i64, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CCN_MN_ERR_SIG_VAL_63_0 = common dso_local global i64 0, align 8
@CCN_MN_ERR_SIG_VAL_63_0__DT = common dso_local global i32 0, align 4
@CCN_MN_ERRINT_STATUS__INTREQ__DESSERT = common dso_local global i32 0, align 4
@CCN_MN_ERRINT_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arm_ccn_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_ccn_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arm_ccn*, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.arm_ccn*
  store %struct.arm_ccn* %12, %struct.arm_ccn** %6, align 8
  %13 = load %struct.arm_ccn*, %struct.arm_ccn** %6, align 8
  %14 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CCN_MN_ERR_SIG_VAL_63_0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  store i32 %18, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CCN_MN_ERR_SIG_VAL_63_0__DT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* @CCN_MN_ERR_SIG_VAL_63_0__DT, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.arm_ccn*, %struct.arm_ccn** %6, align 8
  %30 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %29, i32 0, i32 1
  %31 = call i32 @arm_ccn_pmu_overflow_handler(i32* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %2
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load %struct.arm_ccn*, %struct.arm_ccn** %6, align 8
  %40 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CCN_MN_ERR_SIG_VAL_63_0, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = call i32 @readl(i64 %47)
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %38
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %33

61:                                               ; preds = %33
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.arm_ccn*, %struct.arm_ccn** %6, align 8
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %67 = call i32 @arm_ccn_error_handler(%struct.arm_ccn* %65, i32* %66)
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @IRQ_NONE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i32, i32* @CCN_MN_ERRINT_STATUS__INTREQ__DESSERT, align 4
  %76 = load %struct.arm_ccn*, %struct.arm_ccn** %6, align 8
  %77 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CCN_MN_ERRINT_STATUS, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  br label %82

82:                                               ; preds = %74, %70
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @arm_ccn_pmu_overflow_handler(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @arm_ccn_error_handler(%struct.arm_ccn*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
