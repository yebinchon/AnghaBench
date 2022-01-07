; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_munge_demoted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_munge_demoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i64, i64, i32 }

@DLM_LOCK_IV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"munge_demoted %x invalid modes gr %d rq %d\00", align 1
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lkb*)* @munge_demoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @munge_demoted(%struct.dlm_lkb* %0) #0 {
  %2 = alloca %struct.dlm_lkb*, align 8
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %2, align 8
  %3 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DLM_LOCK_IV, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %10 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DLM_LOCK_IV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8, %1
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %16 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %19 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %22 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @log_print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %20, i64 %23)
  br label %29

25:                                               ; preds = %8
  %26 = load i64, i64* @DLM_LOCK_NL, align 8
  %27 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %28 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %14
  ret void
}

declare dso_local i32 @log_print(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
