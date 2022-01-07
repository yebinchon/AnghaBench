; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_enable_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_enable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pipe3 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to enable refclk %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to enable wkupclk %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to enable div_clk %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_pipe3*)* @ti_pipe3_enable_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pipe3_enable_clocks(%struct.ti_pipe3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_pipe3*, align 8
  %4 = alloca i32, align 4
  store %struct.ti_pipe3* %0, %struct.ti_pipe3** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %6 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @IS_ERR(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %12 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %19 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %91

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %27 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IS_ERR(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %25
  %32 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %33 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_prepare_enable(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %40 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %78

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %47 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IS_ERR(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %45
  %52 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %53 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_prepare_enable(i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %60 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %66

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %45
  store i32 0, i32* %2, align 4
  br label %91

66:                                               ; preds = %58
  %67 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %68 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @IS_ERR(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %74 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clk_disable_unprepare(i32 %75)
  br label %77

77:                                               ; preds = %72, %66
  br label %78

78:                                               ; preds = %77, %38
  %79 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %80 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @IS_ERR(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %86 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @clk_disable_unprepare(i32 %87)
  br label %89

89:                                               ; preds = %84, %78
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %65, %17
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
