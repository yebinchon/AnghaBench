; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_dispc_error_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_dispc_error_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.work_struct = type { i32 }
%struct.omap_overlay = type { i64, i32 (%struct.omap_overlay*)*, %struct.omap_overlay_manager*, i32 }
%struct.omap_overlay_manager = type { i32 }

@dispc_error_worker.fifo_underflow_bits = internal constant [4 x i32] [i32 131, i32 130, i32 129, i32 128], align 16
@dispc_compat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [45 x i8] c"FIFO UNDERFLOW on %s, disabling the overlay\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"SYNC_LOST on channel %s, restarting the output with video overlays disabled\0A\00", align 1
@OMAP_DSS_GFX = common dso_local global i64 0, align 8
@DISPC_IRQ_OCP_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"OCP_ERR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @dispc_error_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_error_worker(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.omap_overlay*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_overlay_manager*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.omap_overlay*, align 8
  %12 = alloca %struct.omap_overlay_manager*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 2), i64 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 0), align 4
  store i32 %15, i32* %4, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 0), align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 2), i64 %16)
  %18 = call i32 (...) @dispc_runtime_get()
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %46, %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (...) @omap_dss_get_num_overlays()
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.omap_overlay* @omap_dss_get_overlay(i32 %24)
  store %struct.omap_overlay* %25, %struct.omap_overlay** %6, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* @dispc_error_worker.fifo_underflow_bits, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %36 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %40 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %39, i32 0, i32 1
  %41 = load i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*)** %40, align 8
  %42 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %43 = call i32 %41(%struct.omap_overlay* %42)
  %44 = call i32 @msleep(i32 50)
  br label %45

45:                                               ; preds = %34, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %19

49:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %102, %49
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (...) @omap_dss_get_num_overlay_managers()
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %55)
  store %struct.omap_overlay_manager* %56, %struct.omap_overlay_manager** %8, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @dispc_mgr_get_sync_lost_irq(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %54
  %64 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %65 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %69 = call i32 @dss_mgr_disable(%struct.omap_overlay_manager* %68)
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %95, %63
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (...) @omap_dss_get_num_overlays()
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = call %struct.omap_overlay* @omap_dss_get_overlay(i32 %75)
  store %struct.omap_overlay* %76, %struct.omap_overlay** %11, align 8
  %77 = load %struct.omap_overlay*, %struct.omap_overlay** %11, align 8
  %78 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @OMAP_DSS_GFX, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %74
  %83 = load %struct.omap_overlay*, %struct.omap_overlay** %11, align 8
  %84 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %83, i32 0, i32 2
  %85 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %84, align 8
  %86 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %87 = icmp eq %struct.omap_overlay_manager* %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.omap_overlay*, %struct.omap_overlay** %11, align 8
  %90 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %89, i32 0, i32 1
  %91 = load i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*)** %90, align 8
  %92 = load %struct.omap_overlay*, %struct.omap_overlay** %11, align 8
  %93 = call i32 %91(%struct.omap_overlay* %92)
  br label %94

94:                                               ; preds = %88, %82, %74
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %70

98:                                               ; preds = %70
  %99 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %100 = call i32 @dss_mgr_enable(%struct.omap_overlay_manager* %99)
  br label %101

101:                                              ; preds = %98, %54
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %50

105:                                              ; preds = %50
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @DISPC_IRQ_OCP_ERR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %121, %110
  %113 = load i32, i32* %3, align 4
  %114 = call i32 (...) @omap_dss_get_num_overlay_managers()
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i32, i32* %3, align 4
  %118 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %117)
  store %struct.omap_overlay_manager* %118, %struct.omap_overlay_manager** %12, align 8
  %119 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %12, align 8
  %120 = call i32 @dss_mgr_disable(%struct.omap_overlay_manager* %119)
  br label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %112

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 2), i64 %126)
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 1), align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 1), align 4
  %131 = call i32 (...) @_omap_dispc_set_irqs()
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 2), i64 %132)
  %134 = call i32 (...) @dispc_runtime_put()
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dispc_runtime_get(...) #1

declare dso_local i32 @omap_dss_get_num_overlays(...) #1

declare dso_local %struct.omap_overlay* @omap_dss_get_overlay(i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @omap_dss_get_num_overlay_managers(...) #1

declare dso_local %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32) #1

declare dso_local i32 @dispc_mgr_get_sync_lost_irq(i32) #1

declare dso_local i32 @dss_mgr_disable(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dss_mgr_enable(%struct.omap_overlay_manager*) #1

declare dso_local i32 @_omap_dispc_set_irqs(...) #1

declare dso_local i32 @dispc_runtime_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
