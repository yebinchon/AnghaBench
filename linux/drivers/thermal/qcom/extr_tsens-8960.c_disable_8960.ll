; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_disable_8960.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_disable_8960.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, i32 }

@SENSOR0_SHIFT = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@CNTL_ADDR = common dso_local global i32 0, align 4
@SLP_CLK_ENA = common dso_local global i32 0, align 4
@SLP_CLK_ENA_8660 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsens_priv*)* @disable_8960 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_8960(%struct.tsens_priv* %0) #0 {
  %2 = alloca %struct.tsens_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tsens_priv* %0, %struct.tsens_priv** %2, align 8
  %6 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %7 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  %10 = call i32 @GENMASK(i32 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @SENSOR0_SHIFT, align 4
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @EN, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %18 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CNTL_ADDR, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %4)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %51

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %31 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @SLP_CLK_ENA, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %25
  %40 = load i32, i32* @SLP_CLK_ENA_8660, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.tsens_priv*, %struct.tsens_priv** %2, align 8
  %46 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CNTL_ADDR, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @regmap_write(i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %24
  ret void
}

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
