; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_schedule_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_schedule_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PC_INIT = common dso_local global i32 0, align 4
@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"not scheduling PC_INIT again\00", align 1
@M_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Scheduling PC_INIT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*, i32)* @schedule_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_init(%struct.cardstate* %0, i32 %1) #0 {
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %6 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PC_INIT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @DEBUG_EVENT, align 4
  %14 = call i32 @gig_dbg(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %34

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %18 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @M_UNKNOWN, align 4
  %20 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %21 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %23 = call i32 @gigaset_block_channels(%struct.cardstate* %22)
  %24 = load i32, i32* @PC_INIT, align 4
  %25 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %26 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @DEBUG_EVENT, align 4
  %31 = call i32 @gig_dbg(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %33 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @gigaset_block_channels(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
