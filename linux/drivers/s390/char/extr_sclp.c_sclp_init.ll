; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sclp_lock = common dso_local global i32 0, align 4
@sclp_init_state = common dso_local global i64 0, align 8
@sclp_init_state_uninitialized = common dso_local global i64 0, align 8
@sclp_init_state_initializing = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@sclp_read_sccb = common dso_local global i8* null, align 8
@sclp_init_sccb = common dso_local global i8* null, align 8
@sclp_req_queue = common dso_local global i32 0, align 4
@sclp_reg_list = common dso_local global i32 0, align 4
@sclp_state_change_event = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sclp_request_timer = common dso_local global i32 0, align 4
@sclp_queue_timer = common dso_local global i32 0, align 4
@sclp_req_queue_timeout = common dso_local global i32* null, align 8
@sclp_reboot_notifier = common dso_local global i32 0, align 4
@EXT_IRQ_SERVICE_SIG = common dso_local global i32 0, align 4
@sclp_interrupt_handler = common dso_local global i32 0, align 4
@sclp_init_state_initialized = common dso_local global i64 0, align 8
@IRQ_SUBCLASS_SERVICE_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sclp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %4)
  %6 = load i64, i64* @sclp_init_state, align 8
  %7 = load i64, i64* @sclp_init_state_uninitialized, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %75

10:                                               ; preds = %0
  %11 = load i64, i64* @sclp_init_state_initializing, align 8
  store i64 %11, i64* @sclp_init_state, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @__get_free_page(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** @sclp_read_sccb, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = load i32, i32* @GFP_DMA, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @__get_free_page(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** @sclp_init_sccb, align 8
  %22 = load i8*, i8** @sclp_read_sccb, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %10
  %25 = load i8*, i8** @sclp_init_sccb, align 8
  %26 = icmp ne i8* %25, null
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %10
  %29 = phi i1 [ true, %10 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = call i32 @INIT_LIST_HEAD(i32* @sclp_req_queue)
  %33 = call i32 @INIT_LIST_HEAD(i32* @sclp_reg_list)
  %34 = call i32 @list_add(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sclp_state_change_event, i32 0, i32 0), i32* @sclp_reg_list)
  %35 = call i32 @timer_setup(i32* @sclp_request_timer, i32* null, i32 0)
  %36 = load i32*, i32** @sclp_req_queue_timeout, align 8
  %37 = call i32 @timer_setup(i32* @sclp_queue_timer, i32* %36, i32 0)
  %38 = load i64, i64* %2, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %38)
  %40 = call i32 (...) @sclp_check_interface()
  store i32 %40, i32* %3, align 4
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %41)
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %67

46:                                               ; preds = %28
  %47 = call i32 @register_reboot_notifier(i32* @sclp_reboot_notifier)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %67

51:                                               ; preds = %46
  %52 = load i32, i32* @EXT_IRQ_SERVICE_SIG, align 4
  %53 = load i32, i32* @sclp_interrupt_handler, align 4
  %54 = call i32 @register_external_irq(i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %65

58:                                               ; preds = %51
  %59 = load i64, i64* @sclp_init_state_initialized, align 8
  store i64 %59, i64* @sclp_init_state, align 8
  %60 = load i64, i64* %2, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %60)
  %62 = load i32, i32* @IRQ_SUBCLASS_SERVICE_SIGNAL, align 4
  %63 = call i32 @irq_subclass_register(i32 %62)
  %64 = call i32 @sclp_init_mask(i32 1)
  store i32 0, i32* %1, align 4
  br label %79

65:                                               ; preds = %57
  %66 = call i32 @unregister_reboot_notifier(i32* @sclp_reboot_notifier)
  br label %67

67:                                               ; preds = %65, %50, %45
  %68 = load i64, i64* @sclp_init_state_uninitialized, align 8
  store i64 %68, i64* @sclp_init_state, align 8
  %69 = load i8*, i8** @sclp_read_sccb, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = call i32 @free_page(i64 %70)
  %72 = load i8*, i8** @sclp_init_sccb, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = call i32 @free_page(i64 %73)
  br label %75

75:                                               ; preds = %67, %9
  %76 = load i64, i64* %2, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %76)
  %78 = load i32, i32* %3, align 4
  store i32 %78, i32* %1, align 4
  br label %79

79:                                               ; preds = %75, %58
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sclp_check_interface(...) #1

declare dso_local i32 @register_reboot_notifier(i32*) #1

declare dso_local i32 @register_external_irq(i32, i32) #1

declare dso_local i32 @irq_subclass_register(i32) #1

declare dso_local i32 @sclp_init_mask(i32) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
