; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.eadm_scsw }
%struct.eadm_scsw = type { i32, i32, i32, i64 }
%struct.eadm_private = type { i64, i64 }
%struct.irb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.aob = type { i32 }

@cio_irb = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@IRQIO_ADM = common dso_local global i32 0, align 4
@SCSW_STCTL_ALERT_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@SCSW_FCTL_CLEAR_FUNC = common dso_local global i32 0, align 4
@BLK_STS_TIMEOUT = common dso_local global i32 0, align 4
@EADM_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"irq unsol\00", align 1
@EADM_NOT_OPER = common dso_local global i64 0, align 8
@SCH_TODO_EVAL = common dso_local global i32 0, align 4
@EADM_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @eadm_subchannel_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eadm_subchannel_irq(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.eadm_private*, align 8
  %4 = alloca %struct.eadm_scsw*, align 8
  %5 = alloca %struct.irb*, align 8
  %6 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %7 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %8 = call %struct.eadm_private* @get_eadm_private(%struct.subchannel* %7)
  store %struct.eadm_private* %8, %struct.eadm_private** %3, align 8
  %9 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.eadm_scsw* %12, %struct.eadm_scsw** %4, align 8
  %13 = call %struct.irb* @this_cpu_ptr(i32* @cio_irb)
  store %struct.irb* %13, %struct.irb** %5, align 8
  %14 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %14, i32* %6, align 4
  %15 = call i32 @EADM_LOG(i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.irb*, %struct.irb** %5, align 8
  %17 = call i32 @EADM_LOG_HEX(i32 6, %struct.irb* %16, i32 8)
  %18 = load i32, i32* @IRQIO_ADM, align 4
  %19 = call i32 @inc_irq_stat(i32 %18)
  %20 = load %struct.eadm_scsw*, %struct.eadm_scsw** %4, align 8
  %21 = getelementptr inbounds %struct.eadm_scsw, %struct.eadm_scsw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %24 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %1
  %29 = load %struct.eadm_scsw*, %struct.eadm_scsw** %4, align 8
  %30 = getelementptr inbounds %struct.eadm_scsw, %struct.eadm_scsw* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.irb*, %struct.irb** %5, align 8
  %35 = getelementptr inbounds %struct.irb, %struct.irb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %33, %28, %1
  %44 = load %struct.eadm_scsw*, %struct.eadm_scsw** %4, align 8
  %45 = getelementptr inbounds %struct.eadm_scsw, %struct.eadm_scsw* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SCSW_FCTL_CLEAR_FUNC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @BLK_STS_TIMEOUT, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %43
  %53 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %54 = call i32 @eadm_subchannel_set_timeout(%struct.subchannel* %53, i32 0)
  %55 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %56 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EADM_BUSY, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = call i32 @EADM_LOG(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.irb*, %struct.irb** %5, align 8
  %63 = call i32 @EADM_LOG_HEX(i32 1, %struct.irb* %62, i32 8)
  %64 = load i64, i64* @EADM_NOT_OPER, align 8
  %65 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %66 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %68 = load i32, i32* @SCH_TODO_EVAL, align 4
  %69 = call i32 @css_sched_sch_todo(%struct.subchannel* %67, i32 %68)
  br label %89

70:                                               ; preds = %52
  %71 = load %struct.eadm_scsw*, %struct.eadm_scsw** %4, align 8
  %72 = getelementptr inbounds %struct.eadm_scsw, %struct.eadm_scsw* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.aob*
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @scm_irq_handler(%struct.aob* %74, i32 %75)
  %77 = load i64, i64* @EADM_IDLE, align 8
  %78 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %79 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %81 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %70
  %85 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %86 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @complete(i64 %87)
  br label %89

89:                                               ; preds = %60, %84, %70
  ret void
}

declare dso_local %struct.eadm_private* @get_eadm_private(%struct.subchannel*) #1

declare dso_local %struct.irb* @this_cpu_ptr(i32*) #1

declare dso_local i32 @EADM_LOG(i32, i8*) #1

declare dso_local i32 @EADM_LOG_HEX(i32, %struct.irb*, i32) #1

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i32 @eadm_subchannel_set_timeout(%struct.subchannel*, i32) #1

declare dso_local i32 @css_sched_sch_todo(%struct.subchannel*, i32) #1

declare dso_local i32 @scm_irq_handler(%struct.aob*, i32) #1

declare dso_local i32 @complete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
