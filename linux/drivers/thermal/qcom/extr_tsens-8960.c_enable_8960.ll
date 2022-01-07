; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_enable_8960.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_enable_8960.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, i32 }

@CNTL_ADDR = common dso_local global i32 0, align 4
@SENSOR0_SHIFT = common dso_local global i64 0, align 8
@SW_RST = common dso_local global i32 0, align 4
@SLP_CLK_ENA = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@SLP_CLK_ENA_8660 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsens_priv*, i32)* @enable_8960 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_8960(%struct.tsens_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tsens_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tsens_priv* %0, %struct.tsens_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tsens_priv*, %struct.tsens_priv** %4, align 8
  %10 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CNTL_ADDR, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @SENSOR0_SHIFT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @BIT(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.tsens_priv*, %struct.tsens_priv** %4, align 8
  %25 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CNTL_ADDR, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SW_RST, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @regmap_write(i32 %26, i32 %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %69

36:                                               ; preds = %18
  %37 = load %struct.tsens_priv*, %struct.tsens_priv** %4, align 8
  %38 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SLP_CLK_ENA, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %57

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SLP_CLK_ENA_8660, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @EN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %49, %41
  %58 = load %struct.tsens_priv*, %struct.tsens_priv** %4, align 8
  %59 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CNTL_ADDR, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @regmap_write(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %66, %34, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
