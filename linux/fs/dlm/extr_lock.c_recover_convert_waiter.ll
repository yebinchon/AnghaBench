; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_recover_convert_waiter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_recover_convert_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { i64, i64, i32, i32, i32 }
%struct.dlm_message = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DLM_IFL_STUB_MS = common dso_local global i32 0, align 4
@DLM_MSG_CONVERT_REPLY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i64 0, align 8
@RSB_RECOVER_CONVERT = common dso_local global i32 0, align 4
@DLM_IFL_RESEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_message*)* @recover_convert_waiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recover_convert_waiter(%struct.dlm_ls* %0, %struct.dlm_lkb* %1, %struct.dlm_message* %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_message*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store %struct.dlm_message* %2, %struct.dlm_message** %6, align 8
  %7 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %8 = call i64 @middle_conversion(%struct.dlm_lkb* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %3
  %11 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %12 = call i32 @hold_lkb(%struct.dlm_lkb* %11)
  %13 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %14 = call i32 @memset(%struct.dlm_message* %13, i32 0, i32 16)
  %15 = load i32, i32* @DLM_IFL_STUB_MS, align 4
  %16 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %17 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DLM_MSG_CONVERT_REPLY, align 4
  %19 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %20 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @EINPROGRESS, align 4
  %22 = sub nsw i32 0, %21
  %23 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %24 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %26 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %29 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %32 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %33 = call i32 @_receive_convert_reply(%struct.dlm_lkb* %31, %struct.dlm_message* %32)
  %34 = load i64, i64* @DLM_LOCK_IV, align 8
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RSB_RECOVER_CONVERT, align 4
  %41 = call i32 @rsb_set_flag(i32 %39, i32 %40)
  %42 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %43 = call i32 @unhold_lkb(%struct.dlm_lkb* %42)
  br label %59

44:                                               ; preds = %3
  %45 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %46 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %49 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32, i32* @DLM_IFL_RESEND, align 4
  %54 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %55 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %44
  br label %59

59:                                               ; preds = %58, %10
  ret void
}

declare dso_local i64 @middle_conversion(%struct.dlm_lkb*) #1

declare dso_local i32 @hold_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @memset(%struct.dlm_message*, i32, i32) #1

declare dso_local i32 @_receive_convert_reply(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @rsb_set_flag(i32, i32) #1

declare dso_local i32 @unhold_lkb(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
