; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_gigaset_reinitbcshw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_gigaset_reinitbcshw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bas_bc_state* }
%struct.bas_bc_state = type { i32, i32, i32, i64, i32, i64 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_state*)* @gigaset_reinitbcshw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_reinitbcshw(%struct.bc_state* %0) #0 {
  %2 = alloca %struct.bc_state*, align 8
  %3 = alloca %struct.bas_bc_state*, align 8
  store %struct.bc_state* %0, %struct.bc_state** %2, align 8
  %4 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %5 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.bas_bc_state*, %struct.bas_bc_state** %6, align 8
  store %struct.bas_bc_state* %7, %struct.bas_bc_state** %3, align 8
  %8 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %9 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.bas_bc_state*, %struct.bas_bc_state** %10, align 8
  %12 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %14 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.bas_bc_state*, %struct.bas_bc_state** %15, align 8
  %17 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %16, i32 0, i32 4
  %18 = call i32 @atomic_set(i32* %17, i32 0)
  %19 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %20 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.bas_bc_state*, %struct.bas_bc_state** %21, align 8
  %23 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.bas_bc_state*, %struct.bas_bc_state** %3, align 8
  %25 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %24, i32 0, i32 2
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.bas_bc_state*, %struct.bas_bc_state** %3, align 8
  %28 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load i32, i32* @EINPROGRESS, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.bas_bc_state*, %struct.bas_bc_state** %3, align 8
  %33 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
