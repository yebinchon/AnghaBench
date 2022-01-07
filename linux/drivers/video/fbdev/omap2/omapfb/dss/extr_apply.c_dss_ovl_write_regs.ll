; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i32, i32 }
%struct.ovl_priv_data = type { i32, i32, i32, %struct.omap_overlay_info }
%struct.omap_overlay_info = type { i32 }
%struct.mgr_priv_data = type { i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"writing ovl %d regs\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"dispc_ovl_setup failed for ovl %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_overlay*)* @dss_ovl_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_ovl_write_regs(%struct.omap_overlay* %0) #0 {
  %2 = alloca %struct.omap_overlay*, align 8
  %3 = alloca %struct.ovl_priv_data*, align 8
  %4 = alloca %struct.omap_overlay_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mgr_priv_data*, align 8
  %7 = alloca i32, align 4
  store %struct.omap_overlay* %0, %struct.omap_overlay** %2, align 8
  %8 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %9 = call %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay* %8)
  store %struct.ovl_priv_data* %9, %struct.ovl_priv_data** %3, align 8
  %10 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %11 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DSSDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %15 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %20 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %1
  br label %69

24:                                               ; preds = %18
  %25 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %26 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %25, i32 0, i32 3
  store %struct.omap_overlay_info* %26, %struct.omap_overlay_info** %4, align 8
  %27 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %28 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.mgr_priv_data* @get_mgr_priv(i32 %29)
  store %struct.mgr_priv_data* %30, %struct.mgr_priv_data** %6, align 8
  %31 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %6, align 8
  %32 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %4, align 8
  %35 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dss_ovl_use_replication(i32 %33, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %39 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %6, align 8
  %44 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %43, i32 0, i32 1
  %45 = call i32 @dispc_ovl_setup(i32 %40, %struct.omap_overlay_info* %41, i32 %42, i32* %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %24
  %49 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %50 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DSSERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %54 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %56 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dispc_ovl_enable(i32 %57, i32 0)
  br label %69

59:                                               ; preds = %24
  %60 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %61 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %6, align 8
  %63 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %68 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %23, %48, %66, %59
  ret void
}

declare dso_local %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay*) #1

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(i32) #1

declare dso_local i32 @dss_ovl_use_replication(i32, i32) #1

declare dso_local i32 @dispc_ovl_setup(i32, %struct.omap_overlay_info*, i32, i32*, i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @dispc_ovl_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
