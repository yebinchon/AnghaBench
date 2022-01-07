; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_initbcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_initbcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32, i32, i64, i32*, i32, i32**, i32, i64, i64, %struct.cardstate*, i64, i32, i32*, i64, i64, i32, i64, i64, i64, i32, i32* }
%struct.cardstate = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.bc_state*)* }

@DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"setting up bcs[%d]->at_state\00", align 1
@PPP_INITFCS = common dso_local global i32 0, align 4
@AT_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"  setting up bcs[%d]->hw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_state*, %struct.cardstate*, i32)* @gigaset_initbcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_initbcs(%struct.bc_state* %0, %struct.cardstate* %1, i32 %2) #0 {
  %4 = alloca %struct.bc_state*, align 8
  %5 = alloca %struct.cardstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bc_state* %0, %struct.bc_state** %4, align 8
  store %struct.cardstate* %1, %struct.cardstate** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %9 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %8, i32 0, i32 20
  store i32* null, i32** %9, align 8
  %10 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %11 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %10, i32 0, i32 19
  %12 = call i32 @skb_queue_head_init(i32* %11)
  %13 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %14 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %13, i32 0, i32 18
  store i64 0, i64* %14, align 8
  %15 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %16 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %15, i32 0, i32 17
  store i64 0, i64* %16, align 8
  %17 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %18 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %17, i32 0, i32 16
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @DEBUG_INIT, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @gig_dbg(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %23 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %22, i32 0, i32 15
  %24 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %25 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %26 = call i32 @gigaset_at_init(i32* %23, %struct.bc_state* %24, %struct.cardstate* %25, i32 -1)
  %27 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %28 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %27, i32 0, i32 13
  store i64 0, i64* %28, align 8
  %29 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %30 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %29, i32 0, i32 12
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @PPP_INITFCS, align 4
  %32 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %33 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %32, i32 0, i32 11
  store i32 %31, i32* %33, align 8
  %34 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %35 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %34, i32 0, i32 10
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %38 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %40 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %41 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %40, i32 0, i32 9
  store %struct.cardstate* %39, %struct.cardstate** %41, align 8
  %42 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %43 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %42, i32 0, i32 8
  store i64 0, i64* %43, align 8
  %44 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %45 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %47 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %49 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %52 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %64, %3
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @AT_NUM, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %59 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %58, i32 0, i32 5
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %53

67:                                               ; preds = %53
  %68 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %69 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %68, i32 0, i32 4
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %72 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  %73 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %74 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @DEBUG_INIT, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @gig_dbg(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %79 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (%struct.bc_state*)*, i32 (%struct.bc_state*)** %81, align 8
  %83 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %84 = call i32 %82(%struct.bc_state* %83)
  ret i32 %84
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @gig_dbg(i32, i8*, i32) #1

declare dso_local i32 @gigaset_at_init(i32*, %struct.bc_state*, %struct.cardstate*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
