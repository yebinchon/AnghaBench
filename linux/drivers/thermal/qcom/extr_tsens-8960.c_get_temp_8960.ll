; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_get_temp_8960.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_get_temp_8960.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, %struct.tsens_sensor* }
%struct.tsens_sensor = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@TIMEOUT_US = common dso_local global i32 0, align 4
@INT_STATUS_ADDR = common dso_local global i32 0, align 4
@TRDY_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsens_priv*, i32, i32*)* @get_temp_8960 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_temp_8960(%struct.tsens_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsens_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tsens_sensor*, align 8
  %12 = alloca i64, align 8
  store %struct.tsens_priv* %0, %struct.tsens_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %14 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %13, i32 0, i32 1
  %15 = load %struct.tsens_sensor*, %struct.tsens_sensor** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %15, i64 %17
  store %struct.tsens_sensor* %18, %struct.tsens_sensor** %11, align 8
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* @TIMEOUT_US, align 4
  %21 = call i64 @usecs_to_jiffies(i32 %20)
  %22 = add i64 %19, %21
  store i64 %22, i64* %12, align 8
  br label %23

23:                                               ; preds = %56, %3
  %24 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %25 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @INT_STATUS_ADDR, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %10)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %64

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @TRDY_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %56

39:                                               ; preds = %33
  %40 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %41 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tsens_sensor*, %struct.tsens_sensor** %11, align 8
  %44 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regmap_read(i32 %42, i32 %45, i32* %9)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %64

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.tsens_sensor*, %struct.tsens_sensor** %11, align 8
  %54 = call i32 @code_to_mdegC(i32 %52, %struct.tsens_sensor* %53)
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %64

56:                                               ; preds = %38
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @time_before(i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %23, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %51, %49, %31
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @code_to_mdegC(i32, %struct.tsens_sensor*) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
