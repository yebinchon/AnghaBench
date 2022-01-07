; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_disable_sig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_disable_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pinmux_data = type { i32 }
%struct.aspeed_sig_expr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr**)* @aspeed_disable_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_disable_sig(%struct.aspeed_pinmux_data* %0, %struct.aspeed_sig_expr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aspeed_pinmux_data*, align 8
  %5 = alloca %struct.aspeed_sig_expr**, align 8
  %6 = alloca i32, align 4
  store %struct.aspeed_pinmux_data* %0, %struct.aspeed_pinmux_data** %4, align 8
  store %struct.aspeed_sig_expr** %1, %struct.aspeed_sig_expr*** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %5, align 8
  %8 = icmp ne %struct.aspeed_sig_expr** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %21, %10
  %12 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %5, align 8
  %13 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %12, align 8
  %14 = icmp ne %struct.aspeed_sig_expr* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %23 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %5, align 8
  %24 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %23, align 8
  %25 = call i32 @aspeed_sig_expr_disable(%struct.aspeed_pinmux_data* %22, %struct.aspeed_sig_expr* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %5, align 8
  %27 = getelementptr inbounds %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %26, i32 1
  store %struct.aspeed_sig_expr** %27, %struct.aspeed_sig_expr*** %5, align 8
  br label %11

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @aspeed_sig_expr_disable(%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
