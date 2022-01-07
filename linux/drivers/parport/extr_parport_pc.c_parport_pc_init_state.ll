; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_pc.c_parport_pc_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_pc.c_parport_pc_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pardevice = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.parport_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@PARPORT_IRQ_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pardevice*, %struct.parport_state*)* @parport_pc_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_pc_init_state(%struct.pardevice* %0, %struct.parport_state* %1) #0 {
  %3 = alloca %struct.pardevice*, align 8
  %4 = alloca %struct.parport_state*, align 8
  store %struct.pardevice* %0, %struct.pardevice** %3, align 8
  store %struct.parport_state* %1, %struct.parport_state** %4, align 8
  %5 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %6 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 12, i32* %8, align 4
  %9 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %10 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %15 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PARPORT_IRQ_NONE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %23 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, 16
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %13, %2
  %29 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %30 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 52, i32* %32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
