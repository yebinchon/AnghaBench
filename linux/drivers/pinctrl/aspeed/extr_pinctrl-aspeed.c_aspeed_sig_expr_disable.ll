; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_sig_expr_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_sig_expr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pinmux_data = type { i32 }
%struct.aspeed_sig_expr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*)* @aspeed_sig_expr_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_sig_expr_disable(%struct.aspeed_pinmux_data* %0, %struct.aspeed_sig_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aspeed_pinmux_data*, align 8
  %5 = alloca %struct.aspeed_sig_expr*, align 8
  %6 = alloca i32, align 4
  store %struct.aspeed_pinmux_data* %0, %struct.aspeed_pinmux_data** %4, align 8
  store %struct.aspeed_sig_expr* %1, %struct.aspeed_sig_expr** %5, align 8
  %7 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %8 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %5, align 8
  %9 = call i32 @aspeed_sig_expr_eval(%struct.aspeed_pinmux_data* %7, %struct.aspeed_sig_expr* %8, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %19 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %5, align 8
  %20 = call i32 @aspeed_sig_expr_set(%struct.aspeed_pinmux_data* %18, %struct.aspeed_sig_expr* %19, i32 0)
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %17, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @aspeed_sig_expr_eval(%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32) #1

declare dso_local i32 @aspeed_sig_expr_set(%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
