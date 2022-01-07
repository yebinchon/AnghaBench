; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i32 }
%struct.dlm_message = type { i32 }
%struct.dlm_mhandle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*, i32)* @send_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_common(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_rsb*, align 8
  %6 = alloca %struct.dlm_lkb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_message*, align 8
  %9 = alloca %struct.dlm_mhandle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %5, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @add_to_waiters(%struct.dlm_lkb* %15, i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %50

23:                                               ; preds = %3
  %24 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @create_message(%struct.dlm_rsb* %24, %struct.dlm_lkb* %25, i32 %26, i32 %27, %struct.dlm_message** %8, %struct.dlm_mhandle** %9)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %44

32:                                               ; preds = %23
  %33 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %34 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %35 = load %struct.dlm_message*, %struct.dlm_message** %8, align 8
  %36 = call i32 @send_args(%struct.dlm_rsb* %33, %struct.dlm_lkb* %34, %struct.dlm_message* %35)
  %37 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %9, align 8
  %38 = load %struct.dlm_message*, %struct.dlm_message** %8, align 8
  %39 = call i32 @send_message(%struct.dlm_mhandle* %37, %struct.dlm_message* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %44

43:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %50

44:                                               ; preds = %42, %31
  %45 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @msg_reply_type(i32 %46)
  %48 = call i32 @remove_from_waiters(%struct.dlm_lkb* %45, i32 %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %43, %21
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @add_to_waiters(%struct.dlm_lkb*, i32, i32) #1

declare dso_local i32 @create_message(%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32, %struct.dlm_message**, %struct.dlm_mhandle**) #1

declare dso_local i32 @send_args(%struct.dlm_rsb*, %struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @send_message(%struct.dlm_mhandle*, %struct.dlm_message*) #1

declare dso_local i32 @remove_from_waiters(%struct.dlm_lkb*, i32) #1

declare dso_local i32 @msg_reply_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
