; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_bchannel_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_bchannel_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32 }

@CHS_B_UP = common dso_local global i32 0, align 4
@CHS_D_UP = common dso_local global i32 0, align 4
@CHS_NOTIFY_LL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_state*)* @bchannel_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bchannel_down(%struct.bc_state* %0) #0 {
  %2 = alloca %struct.bc_state*, align 8
  store %struct.bc_state* %0, %struct.bc_state** %2, align 8
  %3 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %4 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CHS_B_UP, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @CHS_B_UP, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %13 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %17 = call i32 @gigaset_isdn_hupB(%struct.bc_state* %16)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %20 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CHS_D_UP, align 4
  %23 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @CHS_D_UP, align 4
  %29 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %33 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %37 = call i32 @gigaset_isdn_hupD(%struct.bc_state* %36)
  br label %38

38:                                               ; preds = %27, %18
  %39 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %40 = call i32 @gigaset_free_channel(%struct.bc_state* %39)
  %41 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %42 = call i32 @gigaset_bcs_reinit(%struct.bc_state* %41)
  ret void
}

declare dso_local i32 @gigaset_isdn_hupB(%struct.bc_state*) #1

declare dso_local i32 @gigaset_isdn_hupD(%struct.bc_state*) #1

declare dso_local i32 @gigaset_free_channel(%struct.bc_state*) #1

declare dso_local i32 @gigaset_bcs_reinit(%struct.bc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
