; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_schedule_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_schedule_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32 }
%struct.at_state_t = type { i32 }

@RSP_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*, %struct.at_state_t*, i32)* @schedule_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_sequence(%struct.cardstate* %0, %struct.at_state_t* %1, i32 %2) #0 {
  %4 = alloca %struct.cardstate*, align 8
  %5 = alloca %struct.at_state_t*, align 8
  %6 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %4, align 8
  store %struct.at_state_t* %1, %struct.at_state_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %9 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %11 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %12 = load i32, i32* @RSP_INIT, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @gigaset_add_event(%struct.cardstate* %10, %struct.at_state_t* %11, i32 %12, i32* null, i32 %13, i32* null)
  ret void
}

declare dso_local i32 @gigaset_add_event(%struct.cardstate*, %struct.at_state_t*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
