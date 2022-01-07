; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpcv2.c_imx_pgc_get_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpcv2.c_imx_pgc_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_pgc_domain = type { i32, %struct.clk**, %struct.TYPE_2__* }
%struct.clk = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GPC_CLK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"more than %d clocks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_pgc_domain*)* @imx_pgc_get_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pgc_get_clocks(%struct.imx_pgc_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_pgc_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk*, align 8
  store %struct.imx_pgc_domain* %0, %struct.imx_pgc_domain** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %39, %1
  %8 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %3, align 8
  %9 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.clk* @of_clk_get(i32 %12, i32 %13)
  store %struct.clk* %14, %struct.clk** %6, align 8
  %15 = load %struct.clk*, %struct.clk** %6, align 8
  %16 = call i64 @IS_ERR(%struct.clk* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %42

19:                                               ; preds = %7
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @GPC_CLK_MAX, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %3, align 8
  %25 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* @GPC_CLK_MAX, align 4
  %28 = call i32 @dev_err(%struct.TYPE_2__* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %46

31:                                               ; preds = %19
  %32 = load %struct.clk*, %struct.clk** %6, align 8
  %33 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %3, align 8
  %34 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %33, i32 0, i32 1
  %35 = load %struct.clk**, %struct.clk*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.clk*, %struct.clk** %35, i64 %37
  store %struct.clk* %32, %struct.clk** %38, align 8
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %7

42:                                               ; preds = %18
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %3, align 8
  %45 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %2, align 4
  br label %62

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %3, align 8
  %53 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %52, i32 0, i32 1
  %54 = load %struct.clk**, %struct.clk*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.clk*, %struct.clk** %54, i64 %56
  %58 = load %struct.clk*, %struct.clk** %57, align 8
  %59 = call i32 @clk_put(%struct.clk* %58)
  br label %47

60:                                               ; preds = %47
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %42
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.clk* @of_clk_get(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
