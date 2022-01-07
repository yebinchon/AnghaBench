; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_video_gx.c_gx_set_dclk_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_video_gx.c_gx_set_dclk_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_pll_entry = type { i32, i64, i64 }
%struct.fb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@gx_pll_table_14MHz = common dso_local global %struct.gx_pll_entry* null, align 8
@gx_pll_table_48MHz = common dso_local global %struct.gx_pll_entry* null, align 8
@MSR_GLCP_SYS_RSTPLL = common dso_local global i32 0, align 4
@MSR_GLCP_DOTPLL = common dso_local global i32 0, align 4
@MSR_GLCP_DOTPLL_DOTRESET = common dso_local global i32 0, align 4
@MSR_GLCP_DOTPLL_BYPASS = common dso_local global i32 0, align 4
@MSR_GLCP_SYS_RSTPLL_DOTPREDIV2 = common dso_local global i32 0, align 4
@MSR_GLCP_SYS_RSTPLL_DOTPREMULT2 = common dso_local global i32 0, align 4
@MSR_GLCP_SYS_RSTPLL_DOTPOSTDIV3 = common dso_local global i32 0, align 4
@MSR_GLCP_DOTPLL_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gx_set_dclk_frequency(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.gx_pll_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  store i32 1000, i32* %11, align 4
  %13 = call i32 @cpu_data(i32 0)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.gx_pll_entry*, %struct.gx_pll_entry** @gx_pll_table_14MHz, align 8
  store %struct.gx_pll_entry* %19, %struct.gx_pll_entry** %3, align 8
  %20 = load %struct.gx_pll_entry*, %struct.gx_pll_entry** @gx_pll_table_14MHz, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.gx_pll_entry* %20)
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.gx_pll_entry*, %struct.gx_pll_entry** @gx_pll_table_48MHz, align 8
  store %struct.gx_pll_entry* %23, %struct.gx_pll_entry** %3, align 8
  %24 = load %struct.gx_pll_entry*, %struct.gx_pll_entry** @gx_pll_table_48MHz, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.gx_pll_entry* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %18
  store i32 0, i32* %6, align 4
  %27 = load %struct.gx_pll_entry*, %struct.gx_pll_entry** %3, align 8
  %28 = getelementptr inbounds %struct.gx_pll_entry, %struct.gx_pll_entry* %27, i64 0
  %29 = getelementptr inbounds %struct.gx_pll_entry, %struct.gx_pll_entry* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %30, %34
  %36 = call i64 @abs(i64 %35)
  store i64 %36, i64* %7, align 8
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %61, %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.gx_pll_entry*, %struct.gx_pll_entry** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.gx_pll_entry, %struct.gx_pll_entry* %42, i64 %44
  %46 = getelementptr inbounds %struct.gx_pll_entry, %struct.gx_pll_entry* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %47, %51
  %53 = call i64 @abs(i64 %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %41
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %37

64:                                               ; preds = %37
  %65 = load i32, i32* @MSR_GLCP_SYS_RSTPLL, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @rdmsrl(i32 %65, i32 %66)
  %68 = load i32, i32* @MSR_GLCP_DOTPLL, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @rdmsrl(i32 %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %72, 4294967295
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load %struct.gx_pll_entry*, %struct.gx_pll_entry** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.gx_pll_entry, %struct.gx_pll_entry* %75, i64 %77
  %79 = getelementptr inbounds %struct.gx_pll_entry, %struct.gx_pll_entry* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = shl i32 %81, 32
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @MSR_GLCP_DOTPLL_DOTRESET, align 4
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* @MSR_GLCP_DOTPLL_BYPASS, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @MSR_GLCP_DOTPLL, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @wrmsrl(i32 %92, i32 %93)
  %95 = load i32, i32* @MSR_GLCP_SYS_RSTPLL_DOTPREDIV2, align 4
  %96 = load i32, i32* @MSR_GLCP_SYS_RSTPLL_DOTPREMULT2, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @MSR_GLCP_SYS_RSTPLL_DOTPOSTDIV3, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load %struct.gx_pll_entry*, %struct.gx_pll_entry** %3, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.gx_pll_entry, %struct.gx_pll_entry* %103, i64 %105
  %107 = getelementptr inbounds %struct.gx_pll_entry, %struct.gx_pll_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* @MSR_GLCP_SYS_RSTPLL, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @wrmsrl(i32 %111, i32 %112)
  %114 = load i32, i32* @MSR_GLCP_DOTPLL_DOTRESET, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* @MSR_GLCP_DOTPLL, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @wrmsrl(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %135, %64
  %122 = load i32, i32* @MSR_GLCP_DOTPLL, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @rdmsrl(i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %11, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @MSR_GLCP_DOTPLL_LOCK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  br label %135

135:                                              ; preds = %129, %125
  %136 = phi i1 [ false, %125 ], [ %134, %129 ]
  br i1 %136, label %121, label %137

137:                                              ; preds = %135
  ret void
}

declare dso_local i32 @cpu_data(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.gx_pll_entry*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
