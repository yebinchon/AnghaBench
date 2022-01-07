; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_init_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_init_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { %struct.dss_pll*, %struct.TYPE_2__ }
%struct.dss_pll = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OMAPDSS_VER_DRA7xx = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"DSI PLL not operational\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpi_data*)* @dpi_init_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpi_init_pll(%struct.dpi_data* %0) #0 {
  %2 = alloca %struct.dpi_data*, align 8
  %3 = alloca %struct.dss_pll*, align 8
  store %struct.dpi_data* %0, %struct.dpi_data** %2, align 8
  %4 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %5 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %4, i32 0, i32 0
  %6 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %7 = icmp ne %struct.dss_pll* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %11 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.dss_pll* @dpi_get_pll(i32 %13)
  store %struct.dss_pll* %14, %struct.dss_pll** %3, align 8
  %15 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %16 = icmp ne %struct.dss_pll* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %41

18:                                               ; preds = %9
  %19 = call i64 (...) @omapdss_get_version()
  %20 = load i64, i64* @OMAPDSS_VER_DRA7xx, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %24 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %27 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dss_ctrl_pll_set_control_mux(i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %22, %18
  %32 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %33 = call i64 @dpi_verify_dsi_pll(%struct.dss_pll* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @DSSWARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %41

37:                                               ; preds = %31
  %38 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %39 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %40 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %39, i32 0, i32 0
  store %struct.dss_pll* %38, %struct.dss_pll** %40, align 8
  br label %41

41:                                               ; preds = %37, %35, %17, %8
  ret void
}

declare dso_local %struct.dss_pll* @dpi_get_pll(i32) #1

declare dso_local i64 @omapdss_get_version(...) #1

declare dso_local i32 @dss_ctrl_pll_set_control_mux(i32, i32) #1

declare dso_local i64 @dpi_verify_dsi_pll(%struct.dss_pll*) #1

declare dso_local i32 @DSSWARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
