; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_check_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_check_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.init_sccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@sclp_lock = common dso_local global i32 0, align 4
@EXT_IRQ_SERVICE_SIG = common dso_local global i32 0, align 4
@sclp_check_handler = common dso_local global i32 0, align 4
@SCLP_INIT_RETRY = common dso_local global i32 0, align 4
@sclp_init_req = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EIO = common dso_local global i32 0, align 4
@SCLP_REQ_RUNNING = common dso_local global i64 0, align 8
@sclp_running_state_running = common dso_local global i32 0, align 4
@sclp_running_state = common dso_local global i32 0, align 4
@SCLP_RETRY_INTERVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@sclp_check_timeout = common dso_local global i32 0, align 4
@IRQ_SUBCLASS_SERVICE_SIGNAL = common dso_local global i32 0, align 4
@sclp_request_timer = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SCLP_REQ_DONE = common dso_local global i64 0, align 8
@sclp_mask_compat_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sclp_check_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_check_interface() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.init_sccb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %6)
  %8 = load i32, i32* @EXT_IRQ_SERVICE_SIG, align 4
  %9 = load i32, i32* @sclp_check_handler, align 4
  %10 = call i32 @register_external_irq(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %14)
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %1, align 4
  br label %88

17:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %78, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SCLP_INIT_RETRY, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %18
  %23 = call i32 @__sclp_make_init_req(i32 0, i32 0)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_init_req, i32 0, i32 2), align 8
  %25 = inttoptr i64 %24 to %struct.init_sccb*
  store %struct.init_sccb* %25, %struct.init_sccb** %2, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_init_req, i32 0, i32 1), align 8
  %27 = load %struct.init_sccb*, %struct.init_sccb** %2, align 8
  %28 = call i32 @sclp_service_call(i32 %26, %struct.init_sccb* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %81

34:                                               ; preds = %22
  %35 = load i64, i64* @SCLP_REQ_RUNNING, align 8
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_init_req, i32 0, i32 0), align 8
  %36 = load i32, i32* @sclp_running_state_running, align 4
  store i32 %36, i32* @sclp_running_state, align 4
  %37 = load i32, i32* @SCLP_RETRY_INTERVAL, align 4
  %38 = load i32, i32* @HZ, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @sclp_check_timeout, align 4
  %41 = call i32 @__sclp_set_request_timer(i32 %39, i32 %40)
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %42)
  %44 = load i32, i32* @IRQ_SUBCLASS_SERVICE_SIGNAL, align 4
  %45 = call i32 @irq_subclass_register(i32 %44)
  %46 = call i32 (...) @sclp_sync_wait()
  %47 = load i32, i32* @IRQ_SUBCLASS_SERVICE_SIGNAL, align 4
  %48 = call i32 @irq_subclass_unregister(i32 %47)
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %49)
  %51 = call i32 @del_timer(i32* @sclp_request_timer)
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_init_req, i32 0, i32 0), align 8
  %55 = load i64, i64* @SCLP_REQ_DONE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %34
  %58 = load %struct.init_sccb*, %struct.init_sccb** %2, align 8
  %59 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %81

64:                                               ; preds = %57
  %65 = load %struct.init_sccb*, %struct.init_sccb** %2, align 8
  %66 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 29936
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32, i32* @sclp_mask_compat_mode, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 1, i32* @sclp_mask_compat_mode, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %70
  br label %75

75:                                               ; preds = %74, %64
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %34
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %18

81:                                               ; preds = %63, %33, %18
  %82 = load i32, i32* @EXT_IRQ_SERVICE_SIG, align 4
  %83 = load i32, i32* @sclp_check_handler, align 4
  %84 = call i32 @unregister_external_irq(i32 %82, i32 %83)
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %1, align 4
  br label %88

88:                                               ; preds = %81, %13
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @register_external_irq(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__sclp_make_init_req(i32, i32) #1

declare dso_local i32 @sclp_service_call(i32, %struct.init_sccb*) #1

declare dso_local i32 @__sclp_set_request_timer(i32, i32) #1

declare dso_local i32 @irq_subclass_register(i32) #1

declare dso_local i32 @sclp_sync_wait(...) #1

declare dso_local i32 @irq_subclass_unregister(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @unregister_external_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
