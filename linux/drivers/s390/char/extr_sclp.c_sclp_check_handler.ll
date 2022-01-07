; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_check_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_check_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ext_code = type { i32 }

@IRQEXT_SCP = common dso_local global i32 0, align 4
@sclp_init_sccb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"sclp: unsolicited interrupt for buffer at 0x%x\0A\00", align 1
@sclp_lock = common dso_local global i32 0, align 4
@sclp_running_state = common dso_local global i64 0, align 8
@sclp_running_state_running = common dso_local global i64 0, align 8
@SCLP_REQ_DONE = common dso_local global i32 0, align 4
@sclp_init_req = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sclp_running_state_idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @sclp_check_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_check_handler(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ext_code, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.ext_code, %struct.ext_code* %4, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @IRQEXT_SCP, align 4
  %10 = call i32 @inc_irq_stat(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, -8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %34

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i64, i64* @sclp_init_sccb, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = call i32 @spin_lock(i32* @sclp_lock)
  %26 = load i64, i64* @sclp_running_state, align 8
  %27 = load i64, i64* @sclp_running_state_running, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @SCLP_REQ_DONE, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sclp_init_req, i32 0, i32 0), align 4
  %31 = load i64, i64* @sclp_running_state_idle, align 8
  store i64 %31, i64* @sclp_running_state, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = call i32 @spin_unlock(i32* @sclp_lock)
  br label %34

34:                                               ; preds = %32, %15
  ret void
}

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
