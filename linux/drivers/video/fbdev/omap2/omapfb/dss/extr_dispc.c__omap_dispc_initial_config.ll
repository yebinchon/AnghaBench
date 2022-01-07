; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c__omap_dispc_initial_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c__omap_dispc_initial_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@FEAT_CORE_CLK_DIV = common dso_local global i32 0, align 4
@DISPC_DIVISOR = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FEAT_FUNCGATED = common dso_local global i32 0, align 4
@DISPC_CONFIG = common dso_local global i32 0, align 4
@OMAP_DSS_LOAD_FRAME_ONLY = common dso_local global i32 0, align 4
@DISPC_MSTANDBY_CTRL = common dso_local global i32 0, align 4
@FEAT_MFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_omap_dispc_initial_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap_dispc_initial_config() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %3 = call i64 @dss_has_feature(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = load i32, i32* @DISPC_DIVISOR, align 4
  %7 = call i32 @dispc_read_reg(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @FLD_MOD(i32 %8, i32 1, i32 0, i32 0)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @FLD_MOD(i32 %10, i32 1, i32 23, i32 16)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @DISPC_DIVISOR, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @dispc_write_reg(i32 %12, i32 %13)
  %15 = call i32 (...) @dispc_fclk_rate()
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1), align 8
  br label %16

16:                                               ; preds = %5, %0
  %17 = load i32, i32* @FEAT_FUNCGATED, align 4
  %18 = call i64 @dss_has_feature(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @DISPC_CONFIG, align 4
  %22 = call i32 @REG_FLD_MOD(i32 %21, i32 1, i32 9, i32 9)
  br label %23

23:                                               ; preds = %20, %16
  %24 = call i32 (...) @dispc_setup_color_conv_coef()
  %25 = load i32, i32* @OMAP_DSS_LOAD_FRAME_ONLY, align 4
  %26 = call i32 @dispc_set_loadmode(i32 %25)
  %27 = call i32 (...) @dispc_init_fifos()
  %28 = call i32 (...) @dispc_configure_burst_sizes()
  %29 = call i32 (...) @dispc_ovl_enable_zorder_planes()
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @DISPC_MSTANDBY_CTRL, align 4
  %36 = call i32 @REG_FLD_MOD(i32 %35, i32 1, i32 0, i32 0)
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i32, i32* @FEAT_MFLAG, align 4
  %39 = call i64 @dss_has_feature(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @dispc_init_mflag()
  br label %43

43:                                               ; preds = %41, %37
  ret void
}

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @dispc_fclk_rate(...) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_setup_color_conv_coef(...) #1

declare dso_local i32 @dispc_set_loadmode(i32) #1

declare dso_local i32 @dispc_init_fifos(...) #1

declare dso_local i32 @dispc_configure_burst_sizes(...) #1

declare dso_local i32 @dispc_ovl_enable_zorder_planes(...) #1

declare dso_local i32 @dispc_init_mflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
