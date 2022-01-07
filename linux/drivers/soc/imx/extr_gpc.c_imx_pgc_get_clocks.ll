; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpc.c_imx_pgc_get_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpc.c_imx_pgc_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.imx_pm_domain = type { i32, %struct.clk** }
%struct.clk = type { i32 }

@GPC_CLK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"more than %d clocks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.imx_pm_domain*)* @imx_pgc_get_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pgc_get_clocks(%struct.device* %0, %struct.imx_pm_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.imx_pm_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.imx_pm_domain* %1, %struct.imx_pm_domain** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.clk* @of_clk_get(i32 %12, i32 %13)
  store %struct.clk* %14, %struct.clk** %8, align 8
  %15 = load %struct.clk*, %struct.clk** %8, align 8
  %16 = call i64 @IS_ERR(%struct.clk* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %40

19:                                               ; preds = %9
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GPC_CLK_MAX, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GPC_CLK_MAX, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %44

29:                                               ; preds = %19
  %30 = load %struct.clk*, %struct.clk** %8, align 8
  %31 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %5, align 8
  %32 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %31, i32 0, i32 1
  %33 = load %struct.clk**, %struct.clk*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.clk*, %struct.clk** %33, i64 %35
  store %struct.clk* %30, %struct.clk** %36, align 8
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %9

40:                                               ; preds = %18
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %5, align 8
  %43 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %3, align 4
  br label %60

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %5, align 8
  %51 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %50, i32 0, i32 1
  %52 = load %struct.clk**, %struct.clk*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.clk*, %struct.clk** %52, i64 %54
  %56 = load %struct.clk*, %struct.clk** %55, align 8
  %57 = call i32 @clk_put(%struct.clk* %56)
  br label %45

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %40
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.clk* @of_clk_get(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
