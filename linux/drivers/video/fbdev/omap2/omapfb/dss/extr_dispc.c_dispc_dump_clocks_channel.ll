; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_dump_clocks_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_dump_clocks_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"- %s -\0A\00", align 1
@mgr_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s clk source = %s (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"lck\09\09%-16lulck div\09%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"pck\09\09%-16lupck div\09%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32)* @dispc_dump_clocks_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_dump_clocks_channel(%struct.seq_file* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mgr_desc, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dss_get_lcd_clk_source(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mgr_desc, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dss_get_generic_clk_source_name(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dss_feat_get_clk_source_name(i32 %27)
  %29 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dispc_mgr_get_lcd_divisor(i32 %30, i32* %5, i32* %6)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dispc_mgr_lclk_rate(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dispc_mgr_pclk_rate(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @dss_get_lcd_clk_source(i32) #1

declare dso_local i32 @dss_get_generic_clk_source_name(i32) #1

declare dso_local i32 @dss_feat_get_clk_source_name(i32) #1

declare dso_local i32 @dispc_mgr_get_lcd_divisor(i32, i32*, i32*) #1

declare dso_local i32 @dispc_mgr_lclk_rate(i32) #1

declare dso_local i32 @dispc_mgr_pclk_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
