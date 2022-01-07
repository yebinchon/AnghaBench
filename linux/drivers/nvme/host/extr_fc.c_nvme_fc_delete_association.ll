; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_delete_association.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_delete_association.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i32, i64, %struct.TYPE_4__, i32*, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@FCCTRL_TERMIO = common dso_local global i32 0, align 4
@nvme_fc_terminate_exchange = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_ctrl*)* @nvme_fc_delete_association to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_delete_association(%struct.nvme_fc_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_fc_ctrl*, align 8
  %3 = alloca i64, align 8
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %2, align 8
  %4 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %128

9:                                                ; preds = %1
  %10 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %12, i32 0, i32 5
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @FCCTRL_TERMIO, align 4
  %17 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %18 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %22 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %24 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %23, i32 0, i32 5
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %28 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %9
  %33 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %34 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %33, i32 0, i32 2
  %35 = call i32 @nvme_stop_queues(%struct.TYPE_4__* %34)
  %36 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %37 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %36, i32 0, i32 9
  %38 = load i32, i32* @nvme_fc_terminate_exchange, align 4
  %39 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %40 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %39, i32 0, i32 2
  %41 = call i32 @blk_mq_tagset_busy_iter(i32* %37, i32 %38, %struct.TYPE_4__* %40)
  %42 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %43 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %42, i32 0, i32 9
  %44 = call i32 @blk_mq_tagset_wait_completed_request(i32* %43)
  br label %45

45:                                               ; preds = %32, %9
  %46 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %47 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @blk_mq_quiesce_queue(i32 %49)
  %51 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %52 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %51, i32 0, i32 8
  %53 = load i32, i32* @nvme_fc_terminate_exchange, align 4
  %54 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %55 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %54, i32 0, i32 2
  %56 = call i32 @blk_mq_tagset_busy_iter(i32* %52, i32 %53, %struct.TYPE_4__* %55)
  %57 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %58 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %57, i32 0, i32 8
  %59 = call i32 @blk_mq_tagset_wait_completed_request(i32* %58)
  %60 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %61 = call i32 @nvme_fc_abort_aen_ops(%struct.nvme_fc_ctrl* %60)
  %62 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %63 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %62, i32 0, i32 5
  %64 = call i32 @spin_lock_irq(i32* %63)
  %65 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %66 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %69 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %74 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @wait_event_lock_irq(i32 %67, i32 %72, i32 %75)
  %77 = load i32, i32* @FCCTRL_TERMIO, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %80 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %84 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %83, i32 0, i32 5
  %85 = call i32 @spin_unlock_irq(i32* %84)
  %86 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %87 = call i32 @nvme_fc_term_aen_ops(%struct.nvme_fc_ctrl* %86)
  %88 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %89 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %45
  %93 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %94 = call i32 @nvme_fc_xmt_disconnect_assoc(%struct.nvme_fc_ctrl* %93)
  br label %95

95:                                               ; preds = %92, %45
  %96 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %97 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %103 = call i32 @nvme_fc_delete_hw_io_queues(%struct.nvme_fc_ctrl* %102)
  %104 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %105 = call i32 @nvme_fc_free_io_queues(%struct.nvme_fc_ctrl* %104)
  br label %106

106:                                              ; preds = %101, %95
  %107 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %108 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %109 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = call i32 @__nvme_fc_delete_hw_queue(%struct.nvme_fc_ctrl* %107, i32* %111, i32 0)
  %113 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %114 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = call i32 @nvme_fc_free_queue(i32* %116)
  %118 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %119 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @blk_mq_unquiesce_queue(i32 %121)
  %123 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %124 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %123, i32 0, i32 2
  %125 = call i32 @nvme_start_queues(%struct.TYPE_4__* %124)
  %126 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %127 = call i32 @nvme_fc_ctlr_inactive_on_rport(%struct.nvme_fc_ctrl* %126)
  br label %128

128:                                              ; preds = %106, %8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvme_stop_queues(%struct.TYPE_4__*) #1

declare dso_local i32 @blk_mq_tagset_busy_iter(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @blk_mq_tagset_wait_completed_request(i32*) #1

declare dso_local i32 @blk_mq_quiesce_queue(i32) #1

declare dso_local i32 @nvme_fc_abort_aen_ops(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @nvme_fc_term_aen_ops(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @nvme_fc_xmt_disconnect_assoc(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @nvme_fc_delete_hw_io_queues(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @nvme_fc_free_io_queues(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @__nvme_fc_delete_hw_queue(%struct.nvme_fc_ctrl*, i32*, i32) #1

declare dso_local i32 @nvme_fc_free_queue(i32*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i32) #1

declare dso_local i32 @nvme_start_queues(%struct.TYPE_4__*) #1

declare dso_local i32 @nvme_fc_ctlr_inactive_on_rport(%struct.nvme_fc_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
