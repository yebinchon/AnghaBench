; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_state = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@mipi_csis_clk_id = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"set rate=%d failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi_state*)* @mipi_csis_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_clk_get(%struct.csi_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csi_state*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.csi_state* %0, %struct.csi_state** %3, align 8
  %7 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %8 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %7, i32 0, i32 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32*, i32** @mipi_csis_clk_id, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %14 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %17 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_5__* @devm_kcalloc(%struct.device* %15, i32 %18, i32 4, i32 %19)
  %21 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %22 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %21, i32 0, i32 3
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %22, align 8
  %23 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %24 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %100

30:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %34 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i32*, i32** @mipi_csis_clk_id, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %44 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 4
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %31

53:                                               ; preds = %31
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %56 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %59 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %58, i32 0, i32 3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @devm_clk_bulk_get(%struct.device* %54, i32 %57, %struct.TYPE_5__* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %100

66:                                               ; preds = %53
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @devm_clk_get(%struct.device* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %70 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %72 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %78 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %100

81:                                               ; preds = %66
  %82 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %83 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %86 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @clk_set_rate(i32 %84, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %94 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %81
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %76, %64, %27
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.TYPE_5__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_clk_bulk_get(%struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
