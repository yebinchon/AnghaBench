; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_get_free_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_get_free_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32, i32 }
%struct.cardstate = type { i32, i32, %struct.TYPE_2__*, %struct.bc_state* }
%struct.TYPE_2__ = type { i32 }

@DEBUG_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not get module for allocating channel\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"allocated channel %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"no free channel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bc_state* @gigaset_get_free_channel(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.bc_state*, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %6 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %7 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %6, i32 0, i32 1
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %11 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @try_module_get(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @DEBUG_CHANNEL, align 4
  %19 = call i32 (i32, i8*, ...) @gig_dbg(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %21 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %20, i32 0, i32 1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  store %struct.bc_state* null, %struct.bc_state** %2, align 8
  br label %88

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %72, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %28 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %25
  %32 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %33 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %32, i32 0, i32 3
  %34 = load %struct.bc_state*, %struct.bc_state** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %34, i64 %36
  %38 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %31
  %42 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %43 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %42, i32 0, i32 3
  %44 = load %struct.bc_state*, %struct.bc_state** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %44, i64 %46
  %48 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %52 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %51, i32 0, i32 3
  %53 = load %struct.bc_state*, %struct.bc_state** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %53, i64 %55
  %57 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %59 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %58, i32 0, i32 1
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* @DEBUG_CHANNEL, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32, i8*, ...) @gig_dbg(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %66 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %65, i32 0, i32 3
  %67 = load %struct.bc_state*, %struct.bc_state** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %67, i64 %69
  store %struct.bc_state* %70, %struct.bc_state** %2, align 8
  br label %88

71:                                               ; preds = %31
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %25

75:                                               ; preds = %25
  %76 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %77 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @module_put(i32 %80)
  %82 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %83 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %82, i32 0, i32 1
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* @DEBUG_CHANNEL, align 4
  %87 = call i32 (i32, i8*, ...) @gig_dbg(i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.bc_state* null, %struct.bc_state** %2, align 8
  br label %88

88:                                               ; preds = %75, %41, %17
  %89 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  ret %struct.bc_state* %89
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
