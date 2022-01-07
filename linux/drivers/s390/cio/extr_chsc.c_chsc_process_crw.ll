; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_crw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_crw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei = type { i32 }
%struct.crw = type { i32, i32, i32, i32, i32, i32, i32 }

@sei_page = common dso_local global %struct.chsc_sei* null, align 8
@.str = private unnamed_addr constant [71 x i8] c"CRW reports slct=%d, oflw=%d, chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"prcss\00", align 1
@CHSC_SEI_NT0 = common dso_local global i32 0, align 4
@CHSC_SEI_NT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crw*, %struct.crw*, i32)* @chsc_process_crw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_crw(%struct.crw* %0, %struct.crw* %1, i32 %2) #0 {
  %4 = alloca %struct.crw*, align 8
  %5 = alloca %struct.crw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chsc_sei*, align 8
  store %struct.crw* %0, %struct.crw** %4, align 8
  store %struct.crw* %1, %struct.crw** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.chsc_sei*, %struct.chsc_sei** @sei_page, align 8
  store %struct.chsc_sei* %8, %struct.chsc_sei** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 (...) @css_schedule_eval_all()
  br label %42

13:                                               ; preds = %3
  %14 = load %struct.crw*, %struct.crw** %4, align 8
  %15 = getelementptr inbounds %struct.crw, %struct.crw* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.crw*, %struct.crw** %4, align 8
  %18 = getelementptr inbounds %struct.crw, %struct.crw* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.crw*, %struct.crw** %4, align 8
  %21 = getelementptr inbounds %struct.crw, %struct.crw* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.crw*, %struct.crw** %4, align 8
  %24 = getelementptr inbounds %struct.crw, %struct.crw* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.crw*, %struct.crw** %4, align 8
  %27 = getelementptr inbounds %struct.crw, %struct.crw* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.crw*, %struct.crw** %4, align 8
  %30 = getelementptr inbounds %struct.crw, %struct.crw* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.crw*, %struct.crw** %4, align 8
  %33 = getelementptr inbounds %struct.crw, %struct.crw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = call i32 @CIO_TRACE_EVENT(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.chsc_sei*, %struct.chsc_sei** %7, align 8
  %38 = load i32, i32* @CHSC_SEI_NT0, align 4
  %39 = load i32, i32* @CHSC_SEI_NT2, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @chsc_process_event_information(%struct.chsc_sei* %37, i32 %40)
  br label %42

42:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @css_schedule_eval_all(...) #1

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @chsc_process_event_information(%struct.chsc_sei*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
