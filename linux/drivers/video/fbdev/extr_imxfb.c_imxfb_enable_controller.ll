; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_enable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_enable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxfb_info = type { i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Enabling LCD controller\0A\00", align 1
@LCDC_SSA = common dso_local global i64 0, align 8
@LCDC_POS = common dso_local global i64 0, align 8
@LCDC_CPOS = common dso_local global i64 0, align 8
@CPOS_CC0 = common dso_local global i32 0, align 4
@CPOS_CC1 = common dso_local global i32 0, align 4
@RMCR_LCDC_EN_MX1 = common dso_local global i32 0, align 4
@LCDC_RMCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxfb_info*)* @imxfb_enable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxfb_enable_controller(%struct.imxfb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imxfb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.imxfb_info* %0, %struct.imxfb_info** %3, align 8
  %5 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %6 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

10:                                               ; preds = %1
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %13 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %16 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LCDC_SSA, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %22 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LCDC_POS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 0, i64 %25)
  %27 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %28 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LCDC_CPOS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  %33 = load i32, i32* @CPOS_CC0, align 4
  %34 = load i32, i32* @CPOS_CC1, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  %38 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %39 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LCDC_CPOS, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* @RMCR_LCDC_EN_MX1, align 4
  %45 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %46 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LCDC_RMCR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %52 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @clk_prepare_enable(i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %10
  br label %87

58:                                               ; preds = %10
  %59 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %60 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clk_prepare_enable(i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %82

66:                                               ; preds = %58
  %67 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %68 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @clk_prepare_enable(i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %77

74:                                               ; preds = %66
  %75 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %76 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  store i32 0, i32* %2, align 4
  br label %95

77:                                               ; preds = %73
  %78 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %79 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @clk_disable_unprepare(i32 %80)
  br label %82

82:                                               ; preds = %77, %65
  %83 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %84 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @clk_disable_unprepare(i32 %85)
  br label %87

87:                                               ; preds = %82, %57
  %88 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %89 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @LCDC_RMCR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 0, i64 %92)
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %87, %74, %9
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
