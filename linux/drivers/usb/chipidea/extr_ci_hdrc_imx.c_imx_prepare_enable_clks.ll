; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_imx_prepare_enable_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_imx_prepare_enable_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ci_hdrc_imx_data = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to prepare/enable ipg clk, err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to prepare/enable ahb clk, err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to prepare/enable per clk, err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to prepare/enable clk, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @imx_prepare_enable_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_prepare_enable_clks(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ci_hdrc_imx_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ci_hdrc_imx_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.ci_hdrc_imx_data* %7, %struct.ci_hdrc_imx_data** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %9 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %1
  %13 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %14 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_prepare_enable(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %76

24:                                               ; preds = %12
  %25 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %26 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_prepare_enable(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %36 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %76

40:                                               ; preds = %24
  %41 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %42 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_prepare_enable(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %52 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @clk_disable_unprepare(i32 %53)
  %55 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %56 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_disable_unprepare(i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %76

60:                                               ; preds = %40
  br label %74

61:                                               ; preds = %1
  %62 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %63 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @clk_prepare_enable(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %76

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %68, %47, %31, %19
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.ci_hdrc_imx_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
