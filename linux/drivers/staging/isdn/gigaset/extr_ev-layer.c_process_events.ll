; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_process_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i64, i32, i32, %struct.event_t*, i32 }
%struct.event_t = type { i32* }

@MAX_EVENTS = common dso_local global i32 0, align 4
@SEQ_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"infinite loop in process_events; aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*)* @process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_events(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.event_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %11 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %10, i32 0, i32 4
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %15 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %110, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_EVENTS, align 4
  %20 = mul nsw i32 2, %19
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %113

22:                                               ; preds = %17
  %23 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %24 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %34 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %113

38:                                               ; preds = %32, %29
  store i32 0, i32* %7, align 4
  %39 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %40 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %39, i32 0, i32 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %44 = call i32 @process_command_flags(%struct.cardstate* %43)
  %45 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %46 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %45, i32 0, i32 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %50 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %38
  %56 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %57 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %113

61:                                               ; preds = %55
  br label %110

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62, %22
  %64 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %65 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %64, i32 0, i32 5
  %66 = load %struct.event_t*, %struct.event_t** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.event_t, %struct.event_t* %66, i64 %68
  store %struct.event_t* %69, %struct.event_t** %3, align 8
  %70 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %71 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SEQ_NONE, align 8
  %74 = icmp ne i64 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %77 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %76, i32 0, i32 4
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %81 = load %struct.event_t*, %struct.event_t** %3, align 8
  %82 = call i32 @process_event(%struct.cardstate* %80, %struct.event_t* %81)
  %83 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %84 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %83, i32 0, i32 4
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.event_t*, %struct.event_t** %3, align 8
  %88 = getelementptr inbounds %struct.event_t, %struct.event_t* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @kfree(i32* %89)
  %91 = load %struct.event_t*, %struct.event_t** %3, align 8
  %92 = getelementptr inbounds %struct.event_t, %struct.event_t* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %63
  %96 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %97 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SEQ_NONE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 1, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %95, %63
  %103 = load i32, i32* %4, align 4
  %104 = add i32 %103, 1
  %105 = load i32, i32* @MAX_EVENTS, align 4
  %106 = urem i32 %104, %105
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %109 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %102, %61
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %17

113:                                              ; preds = %60, %37, %17
  %114 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %115 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %114, i32 0, i32 4
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @MAX_EVENTS, align 4
  %120 = mul nsw i32 2, %119
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %124 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %113
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @process_command_flags(%struct.cardstate*) #1

declare dso_local i32 @process_event(%struct.cardstate*, %struct.event_t*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
