; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_pll.c_hdmi_pll_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_pll.c_hdmi_pll_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_pll_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dss_pll_hw* }
%struct.dss_pll_hw = type { i32, i32 }
%struct.dss_pll_clock_info = type { i32, i32, i32, i32*, i32, i64, i64, i64* }

@.str = private unnamed_addr constant [28 x i8] c"clkin %lu, target tmds %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"N = %u, M = %u, M.f = %u, M2 = %u, SD = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Fint %lu, clkdco %lu, clkout %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_pll_compute(%struct.hdmi_pll_data* %0, i64 %1, %struct.dss_pll_clock_info* %2) #0 {
  %4 = alloca %struct.hdmi_pll_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dss_pll_clock_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.dss_pll_hw*, align 8
  store %struct.hdmi_pll_data* %0, %struct.hdmi_pll_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.dss_pll_clock_info* %2, %struct.dss_pll_clock_info** %6, align 8
  %20 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %4, align 8
  %21 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %22, align 8
  store %struct.dss_pll_hw* %23, %struct.dss_pll_hw** %19, align 8
  %24 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %4, align 8
  %25 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @clk_get_rate(i32 %27)
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* %18, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 (i8*, i64, i64, ...) @DSSDBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %30)
  %32 = load i64, i64* %5, align 8
  %33 = mul i64 %32, 10
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %18, align 8
  %35 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %19, align 8
  %36 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DIV_ROUND_UP(i64 %34, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i64, i64* %18, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = udiv i64 %39, %41
  store i64 %42, i64* %7, align 8
  %43 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %19, align 8
  %44 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @roundup(i32 %45, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %10, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @DIV_ROUND_UP(i64 %48, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  store i32 1, i32* %16, align 4
  br label %55

55:                                               ; preds = %54, %3
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %16, align 4
  %58 = zext i32 %57 to i64
  %59 = mul i64 %56, %58
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = udiv i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = zext i32 %65 to i64
  %67 = mul i64 %64, %66
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %68, %69
  %71 = load i64, i64* %7, align 8
  %72 = icmp ugt i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  store i32 0, i32* %15, align 4
  br label %86

77:                                               ; preds = %55
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %8, align 8
  %80 = sub i64 %78, %79
  %81 = mul i64 262144, %80
  %82 = load i64, i64* %7, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i64 @div_u64(i64 %81, i32 %83)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %77, %76
  %87 = load i32, i32* %15, align 4
  %88 = icmp ugt i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %7, align 8
  %93 = mul i64 %91, %92
  %94 = call i64 @div_u64(i64 %93, i32 262144)
  %95 = trunc i64 %94 to i32
  %96 = zext i32 %95 to i64
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %89, %86
  %100 = load i64, i64* %8, align 8
  %101 = load i32, i32* %16, align 4
  %102 = zext i32 %101 to i64
  %103 = udiv i64 %100, %102
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i32, i32* %14, align 4
  %106 = zext i32 %105 to i64
  %107 = mul i64 %104, %106
  %108 = call i32 @DIV_ROUND_UP(i64 %107, i32 250000000)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %13, align 4
  %110 = zext i32 %109 to i64
  %111 = load i32, i32* %14, align 4
  %112 = zext i32 %111 to i64
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %17, align 4
  %116 = call i32 (i8*, i64, i64, ...) @DSSDBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call i32 (i8*, i64, i64, ...) @DSSDBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %117, i64 %118, i64 %119)
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %123 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %126 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %129 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %132 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %137 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %140 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %139, i32 0, i32 5
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %143 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %142, i32 0, i32 6
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %9, align 8
  %145 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %146 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %145, i32 0, i32 7
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  store i64 %144, i64* %148, align 8
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DSSDBG(i8*, i64, i64, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @roundup(i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
