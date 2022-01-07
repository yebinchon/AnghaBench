; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_remove_from_waiters_ms.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_remove_from_waiters_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dlm_ls* }
%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i64, i32 }

@DLM_IFL_STUB_MS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lkb*, %struct.dlm_message*)* @remove_from_waiters_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_from_waiters_ms(%struct.dlm_lkb* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_lkb*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %7 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %8 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  store %struct.dlm_ls* %11, %struct.dlm_ls** %5, align 8
  %12 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DLM_IFL_STUB_MS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %19 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %23 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %24 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %27 = call i32 @_remove_from_waiters(%struct.dlm_lkb* %22, i32 %25, %struct.dlm_message* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %29 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DLM_IFL_STUB_MS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %35 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %33, %21
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_remove_from_waiters(%struct.dlm_lkb*, i32, %struct.dlm_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
