; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 }
%struct.mgr_priv_data = type { i64, i32 }

@.str = private unnamed_addr constant [62 x i8] c"cannot write registers for manager %s: illegal configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dss_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_write_regs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_overlay_manager*, align 8
  %4 = alloca %struct.mgr_priv_data*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 (...) @omap_dss_get_num_overlay_managers()
  store i32 %6, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %45, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %12)
  store %struct.omap_overlay_manager* %13, %struct.omap_overlay_manager** %3, align 8
  %14 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %15 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %14)
  store %struct.mgr_priv_data* %15, %struct.mgr_priv_data** %4, align 8
  %16 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %4, align 8
  %17 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %22 = call i64 @mgr_manual_update(%struct.omap_overlay_manager* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %4, align 8
  %26 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %20, %11
  br label %45

30:                                               ; preds = %24
  %31 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %32 = call i32 @dss_check_settings(%struct.omap_overlay_manager* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %37 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DSSERR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %42 = call i32 @dss_mgr_write_regs(%struct.omap_overlay_manager* %41)
  %43 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %44 = call i32 @dss_mgr_write_regs_extra(%struct.omap_overlay_manager* %43)
  br label %45

45:                                               ; preds = %40, %35, %29
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %7

48:                                               ; preds = %7
  ret void
}

declare dso_local i32 @omap_dss_get_num_overlay_managers(...) #1

declare dso_local %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32) #1

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i64 @mgr_manual_update(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dss_check_settings(%struct.omap_overlay_manager*) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @dss_mgr_write_regs(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dss_mgr_write_regs_extra(%struct.omap_overlay_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
