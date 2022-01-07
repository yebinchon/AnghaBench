; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_imx_get_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_imx_get_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ci_hdrc_imx_data = type { i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get clks, err=%ld,%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to get ahb clock, err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to get per clock, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @imx_get_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_get_clks(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ci_hdrc_imx_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ci_hdrc_imx_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.ci_hdrc_imx_data* %7, %struct.ci_hdrc_imx_data** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i8* @devm_clk_get(%struct.device* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %11 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i8* @devm_clk_get(%struct.device* %18, i8* null)
  %20 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %21 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %23 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %29 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %34 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  %37 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %38 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  %41 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %87

43:                                               ; preds = %17
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %87

45:                                               ; preds = %1
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = call i8* @devm_clk_get(%struct.device* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %49 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %51 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %57 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @PTR_ERR(i8* %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %87

64:                                               ; preds = %45
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = call i8* @devm_clk_get(%struct.device* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %68 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %70 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @IS_ERR(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %64
  %75 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %76 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %5, align 4
  %79 = load %struct.device*, %struct.device** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %87

83:                                               ; preds = %64
  %84 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %85 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %74, %55, %43, %27
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.ci_hdrc_imx_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
