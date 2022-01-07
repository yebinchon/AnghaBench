; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eadm_private = type { %struct.subchannel* }
%struct.subchannel = type { i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"clear failed\00", align 1
@private = common dso_local global %struct.eadm_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @eadm_subchannel_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eadm_subchannel_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.eadm_private*, align 8
  %4 = alloca %struct.subchannel*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %6 = ptrtoint %struct.eadm_private* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.eadm_private* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.eadm_private* %9, %struct.eadm_private** %3, align 8
  %10 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %11 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %10, i32 0, i32 0
  %12 = load %struct.subchannel*, %struct.subchannel** %11, align 8
  store %struct.subchannel* %12, %struct.subchannel** %4, align 8
  %13 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @spin_lock_irq(i32 %15)
  %17 = call i32 @EADM_LOG(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 1
  %20 = call i32 @EADM_LOG_HEX(i32 1, i32* %19, i32 4)
  %21 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %22 = call i64 @eadm_subchannel_clear(%struct.subchannel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @EADM_LOG(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %1
  %27 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %28 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @spin_unlock_irq(i32 %29)
  ret void
}

declare dso_local %struct.eadm_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @EADM_LOG(i32, i8*) #1

declare dso_local i32 @EADM_LOG_HEX(i32, i32*, i32) #1

declare dso_local i64 @eadm_subchannel_clear(%struct.subchannel*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
