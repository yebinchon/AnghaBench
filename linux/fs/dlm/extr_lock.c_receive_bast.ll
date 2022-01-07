; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_bast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i32, i32 }
%struct.dlm_lkb = type { i32, %struct.dlm_rsb* }
%struct.dlm_rsb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_message*)* @receive_bast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_bast(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
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
  %11 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @find_lkb(%struct.dlm_ls* %9, i32 %12, %struct.dlm_lkb** %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %20 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %19, i32 0, i32 1
  %21 = load %struct.dlm_rsb*, %struct.dlm_rsb** %20, align 8
  store %struct.dlm_rsb* %21, %struct.dlm_rsb** %7, align 8
  %22 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %23 = call i32 @hold_rsb(%struct.dlm_rsb* %22)
  %24 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %25 = call i32 @lock_rsb(%struct.dlm_rsb* %24)
  %26 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %27 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %28 = call i32 @validate_message(%struct.dlm_lkb* %26, %struct.dlm_message* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %44

32:                                               ; preds = %18
  %33 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %34 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %35 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @queue_bast(%struct.dlm_rsb* %33, %struct.dlm_lkb* %34, i32 %37)
  %39 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %40 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %43 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %32, %31
  %45 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %46 = call i32 @unlock_rsb(%struct.dlm_rsb* %45)
  %47 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %48 = call i32 @put_rsb(%struct.dlm_rsb* %47)
  %49 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %50 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @validate_message(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @queue_bast(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
