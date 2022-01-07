; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_drv.c_vfio_ccw_sch_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_drv.c_vfio_ccw_sch_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vfio_ccw_private = type { i32, i32* }

@completion = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"vfio_ccw: could not quiesce subchannel 0.%x.%04x!\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@vfio_ccw_work_q = common dso_local global i32 0, align 4
@VFIO_CCW_STATE_NOT_OPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_ccw_sch_quiesce(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.vfio_ccw_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %6 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %7 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %6, i32 0, i32 3
  %8 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32* %7)
  store %struct.vfio_ccw_private* %8, %struct.vfio_ccw_private** %3, align 8
  %9 = load i32, i32* @completion, align 4
  %10 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %9)
  store i32 0, i32* %5, align 4
  %11 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %12 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @spin_lock_irq(i32 %13)
  %15 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %16 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %80

22:                                               ; preds = %1
  %23 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %24 = call i32 @cio_disable_subchannel(%struct.subchannel* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %80

30:                                               ; preds = %22
  store i32 255, i32* %4, align 4
  br label %31

31:                                               ; preds = %74, %30
  %32 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %33 = call i32 @cio_cancel_halt_clear(%struct.subchannel* %32, i32* %4)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %40 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %44 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  br label %79

48:                                               ; preds = %31
  %49 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %50 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %49, i32 0, i32 1
  store i32* @completion, i32** %50, align 8
  %51 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %52 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @spin_unlock_irq(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i32, i32* @HZ, align 4
  %61 = mul nsw i32 3, %60
  %62 = call i32 @wait_for_completion_timeout(i32* @completion, i32 %61)
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %65 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* @vfio_ccw_work_q, align 4
  %67 = call i32 @flush_workqueue(i32 %66)
  %68 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %69 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @spin_lock_irq(i32 %70)
  %72 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %73 = call i32 @cio_disable_subchannel(%struct.subchannel* %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %31, label %79

79:                                               ; preds = %74, %38
  br label %80

80:                                               ; preds = %79, %29, %21
  %81 = load i32, i32* @VFIO_CCW_STATE_NOT_OPER, align 4
  %82 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %83 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %85 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @spin_unlock_irq(i32 %86)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.vfio_ccw_private* @dev_get_drvdata(i32*) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

declare dso_local i32 @cio_cancel_halt_clear(%struct.subchannel*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
