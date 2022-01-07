; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_abort_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_abort_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, i32*, i32, i32*)* }
%struct.nvme_fc_fcp_op = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@FCPOP_STATE_ABORTED = common dso_local global i32 0, align 4
@FCPOP_STATE_ACTIVE = common dso_local global i32 0, align 4
@FCCTRL_TERMIO = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*, %struct.nvme_fc_fcp_op*)* @__nvme_fc_abort_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nvme_fc_abort_op(%struct.nvme_fc_ctrl* %0, %struct.nvme_fc_fcp_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_fc_ctrl*, align 8
  %5 = alloca %struct.nvme_fc_fcp_op*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %4, align 8
  store %struct.nvme_fc_fcp_op* %1, %struct.nvme_fc_fcp_op** %5, align 8
  %8 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %9 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %8, i32 0, i32 3
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %12, i32 0, i32 2
  %14 = load i32, i32* @FCPOP_STATE_ABORTED, align 4
  %15 = call i32 @atomic_xchg(i32* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @FCPOP_STATE_ACTIVE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %5, align 8
  %21 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %20, i32 0, i32 2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @atomic_set(i32* %21, i32 %22)
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FCCTRL_TERMIO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %24
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %39 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %38, i32 0, i32 3
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @FCPOP_STATE_ACTIVE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ECANCELED, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %37
  %49 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32 (i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i32, i32*)** %54, align 8
  %56 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %57 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %61 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %5, align 8
  %65 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %5, align 8
  %70 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %69, i32 0, i32 0
  %71 = call i32 %55(i32* %59, i32* %63, i32 %68, i32* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %48, %45
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
