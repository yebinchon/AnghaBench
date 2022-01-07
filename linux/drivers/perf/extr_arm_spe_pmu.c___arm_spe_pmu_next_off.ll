; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c___arm_spe_pmu_next_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c___arm_spe_pmu_next_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.arm_spe_pmu = type { i32 }
%struct.arm_spe_pmu_buf = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.perf_output_handle*)* @__arm_spe_pmu_next_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__arm_spe_pmu_next_off(%struct.perf_output_handle* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.perf_output_handle*, align 8
  %4 = alloca %struct.arm_spe_pmu*, align 8
  %5 = alloca %struct.arm_spe_pmu_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %3, align 8
  %12 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %13 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.arm_spe_pmu* @to_spe_pmu(i32 %16)
  store %struct.arm_spe_pmu* %17, %struct.arm_spe_pmu** %4, align 8
  %18 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %19 = call %struct.arm_spe_pmu_buf* @perf_get_aux(%struct.perf_output_handle* %18)
  store %struct.arm_spe_pmu_buf* %19, %struct.arm_spe_pmu_buf** %5, align 8
  %20 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %5, align 8
  %21 = getelementptr inbounds %struct.arm_spe_pmu_buf, %struct.arm_spe_pmu_buf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %27 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %5, align 8
  %30 = call i64 @PERF_IDX2OFF(i64 %28, %struct.arm_spe_pmu_buf* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %4, align 8
  %33 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IS_ALIGNED(i64 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %1
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %4, align 8
  %40 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @roundup(i64 %38, i32 %41)
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %47 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @min(i64 %45, i64 %48)
  store i64 %49, i64* %11, align 8
  %50 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @arm_spe_pmu_pad_buf(%struct.perf_output_handle* %50, i64 %51)
  %53 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %54 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %5, align 8
  %57 = call i64 @PERF_IDX2OFF(i64 %55, %struct.arm_spe_pmu_buf* %56)
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %37, %1
  %59 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %60 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %120

64:                                               ; preds = %58
  %65 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %66 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %69 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %67, %70
  %72 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %5, align 8
  %73 = call i64 @PERF_IDX2OFF(i64 %71, %struct.arm_spe_pmu_buf* %72)
  store i64 %73, i64* %9, align 8
  %74 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %75 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %5, align 8
  %78 = call i64 @PERF_IDX2OFF(i64 %76, %struct.arm_spe_pmu_buf* %77)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %64
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = call i64 @round_down(i64 %83, i64 %84)
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %82, %64
  %87 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %88 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %91 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %94 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %92, %95
  %97 = icmp ult i64 %89, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %86
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ule i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @PAGE_SIZE, align 8
  %106 = call i64 @round_up(i64 %104, i64 %105)
  %107 = call i64 @min(i64 %103, i64 %106)
  store i64 %107, i64* %7, align 8
  br label %108

108:                                              ; preds = %102, %98, %86
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i64, i64* %7, align 8
  store i64 %113, i64* %2, align 8
  br label %126

114:                                              ; preds = %108
  %115 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %116 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %117 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @arm_spe_pmu_pad_buf(%struct.perf_output_handle* %115, i64 %118)
  br label %120

120:                                              ; preds = %114, %63
  %121 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %122 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %123 = call i32 @perf_aux_output_flag(%struct.perf_output_handle* %121, i32 %122)
  %124 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %125 = call i32 @perf_aux_output_end(%struct.perf_output_handle* %124, i32 0)
  store i64 0, i64* %2, align 8
  br label %126

126:                                              ; preds = %120, %112
  %127 = load i64, i64* %2, align 8
  ret i64 %127
}

declare dso_local %struct.arm_spe_pmu* @to_spe_pmu(i32) #1

declare dso_local %struct.arm_spe_pmu_buf* @perf_get_aux(%struct.perf_output_handle*) #1

declare dso_local i64 @PERF_IDX2OFF(i64, %struct.arm_spe_pmu_buf*) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @arm_spe_pmu_pad_buf(%struct.perf_output_handle*, i64) #1

declare dso_local i64 @round_down(i64, i64) #1

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i32 @perf_aux_output_flag(%struct.perf_output_handle*, i32) #1

declare dso_local i32 @perf_aux_output_end(%struct.perf_output_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
