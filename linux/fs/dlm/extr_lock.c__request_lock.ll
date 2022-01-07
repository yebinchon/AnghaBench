; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c__request_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c__request_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*)* @_request_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_request_lock(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  %6 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %7 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %8 = call i32 @set_master(%struct.dlm_rsb* %6, %struct.dlm_lkb* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %33

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %33

16:                                               ; preds = %12
  %17 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %18 = call i64 @is_remote(%struct.dlm_rsb* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %22 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %23 = call i32 @send_request(%struct.dlm_rsb* %21, %struct.dlm_lkb* %22)
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %16
  %25 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %26 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %27 = call i32 @do_request(%struct.dlm_rsb* %25, %struct.dlm_lkb* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %29 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @do_request_effects(%struct.dlm_rsb* %28, %struct.dlm_lkb* %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %20
  br label %33

33:                                               ; preds = %32, %15, %11
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @set_master(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i64 @is_remote(%struct.dlm_rsb*) #1

declare dso_local i32 @send_request(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @do_request(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @do_request_effects(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
