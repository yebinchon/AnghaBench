; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_start_dial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_start_dial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_state_t = type { i32, i32, %struct.cardstate*, %struct.bc_state* }
%struct.cardstate = type { i32, i32 }
%struct.bc_state = type { i8**, i32 }

@CHS_NOTIFY_LL = common dso_local global i32 0, align 4
@AT_NUM = common dso_local global i32 0, align 4
@PC_CID = common dso_local global i32 0, align 4
@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Scheduling PC_CID\00", align 1
@PC_NOCID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Scheduling PC_NOCID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_state_t*, i8*, i32)* @start_dial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_dial(%struct.at_state_t* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.at_state_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bc_state*, align 8
  %8 = alloca %struct.cardstate*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.at_state_t* %0, %struct.at_state_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %13 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %12, i32 0, i32 3
  %14 = load %struct.bc_state*, %struct.bc_state** %13, align 8
  store %struct.bc_state* %14, %struct.bc_state** %7, align 8
  %15 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %16 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %15, i32 0, i32 2
  %17 = load %struct.cardstate*, %struct.cardstate** %16, align 8
  store %struct.cardstate* %17, %struct.cardstate** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** %9, align 8
  %20 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %21 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %22 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.cardstate*, %struct.cardstate** %8, align 8
  %26 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %25, i32 0, i32 1
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %30 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.cardstate*, %struct.cardstate** %8, align 8
  %36 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %35, i32 0, i32 1
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %81

39:                                               ; preds = %3
  %40 = load %struct.cardstate*, %struct.cardstate** %8, align 8
  %41 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %40, i32 0, i32 1
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %68, %39
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @AT_NUM, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %50 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load i8**, i8*** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %63 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %61, i8** %67, align 8
  br label %68

68:                                               ; preds = %48
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %44

71:                                               ; preds = %44
  %72 = load i32, i32* @PC_CID, align 4
  %73 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %74 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @DEBUG_EVENT, align 4
  %78 = call i32 @gig_dbg(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.cardstate*, %struct.cardstate** %8, align 8
  %80 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %110

81:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %97, %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @AT_NUM, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i8**, i8*** %9, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @kfree(i8* %91)
  %93 = load i8**, i8*** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* null, i8** %96, align 8
  br label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %82

100:                                              ; preds = %82
  %101 = load i32, i32* @PC_NOCID, align 4
  %102 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %103 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* @DEBUG_EVENT, align 4
  %107 = call i32 @gig_dbg(i32 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.cardstate*, %struct.cardstate** %8, align 8
  %109 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %100, %71
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
