; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_uss720.c_parport_uss720_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_uss720.c_parport_uss720_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pardevice = type { i64 }
%struct.parport_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pardevice*, %struct.parport_state*)* @parport_uss720_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_uss720_init_state(%struct.pardevice* %0, %struct.parport_state* %1) #0 {
  %3 = alloca %struct.pardevice*, align 8
  %4 = alloca %struct.parport_state*, align 8
  store %struct.pardevice* %0, %struct.pardevice** %3, align 8
  store %struct.parport_state* %1, %struct.parport_state** %4, align 8
  %5 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %6 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 16, i32 0
  %11 = or i32 12, %10
  %12 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %13 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %17 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 36, i32* %19, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
