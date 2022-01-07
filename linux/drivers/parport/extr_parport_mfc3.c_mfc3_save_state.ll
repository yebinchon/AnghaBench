; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_mfc3.c_mfc3_save_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_mfc3.c_mfc3_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }
%struct.parport_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@PIA_DDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, %struct.parport_state*)* @mfc3_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfc3_save_state(%struct.parport* %0, %struct.parport_state* %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca %struct.parport_state*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  store %struct.parport_state* %1, %struct.parport_state** %4, align 8
  %5 = load %struct.parport*, %struct.parport** %3, align 8
  %6 = call %struct.TYPE_6__* @pia(%struct.parport* %5)
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %10 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @PIA_DDR, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.parport*, %struct.parport** %3, align 8
  %16 = call %struct.TYPE_6__* @pia(%struct.parport* %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load %struct.parport*, %struct.parport** %3, align 8
  %21 = call %struct.TYPE_6__* @pia(%struct.parport* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %25 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @PIA_DDR, align 4
  %29 = load %struct.parport*, %struct.parport** %3, align 8
  %30 = call %struct.TYPE_6__* @pia(%struct.parport* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load %struct.parport*, %struct.parport** %3, align 8
  %35 = call %struct.TYPE_6__* @pia(%struct.parport* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %39 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @PIA_DDR, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.parport*, %struct.parport** %3, align 8
  %45 = call %struct.TYPE_6__* @pia(%struct.parport* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load %struct.parport*, %struct.parport** %3, align 8
  %50 = call %struct.TYPE_6__* @pia(%struct.parport* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %54 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @PIA_DDR, align 4
  %58 = load %struct.parport*, %struct.parport** %3, align 8
  %59 = call %struct.TYPE_6__* @pia(%struct.parport* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  ret void
}

declare dso_local %struct.TYPE_6__* @pia(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
