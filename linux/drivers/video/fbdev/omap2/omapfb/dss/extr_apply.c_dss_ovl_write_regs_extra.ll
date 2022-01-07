; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_write_regs_extra.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_write_regs_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i32, i32 }
%struct.ovl_priv_data = type { i32, i32, i32, i32, i32 }
%struct.mgr_priv_data = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"writing ovl %d regs extra\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_overlay*)* @dss_ovl_write_regs_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_ovl_write_regs_extra(%struct.omap_overlay* %0) #0 {
  %2 = alloca %struct.omap_overlay*, align 8
  %3 = alloca %struct.ovl_priv_data*, align 8
  %4 = alloca %struct.mgr_priv_data*, align 8
  store %struct.omap_overlay* %0, %struct.omap_overlay** %2, align 8
  %5 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %6 = call %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay* %5)
  store %struct.ovl_priv_data* %6, %struct.ovl_priv_data** %3, align 8
  %7 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %8 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @DSSDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %12 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %18 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %21 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dispc_ovl_enable(i32 %19, i32 %22)
  %24 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %25 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %28 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %31 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dispc_ovl_set_fifo_threshold(i32 %26, i32 %29, i32 %32)
  %34 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %35 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.mgr_priv_data* @get_mgr_priv(i32 %36)
  store %struct.mgr_priv_data* %37, %struct.mgr_priv_data** %4, align 8
  %38 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %39 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %4, align 8
  %41 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %16
  %45 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %3, align 8
  %46 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %15, %44, %16
  ret void
}

declare dso_local %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay*) #1

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i32 @dispc_ovl_enable(i32, i32) #1

declare dso_local i32 @dispc_ovl_set_fifo_threshold(i32, i32, i32) #1

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
