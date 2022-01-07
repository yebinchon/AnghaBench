; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_get_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_get_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i8*, i32*, i8* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get \22mod\22 clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to get \22ahb\22 clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to enable ahb_clk!\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Failed to set rate!\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to enable clk!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_auart_port*, %struct.platform_device*)* @mxs_get_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_get_clks(%struct.mxs_auart_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxs_auart_port*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %8 = call i32 @is_asm9260_auart(%struct.mxs_auart_port* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i8* @devm_clk_get(i32* %12, i8* null)
  %14 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %15 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %17 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @PTR_ERR_OR_ZERO(i8* %18)
  store i32 %19, i32* %3, align 4
  br label %110

20:                                               ; preds = %2
  %21 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %22 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i8* @devm_clk_get(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %26 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %28 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @IS_ERR(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %34 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %38 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %3, align 4
  br label %110

41:                                               ; preds = %20
  %42 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %43 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i8* @devm_clk_get(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %47 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %49 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %41
  %54 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %55 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %59 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  store i32 %61, i32* %3, align 4
  br label %110

62:                                               ; preds = %41
  %63 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %64 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @clk_prepare_enable(i8* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %71 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %110

75:                                               ; preds = %62
  %76 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %77 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %80 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @clk_get_rate(i8* %81)
  %83 = call i32 @clk_set_rate(i8* %78, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %88 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %104

91:                                               ; preds = %75
  %92 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %93 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @clk_prepare_enable(i8* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %100 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %104

103:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %110

104:                                              ; preds = %98, %86
  %105 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %106 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @clk_disable_unprepare(i8* %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %104, %103, %69, %53, %32, %10
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @is_asm9260_auart(%struct.mxs_auart_port*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_set_rate(i8*, i32) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
