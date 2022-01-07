; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_dump_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_dump_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"- DISPC -\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"dispc fclk source = %s (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"fck\09\09%-16lu\0A\00", align 1
@FEAT_CORE_CLK_DIV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"- DISPC-CORE-CLK -\0A\00", align 1
@DISPC_DIVISOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"lck\09\09%-16lulck div\09%u\0A\00", align 1
@OMAP_DSS_CHANNEL_LCD = common dso_local global i32 0, align 4
@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD2 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD3 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_dump_clocks(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %6 = call i32 (...) @dss_get_dispc_clk_source()
  store i32 %6, i32* %5, align 4
  %7 = call i64 (...) @dispc_runtime_get()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %12 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dss_get_generic_clk_source_name(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dss_feat_get_clk_source_name(i32 %16)
  %18 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %20 = call i32 (...) @dispc_fclk_rate()
  %21 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %23 = call i64 @dss_has_feature(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %10
  %26 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %27 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* @DISPC_DIVISOR, align 4
  %29 = call i32 @dispc_read_reg(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @FLD_GET(i32 %30, i32 23, i32 16)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %33 = call i32 (...) @dispc_fclk_rate()
  %34 = load i32, i32* %3, align 4
  %35 = sdiv i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %25, %10
  %39 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %40 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  %41 = call i32 @dispc_dump_clocks_channel(%struct.seq_file* %39, i32 %40)
  %42 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %43 = call i64 @dss_has_feature(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %47 = load i32, i32* @OMAP_DSS_CHANNEL_LCD2, align 4
  %48 = call i32 @dispc_dump_clocks_channel(%struct.seq_file* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %51 = call i64 @dss_has_feature(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %55 = load i32, i32* @OMAP_DSS_CHANNEL_LCD3, align 4
  %56 = call i32 @dispc_dump_clocks_channel(%struct.seq_file* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = call i32 (...) @dispc_runtime_put()
  br label %59

59:                                               ; preds = %57, %9
  ret void
}

declare dso_local i32 @dss_get_dispc_clk_source(...) #1

declare dso_local i64 @dispc_runtime_get(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @dss_get_generic_clk_source_name(i32) #1

declare dso_local i32 @dss_feat_get_clk_source_name(i32) #1

declare dso_local i32 @dispc_fclk_rate(...) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dispc_dump_clocks_channel(%struct.seq_file*, i32) #1

declare dso_local i32 @dispc_runtime_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
