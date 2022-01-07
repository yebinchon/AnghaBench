; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_poll_for_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_poll_for_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visornic_devdata = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@irq_poll_timer = common dso_local global i32 0, align 4
@IOCHAN_FROM_IOPART = common dso_local global i32 0, align 4
@devdata = common dso_local global %struct.visornic_devdata* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @poll_for_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_for_irq(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.visornic_devdata*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.visornic_devdata*, %struct.visornic_devdata** %3, align 8
  %5 = ptrtoint %struct.visornic_devdata* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @irq_poll_timer, align 4
  %8 = call %struct.visornic_devdata* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.visornic_devdata* %8, %struct.visornic_devdata** %3, align 8
  %9 = load %struct.visornic_devdata*, %struct.visornic_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IOCHAN_FROM_IOPART, align 4
  %15 = call i32 @visorchannel_signalempty(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.visornic_devdata*, %struct.visornic_devdata** %3, align 8
  %19 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %18, i32 0, i32 2
  %20 = call i32 @napi_schedule(i32* %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.visornic_devdata*, %struct.visornic_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %22, i32 0, i32 1
  %24 = call i32 @atomic_set(i32* %23, i32 0)
  %25 = load %struct.visornic_devdata*, %struct.visornic_devdata** %3, align 8
  %26 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %25, i32 0, i32 0
  %27 = call i32 @msecs_to_jiffies(i32 2)
  %28 = call i32 @mod_timer(i32* %26, i32 %27)
  ret void
}

declare dso_local %struct.visornic_devdata* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @visorchannel_signalempty(i32, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
