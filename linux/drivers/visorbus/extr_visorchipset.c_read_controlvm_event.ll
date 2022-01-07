; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_read_controlvm_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_read_controlvm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.controlvm_message = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@chipset_dev = common dso_local global %struct.TYPE_6__* null, align 8
@CONTROLVM_QUEUE_EVENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controlvm_message*)* @read_controlvm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_controlvm_event(%struct.controlvm_message* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controlvm_message*, align 8
  %4 = alloca i32, align 4
  store %struct.controlvm_message* %0, %struct.controlvm_message** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @chipset_dev, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CONTROLVM_QUEUE_EVENT, align 4
  %9 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %10 = call i32 @visorchannel_signalremove(i32 %7, i32 %8, %struct.controlvm_message* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %17 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %22, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @visorchannel_signalremove(i32, i32, %struct.controlvm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
