; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_freebcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_freebcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32**, i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.bc_state*)* }

@DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"freeing bcs[%d]->hw\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"clearing bcs[%d]->at_state\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"freeing bcs[%d]->skb\00", align 1
@AT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_state*)* @gigaset_freebcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_freebcs(%struct.bc_state* %0) #0 {
  %2 = alloca %struct.bc_state*, align 8
  %3 = alloca i32, align 4
  store %struct.bc_state* %0, %struct.bc_state** %2, align 8
  %4 = load i32, i32* @DEBUG_INIT, align 4
  %5 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %6 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @gig_dbg(i32 %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %10 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.bc_state*)*, i32 (%struct.bc_state*)** %14, align 8
  %16 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %17 = call i32 %15(%struct.bc_state* %16)
  %18 = load i32, i32* @DEBUG_INIT, align 4
  %19 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %20 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @gig_dbg(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %24 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %23, i32 0, i32 3
  %25 = call i32 @clear_at_state(i32* %24)
  %26 = load i32, i32* @DEBUG_INIT, align 4
  %27 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %28 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @gig_dbg(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %32 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @dev_kfree_skb(i32* %33)
  %35 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %36 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %56, %1
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @AT_NUM, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %43 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @kfree(i32* %48)
  %50 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %51 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %37

59:                                               ; preds = %37
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, i32) #1

declare dso_local i32 @clear_at_state(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
