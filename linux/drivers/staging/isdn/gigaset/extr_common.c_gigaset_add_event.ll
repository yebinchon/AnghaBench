; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_t = type { i32, i32, i32, i8*, i8*, %struct.at_state_t* }
%struct.cardstate = type { i32, i32, i32, %struct.event_t*, i32 }
%struct.at_state_t = type { i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"queueing event %d\00", align 1
@MAX_EVENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"event queue full\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_t* @gigaset_add_event(%struct.cardstate* %0, %struct.at_state_t* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.cardstate*, align 8
  %8 = alloca %struct.at_state_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.event_t*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %7, align 8
  store %struct.at_state_t* %1, %struct.at_state_t** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store %struct.event_t* null, %struct.event_t** %16, align 8
  %17 = load i32, i32* @DEBUG_EVENT, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @gig_dbg(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %21 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %20, i32 0, i32 2
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %25 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = add i32 %27, 1
  %29 = load i32, i32* @MAX_EVENTS, align 4
  %30 = urem i32 %28, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %33 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %6
  %40 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %41 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %71

44:                                               ; preds = %6
  %45 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %46 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %45, i32 0, i32 3
  %47 = load %struct.event_t*, %struct.event_t** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.event_t, %struct.event_t* %47, i64 %49
  store %struct.event_t* %50, %struct.event_t** %16, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.event_t*, %struct.event_t** %16, align 8
  %53 = getelementptr inbounds %struct.event_t, %struct.event_t* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.at_state_t*, %struct.at_state_t** %8, align 8
  %55 = load %struct.event_t*, %struct.event_t** %16, align 8
  %56 = getelementptr inbounds %struct.event_t, %struct.event_t* %55, i32 0, i32 5
  store %struct.at_state_t* %54, %struct.at_state_t** %56, align 8
  %57 = load %struct.event_t*, %struct.event_t** %16, align 8
  %58 = getelementptr inbounds %struct.event_t, %struct.event_t* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = load %struct.event_t*, %struct.event_t** %16, align 8
  %61 = getelementptr inbounds %struct.event_t, %struct.event_t* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.event_t*, %struct.event_t** %16, align 8
  %64 = getelementptr inbounds %struct.event_t, %struct.event_t* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.event_t*, %struct.event_t** %16, align 8
  %67 = getelementptr inbounds %struct.event_t, %struct.event_t* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %44, %39
  %72 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %73 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %72, i32 0, i32 2
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.event_t*, %struct.event_t** %16, align 8
  ret %struct.event_t* %76
}

declare dso_local i32 @gig_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
