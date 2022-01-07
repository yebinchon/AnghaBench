; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_add_cid_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_add_cid_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, %struct.event_t*, i32 }
%struct.event_t = type { i32, i32, i32, i32*, i32*, i8* }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"queueing event %d for cid %d\00", align 1
@MAX_EVENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"event queue full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*, i32, i32, i8*, i32)* @add_cid_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cid_event(%struct.cardstate* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.cardstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.event_t*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @DEBUG_EVENT, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @gig_dbg(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %20 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %19, i32 0, i32 2
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %24 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = add i32 %26, 1
  %28 = load i32, i32* @MAX_EVENTS, align 4
  %29 = urem i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %32 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %5
  %39 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %40 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @kfree(i8* %43)
  br label %71

45:                                               ; preds = %5
  %46 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %47 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %46, i32 0, i32 3
  %48 = load %struct.event_t*, %struct.event_t** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.event_t, %struct.event_t* %48, i64 %50
  store %struct.event_t* %51, %struct.event_t** %14, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.event_t*, %struct.event_t** %14, align 8
  %54 = getelementptr inbounds %struct.event_t, %struct.event_t* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.event_t*, %struct.event_t** %14, align 8
  %57 = getelementptr inbounds %struct.event_t, %struct.event_t* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.event_t*, %struct.event_t** %14, align 8
  %60 = getelementptr inbounds %struct.event_t, %struct.event_t* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load %struct.event_t*, %struct.event_t** %14, align 8
  %62 = getelementptr inbounds %struct.event_t, %struct.event_t* %61, i32 0, i32 4
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.event_t*, %struct.event_t** %14, align 8
  %65 = getelementptr inbounds %struct.event_t, %struct.event_t* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.event_t*, %struct.event_t** %14, align 8
  %67 = getelementptr inbounds %struct.event_t, %struct.event_t* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %45, %38
  %72 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %73 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %72, i32 0, i32 2
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
