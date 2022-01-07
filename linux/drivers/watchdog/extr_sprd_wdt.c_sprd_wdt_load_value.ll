; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_load_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_load_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_wdt = type { i64 }

@SPRD_WDT_CNT_STEP = common dso_local global i64 0, align 8
@SPRD_WDT_CNT_HIGH_SHIFT = common dso_local global i64 0, align 8
@SPRD_WDT_LOW_VALUE_MASK = common dso_local global i64 0, align 8
@SPRD_WDT_LOAD_HIGH = common dso_local global i64 0, align 8
@SPRD_WDT_LOAD_LOW = common dso_local global i64 0, align 8
@SPRD_WDT_IRQ_LOAD_HIGH = common dso_local global i64 0, align 8
@SPRD_WDT_IRQ_LOAD_LOW = common dso_local global i64 0, align 8
@SPRD_WDT_INT_RAW = common dso_local global i64 0, align 8
@SPRD_WDT_LD_BUSY_BIT = common dso_local global i64 0, align 8
@SPRD_WDT_LOAD_TIMEOUT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_wdt*, i64, i64)* @sprd_wdt_load_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_wdt_load_value(%struct.sprd_wdt* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_wdt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sprd_wdt* %0, %struct.sprd_wdt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @SPRD_WDT_CNT_STEP, align 8
  %14 = mul nsw i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @SPRD_WDT_CNT_STEP, align 8
  %17 = mul nsw i64 %15, %16
  store i64 %17, i64* %11, align 8
  %18 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %19 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @sprd_wdt_unlock(i64 %20)
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @SPRD_WDT_CNT_HIGH_SHIFT, align 8
  %24 = ashr i64 %22, %23
  %25 = load i64, i64* @SPRD_WDT_LOW_VALUE_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %28 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SPRD_WDT_LOAD_HIGH, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i64 %26, i64 %31)
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @SPRD_WDT_LOW_VALUE_MASK, align 8
  %35 = and i64 %33, %34
  %36 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %37 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPRD_WDT_LOAD_LOW, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel_relaxed(i64 %35, i64 %40)
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @SPRD_WDT_CNT_HIGH_SHIFT, align 8
  %44 = ashr i64 %42, %43
  %45 = load i64, i64* @SPRD_WDT_LOW_VALUE_MASK, align 8
  %46 = and i64 %44, %45
  %47 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %48 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SPRD_WDT_IRQ_LOAD_HIGH, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel_relaxed(i64 %46, i64 %51)
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @SPRD_WDT_LOW_VALUE_MASK, align 8
  %55 = and i64 %53, %54
  %56 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %57 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SPRD_WDT_IRQ_LOAD_LOW, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel_relaxed(i64 %55, i64 %60)
  %62 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %63 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @sprd_wdt_lock(i64 %64)
  br label %66

66:                                               ; preds = %80, %3
  %67 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %68 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SPRD_WDT_INT_RAW, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i64 @readl_relaxed(i64 %71)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @SPRD_WDT_LD_BUSY_BIT, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  br label %85

78:                                               ; preds = %66
  %79 = call i32 (...) @cpu_relax()
  br label %80

80:                                               ; preds = %78
  %81 = load i64, i64* %9, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* @SPRD_WDT_LOAD_TIMEOUT, align 8
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %66, label %85

85:                                               ; preds = %80, %77
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @SPRD_WDT_LOAD_TIMEOUT, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @EBUSY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @sprd_wdt_unlock(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @sprd_wdt_lock(i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
