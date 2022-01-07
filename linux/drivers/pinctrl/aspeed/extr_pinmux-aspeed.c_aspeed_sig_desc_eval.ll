; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinmux-aspeed.c_aspeed_sig_desc_eval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinmux-aspeed.c_aspeed_sig_desc_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_sig_desc = type { i32, i32, i32, i32 }
%struct.regmap = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aspeed_sig_desc_eval(%struct.aspeed_sig_desc* %0, i32 %1, %struct.regmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aspeed_sig_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.aspeed_sig_desc* %0, %struct.aspeed_sig_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regmap* %2, %struct.regmap** %7, align 8
  %11 = load %struct.regmap*, %struct.regmap** %7, align 8
  %12 = icmp ne %struct.regmap* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load %struct.regmap*, %struct.regmap** %7, align 8
  %18 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %5, align 8
  %19 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regmap_read(%struct.regmap* %17, i32 %20, i32* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %56

26:                                               ; preds = %16
  %27 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @aspeed_sig_desc_print_val(%struct.aspeed_sig_desc* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %5, align 8
  %35 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %5, align 8
  %39 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %36, %33 ], [ %40, %37 ]
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %5, align 8
  %45 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  %48 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %5, align 8
  %49 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__ffs(i32 %50)
  %52 = lshr i32 %47, %51
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %41, %24, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @aspeed_sig_desc_print_val(%struct.aspeed_sig_desc*, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
