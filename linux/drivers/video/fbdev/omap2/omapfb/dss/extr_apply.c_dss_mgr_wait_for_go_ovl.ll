; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_wait_for_go_ovl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_wait_for_go_ovl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ovl_priv_data = type { i32, i32 }
%struct.mgr_priv_data = type { i32 }

@data_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ovl(%d)->wait_for_go() not finishing\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ovl(%d)->wait_for_go() timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay*)* @dss_mgr_wait_for_go_ovl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_mgr_wait_for_go_ovl(%struct.omap_overlay* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_overlay*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ovl_priv_data*, align 8
  %6 = alloca %struct.mgr_priv_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.omap_overlay* %0, %struct.omap_overlay** %3, align 8
  %13 = call i64 @msecs_to_jiffies(i32 500)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %15 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

19:                                               ; preds = %1
  %20 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %21 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.TYPE_2__* %22)
  store %struct.mgr_priv_data* %23, %struct.mgr_priv_data** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %24)
  %26 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %27 = call i64 @ovl_manual_update(%struct.omap_overlay* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %30)
  store i32 0, i32* %2, align 4
  br label %104

32:                                               ; preds = %19
  %33 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %6, align 8
  %34 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %38)
  store i32 0, i32* %2, align 4
  br label %104

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %41)
  %43 = call i32 (...) @dispc_runtime_get()
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %2, align 4
  br label %104

48:                                               ; preds = %40
  %49 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %50 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dispc_mgr_get_vsync_irq(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %56 = call %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay* %55)
  store %struct.ovl_priv_data* %56, %struct.ovl_priv_data** %5, align 8
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %48, %100
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %58)
  %60 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %5, align 8
  %61 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %5, align 8
  %64 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %66)
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %101

74:                                               ; preds = %70, %57
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = icmp eq i32 %75, 3
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %80 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DSSERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 0, i32* %9, align 4
  br label %101

83:                                               ; preds = %74
  %84 = load i32, i32* %7, align 4
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @omap_dispc_wait_for_irq_interruptible_timeout(i32 %84, i64 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @ERESTARTSYS, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %101

92:                                               ; preds = %83
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %97 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @DSSERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %101

100:                                              ; preds = %92
  br label %57

101:                                              ; preds = %95, %91, %78, %73
  %102 = call i32 (...) @dispc_runtime_put()
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %101, %46, %37, %29, %18
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ovl_manual_update(%struct.omap_overlay*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dispc_runtime_get(...) #1

declare dso_local i32 @dispc_mgr_get_vsync_irq(i32) #1

declare dso_local %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay*) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @omap_dispc_wait_for_irq_interruptible_timeout(i32, i64) #1

declare dso_local i32 @dispc_runtime_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
