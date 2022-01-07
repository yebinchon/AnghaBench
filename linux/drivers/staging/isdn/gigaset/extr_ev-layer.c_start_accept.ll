; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_start_accept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_start_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_state_t = type { i32, %struct.cardstate*, %struct.bc_state* }
%struct.cardstate = type { i32, i32 }
%struct.bc_state = type { i32, i32, i32** }

@AT_NUM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AT_PROTO = common dso_local global i64 0, align 8
@AT_ISO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@PC_HUP = common dso_local global i32 0, align 4
@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Scheduling PC_HUP\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"^SBPR=%u\0D\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"^SISO=%u\0D\00", align 1
@PC_ACCEPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Scheduling PC_ACCEPT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_state_t*)* @start_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_accept(%struct.at_state_t* %0) #0 {
  %2 = alloca %struct.at_state_t*, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.bc_state*, align 8
  %5 = alloca i32, align 4
  store %struct.at_state_t* %0, %struct.at_state_t** %2, align 8
  %6 = load %struct.at_state_t*, %struct.at_state_t** %2, align 8
  %7 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %6, i32 0, i32 1
  %8 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  store %struct.cardstate* %8, %struct.cardstate** %3, align 8
  %9 = load %struct.at_state_t*, %struct.at_state_t** %2, align 8
  %10 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %9, i32 0, i32 2
  %11 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  store %struct.bc_state* %11, %struct.bc_state** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @AT_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %18 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %17, i32 0, i32 2
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %26 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i8* @kmalloc(i32 9, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %39 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %38, i32 0, i32 2
  %40 = load i32**, i32*** %39, align 8
  %41 = load i64, i64* @AT_PROTO, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  store i32* %37, i32** %42, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i8* @kmalloc(i32 9, i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %47 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %46, i32 0, i32 2
  %48 = load i32**, i32*** %47, align 8
  %49 = load i64, i64* @AT_ISO, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  store i32* %45, i32** %50, align 8
  %51 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %52 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %51, i32 0, i32 2
  %53 = load i32**, i32*** %52, align 8
  %54 = load i64, i64* @AT_PROTO, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %34
  %59 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %60 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = load i64, i64* @AT_ISO, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %82, label %66

66:                                               ; preds = %58, %34
  %67 = load %struct.at_state_t*, %struct.at_state_t** %2, align 8
  %68 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %67, i32 0, i32 1
  %69 = load %struct.cardstate*, %struct.cardstate** %68, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @PC_HUP, align 4
  %74 = load %struct.at_state_t*, %struct.at_state_t** %2, align 8
  %75 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @DEBUG_EVENT, align 4
  %79 = call i32 @gig_dbg(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %81 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %113

82:                                               ; preds = %58
  %83 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %84 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = load i64, i64* @AT_PROTO, align 8
  %87 = getelementptr inbounds i32*, i32** %85, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %90 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @snprintf(i32* %88, i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %94 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %93, i32 0, i32 2
  %95 = load i32**, i32*** %94, align 8
  %96 = load i64, i64* @AT_ISO, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %100 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @snprintf(i32* %98, i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @PC_ACCEPT, align 4
  %105 = load %struct.at_state_t*, %struct.at_state_t** %2, align 8
  %106 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* @DEBUG_EVENT, align 4
  %110 = call i32 @gig_dbg(i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %111 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %112 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %82, %66
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
