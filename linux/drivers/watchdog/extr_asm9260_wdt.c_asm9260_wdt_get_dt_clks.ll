; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_asm9260_wdt.c_asm9260_wdt_get_dt_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_asm9260_wdt.c_asm9260_wdt_get_dt_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm9260_wdt_priv = type { i64, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get \22mod\22 clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to get \22ahb\22 clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to enable ahb_clk!\0A\00", align 1
@asm9260_clk_disable_unprepare = common dso_local global i32 0, align 4
@CLOCK_FREQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Failed to set rate!\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to enable clk!\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Failed, clk is 0!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asm9260_wdt_priv*)* @asm9260_wdt_get_dt_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm9260_wdt_get_dt_clks(%struct.asm9260_wdt_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asm9260_wdt_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.asm9260_wdt_priv* %0, %struct.asm9260_wdt_priv** %3, align 8
  %6 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %7 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i8* @devm_clk_get(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %11 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %13 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %19 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %23 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %2, align 4
  br label %132

26:                                               ; preds = %1
  %27 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %28 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @devm_clk_get(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %32 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %34 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %40 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %44 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %2, align 4
  br label %132

47:                                               ; preds = %26
  %48 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %49 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @clk_prepare_enable(i8* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %56 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %132

60:                                               ; preds = %47
  %61 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %62 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @asm9260_clk_disable_unprepare, align 4
  %65 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %66 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @devm_add_action_or_reset(i32 %63, i32 %64, i8* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %132

73:                                               ; preds = %60
  %74 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %75 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* @CLOCK_FREQ, align 4
  %78 = call i32 @clk_set_rate(i8* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %83 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %132

87:                                               ; preds = %73
  %88 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %89 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @clk_prepare_enable(i8* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %96 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %132

100:                                              ; preds = %87
  %101 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %102 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @asm9260_clk_disable_unprepare, align 4
  %105 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %106 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @devm_add_action_or_reset(i32 %103, i32 %104, i8* %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %132

113:                                              ; preds = %100
  %114 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %115 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @clk_get_rate(i8* %116)
  store i64 %117, i64* %5, align 8
  %118 = load i64, i64* %5, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %113
  %121 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %122 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %132

127:                                              ; preds = %113
  %128 = load i64, i64* %5, align 8
  %129 = udiv i64 %128, 2
  %130 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %131 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %127, %120, %111, %94, %81, %71, %54, %38, %17
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @devm_add_action_or_reset(i32, i32, i8*) #1

declare dso_local i32 @clk_set_rate(i8*, i32) #1

declare dso_local i64 @clk_get_rate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
