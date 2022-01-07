; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_disconnect_bc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_disconnect_bc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_state_t = type { i32 }
%struct.cardstate = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.bc_state*)* }
%struct.TYPE_3__ = type { i32 }
%struct.bc_state = type { i32 }

@PC_UMMODE = common dso_local global i32 0, align 4
@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Scheduling PC_UMMODE\00", align 1
@CHS_D_UP = common dso_local global i32 0, align 4
@CHS_NOTIFY_LL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_state_t*, %struct.cardstate*, %struct.bc_state*)* @disconnect_bc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disconnect_bc(%struct.at_state_t* %0, %struct.cardstate* %1, %struct.bc_state* %2) #0 {
  %4 = alloca %struct.at_state_t*, align 8
  %5 = alloca %struct.cardstate*, align 8
  %6 = alloca %struct.bc_state*, align 8
  %7 = alloca i64, align 8
  store %struct.at_state_t* %0, %struct.at_state_t** %4, align 8
  store %struct.cardstate* %1, %struct.cardstate** %5, align 8
  store %struct.bc_state* %2, %struct.bc_state** %6, align 8
  %8 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %9 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %8, i32 0, i32 2
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %13 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %17 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @PC_UMMODE, align 4
  %22 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %23 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @DEBUG_EVENT, align 4
  %28 = call i32 @gig_dbg(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %20, %3
  %32 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %33 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %32, i32 0, i32 2
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %37 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.bc_state*)*, i32 (%struct.bc_state*)** %39, align 8
  %41 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %42 = call i32 %40(%struct.bc_state* %41)
  %43 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %44 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CHS_D_UP, align 4
  %47 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %31
  %52 = load i32, i32* @CHS_D_UP, align 4
  %53 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %57 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %61 = call i32 @gigaset_isdn_hupD(%struct.bc_state* %60)
  br label %62

62:                                               ; preds = %51, %31
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gigaset_isdn_hupD(%struct.bc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
