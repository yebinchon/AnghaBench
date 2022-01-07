; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_clk_tbl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_clk_tbl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { i64*, i32, i32, i32 }

@MAX_CLK_PERF_LEVEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geni_se_clk_tbl_get(%struct.geni_se* %0, i64** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.geni_se*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.geni_se* %0, %struct.geni_se** %4, align 8
  store i64** %1, i64*** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %9 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %14 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64**, i64*** %5, align 8
  store i64* %15, i64** %16, align 8
  %17 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %18 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %22 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MAX_CLK_PERF_LEVEL, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64* @devm_kcalloc(i32 %23, i32 %24, i32 8, i32 %25)
  %27 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %28 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %27, i32 0, i32 0
  store i64* %26, i64** %28, align 8
  %29 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %30 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %84

36:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %70, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MAX_CLK_PERF_LEVEL, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %43 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i64 @clk_round_rate(i32 %44, i64 %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %53 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %51, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50, %41
  br label %73

62:                                               ; preds = %50
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %65 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 %63, i64* %69, align 8
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %37

73:                                               ; preds = %61, %37
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %76 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %78 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64**, i64*** %5, align 8
  store i64* %79, i64** %80, align 8
  %81 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %82 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %73, %33, %12
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
