; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.dlm_lkb, %struct.dlm_rsb }
%struct.dlm_lkb = type { %struct.dlm_rsb* }
%struct.dlm_rsb = type { i32 }
%struct.dlm_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_message*)* @receive_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_cancel(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_message*, align 8
  %6 = alloca %struct.dlm_lkb*, align 8
  %7 = alloca %struct.dlm_rsb*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %5, align 8
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %10 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %11 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @find_lkb(%struct.dlm_ls* %9, i32 %12, %struct.dlm_lkb** %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %19 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %20 = call i32 @receive_flags(%struct.dlm_lkb* %18, %struct.dlm_message* %19)
  %21 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %22 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %21, i32 0, i32 0
  %23 = load %struct.dlm_rsb*, %struct.dlm_rsb** %22, align 8
  store %struct.dlm_rsb* %23, %struct.dlm_rsb** %7, align 8
  %24 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %25 = call i32 @hold_rsb(%struct.dlm_rsb* %24)
  %26 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %27 = call i32 @lock_rsb(%struct.dlm_rsb* %26)
  %28 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %29 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %30 = call i32 @validate_message(%struct.dlm_lkb* %28, %struct.dlm_message* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %46

34:                                               ; preds = %17
  %35 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %36 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %37 = call i32 @do_cancel(%struct.dlm_rsb* %35, %struct.dlm_lkb* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %39 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @send_cancel_reply(%struct.dlm_rsb* %38, %struct.dlm_lkb* %39, i32 %40)
  %42 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %43 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @do_cancel_effects(%struct.dlm_rsb* %42, %struct.dlm_lkb* %43, i32 %44)
  br label %46

46:                                               ; preds = %34, %33
  %47 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %48 = call i32 @unlock_rsb(%struct.dlm_rsb* %47)
  %49 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %50 = call i32 @put_rsb(%struct.dlm_rsb* %49)
  %51 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %52 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %51)
  store i32 0, i32* %3, align 4
  br label %64

53:                                               ; preds = %16
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %55 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %56 = call i32 @setup_stub_lkb(%struct.dlm_ls* %54, %struct.dlm_message* %55)
  %57 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %58 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %57, i32 0, i32 1
  %59 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %60 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %59, i32 0, i32 0
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @send_cancel_reply(%struct.dlm_rsb* %58, %struct.dlm_lkb* %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %53, %46
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @receive_flags(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @validate_message(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @do_cancel(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @send_cancel_reply(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @do_cancel_effects(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @setup_stub_lkb(%struct.dlm_ls*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
