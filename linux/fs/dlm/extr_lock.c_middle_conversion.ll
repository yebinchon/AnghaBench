; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_middle_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_middle_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i64, i64 }

@DLM_LOCK_PR = common dso_local global i64 0, align 8
@DLM_LOCK_CW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lkb*)* @middle_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @middle_conversion(%struct.dlm_lkb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_lkb*, align 8
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %3, align 8
  %4 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %5 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DLM_LOCK_PR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %11 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DLM_LOCK_CW, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %17 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DLM_LOCK_PR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %23 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DLM_LOCK_CW, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %9
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %21, %15
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
