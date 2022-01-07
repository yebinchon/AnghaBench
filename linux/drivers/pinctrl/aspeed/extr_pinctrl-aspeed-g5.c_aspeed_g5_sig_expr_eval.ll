; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g5.c_aspeed_g5_sig_expr_eval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g5.c_aspeed_g5_sig_expr_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pinmux_data = type { i32*, i32 }
%struct.aspeed_sig_expr = type { i32, %struct.aspeed_sig_desc* }
%struct.aspeed_sig_desc = type { i64 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to acquire regmap for IP block %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)* @aspeed_g5_sig_expr_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_g5_sig_expr_eval(%struct.aspeed_pinmux_data* %0, %struct.aspeed_sig_expr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aspeed_pinmux_data*, align 8
  %6 = alloca %struct.aspeed_sig_expr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aspeed_sig_desc*, align 8
  %11 = alloca %struct.regmap*, align 8
  store %struct.aspeed_pinmux_data* %0, %struct.aspeed_pinmux_data** %5, align 8
  store %struct.aspeed_sig_expr* %1, %struct.aspeed_sig_expr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %60, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %15 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %12
  %19 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %20 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %19, i32 0, i32 1
  %21 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %21, i64 %23
  store %struct.aspeed_sig_desc* %24, %struct.aspeed_sig_desc** %10, align 8
  %25 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %26 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %27 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.regmap* @aspeed_g5_acquire_regmap(%struct.aspeed_pinmux_data* %25, i64 %28)
  store %struct.regmap* %29, %struct.regmap** %11, align 8
  %30 = load %struct.regmap*, %struct.regmap** %11, align 8
  %31 = call i64 @IS_ERR(%struct.regmap* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %18
  %34 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %35 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %38 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load %struct.regmap*, %struct.regmap** %11, align 8
  %42 = call i32 @PTR_ERR(%struct.regmap* %41)
  store i32 %42, i32* %4, align 4
  br label %64

43:                                               ; preds = %18
  %44 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %47 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %50 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @aspeed_sig_desc_eval(%struct.aspeed_sig_desc* %44, i32 %45, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %12

63:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %57, %33
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.regmap* @aspeed_g5_acquire_regmap(%struct.aspeed_pinmux_data*, i64) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @aspeed_sig_desc_eval(%struct.aspeed_sig_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
