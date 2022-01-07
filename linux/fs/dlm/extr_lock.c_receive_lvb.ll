; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_lvb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { i32, i64 }
%struct.dlm_message = type { i32 }

@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_message*)* @receive_lvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_lvb(%struct.dlm_ls* %0, %struct.dlm_lkb* %1, %struct.dlm_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_lkb*, align 8
  %7 = alloca %struct.dlm_message*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %6, align 8
  store %struct.dlm_message* %2, %struct.dlm_message** %7, align 8
  %9 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %10 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %3
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %17 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %22 = call i64 @dlm_allocate_lvb(%struct.dlm_ls* %21)
  %23 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %24 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %27 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %55

33:                                               ; preds = %25
  %34 = load %struct.dlm_message*, %struct.dlm_message** %7, align 8
  %35 = call i32 @receive_extralen(%struct.dlm_message* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %43 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %47 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dlm_message*, %struct.dlm_message** %7, align 8
  %50 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @memcpy(i64 %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %3
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %30
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @dlm_allocate_lvb(%struct.dlm_ls*) #1

declare dso_local i32 @receive_extralen(%struct.dlm_message*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
