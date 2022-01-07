; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinmux-aspeed.c_aspeed_sig_expr_eval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinmux-aspeed.c_aspeed_sig_expr_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pinmux_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.aspeed_sig_expr = type { i32, %struct.aspeed_sig_desc* }
%struct.aspeed_sig_desc = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aspeed_sig_expr_eval(%struct.aspeed_pinmux_data* %0, %struct.aspeed_sig_expr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aspeed_pinmux_data*, align 8
  %6 = alloca %struct.aspeed_sig_expr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aspeed_sig_desc*, align 8
  store %struct.aspeed_pinmux_data* %0, %struct.aspeed_pinmux_data** %5, align 8
  store %struct.aspeed_sig_expr* %1, %struct.aspeed_sig_expr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %12 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)**
  %16 = load i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)*, i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %20 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)**
  %24 = load i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)*, i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)** %23, align 8
  %25 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %26 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 %24(%struct.aspeed_pinmux_data* %25, %struct.aspeed_sig_expr* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %63

29:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %59, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %33 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %38 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %37, i32 0, i32 1
  %39 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %39, i64 %41
  store %struct.aspeed_sig_desc* %42, %struct.aspeed_sig_desc** %10, align 8
  %43 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %46 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %49 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @aspeed_sig_desc_eval(%struct.aspeed_sig_desc* %43, i32 %44, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %36
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %30

62:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %56, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @aspeed_sig_desc_eval(%struct.aspeed_sig_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
