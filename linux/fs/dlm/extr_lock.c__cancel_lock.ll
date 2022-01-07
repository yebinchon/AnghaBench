; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c__cancel_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c__cancel_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*)* @_cancel_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cancel_lock(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  %6 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %7 = call i64 @is_remote(%struct.dlm_rsb* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %11 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %12 = call i32 @send_cancel(%struct.dlm_rsb* %10, %struct.dlm_lkb* %11)
  store i32 %12, i32* %5, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %16 = call i32 @do_cancel(%struct.dlm_rsb* %14, %struct.dlm_lkb* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @do_cancel_effects(%struct.dlm_rsb* %17, %struct.dlm_lkb* %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %9
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i64 @is_remote(%struct.dlm_rsb*) #1

declare dso_local i32 @send_cancel(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @do_cancel(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @do_cancel_effects(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
