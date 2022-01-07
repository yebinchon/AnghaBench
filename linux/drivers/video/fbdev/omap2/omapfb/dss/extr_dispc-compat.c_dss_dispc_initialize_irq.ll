; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_dss_dispc_initialize_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_dss_dispc_initialize_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@dispc_compat = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@DISPC_IRQ_MASK_ERROR = common dso_local global i32 0, align 4
@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@DISPC_IRQ_SYNC_LOST2 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD3 = common dso_local global i32 0, align 4
@DISPC_IRQ_SYNC_LOST3 = common dso_local global i32 0, align 4
@DISPC_IRQ_VID3_FIFO_UNDERFLOW = common dso_local global i32 0, align 4
@dispc_error_worker = common dso_local global i32 0, align 4
@omap_dispc_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dispc_request_irq failed\0A\00", align 1
@dispc_dump_irqs = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_dispc_initialize_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dispc_compat, i32 0, i32 3))
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dispc_compat, i32 0, i32 2), align 4
  %5 = call i32 @memset(i32 %4, i32 0, i32 4)
  %6 = load i32, i32* @DISPC_IRQ_MASK_ERROR, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dispc_compat, i32 0, i32 1), align 4
  %7 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %8 = call i64 @dss_has_feature(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @DISPC_IRQ_SYNC_LOST2, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dispc_compat, i32 0, i32 1), align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dispc_compat, i32 0, i32 1), align 4
  br label %14

14:                                               ; preds = %10, %0
  %15 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %16 = call i64 @dss_has_feature(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @DISPC_IRQ_SYNC_LOST3, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dispc_compat, i32 0, i32 1), align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dispc_compat, i32 0, i32 1), align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = call i32 (...) @dss_feat_get_num_ovls()
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @DISPC_IRQ_VID3_FIFO_UNDERFLOW, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dispc_compat, i32 0, i32 1), align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dispc_compat, i32 0, i32 1), align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = call i32 (...) @dispc_read_irqstatus()
  %31 = call i32 @dispc_clear_irqstatus(i32 %30)
  %32 = load i32, i32* @dispc_error_worker, align 4
  %33 = call i32 @INIT_WORK(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dispc_compat, i32 0, i32 0), i32 %32)
  %34 = call i32 (...) @_omap_dispc_set_irqs()
  %35 = load i32, i32* @omap_dispc_irq_handler, align 4
  %36 = call i32 @dispc_request_irq(i32 %35, %struct.TYPE_5__* @dispc_compat)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = call i32 @DSSERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* %1, align 4
  br label %43

42:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @dss_feat_get_num_ovls(...) #1

declare dso_local i32 @dispc_clear_irqstatus(i32) #1

declare dso_local i32 @dispc_read_irqstatus(...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @_omap_dispc_set_irqs(...) #1

declare dso_local i32 @dispc_request_irq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
