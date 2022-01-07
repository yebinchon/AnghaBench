; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_request_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_request_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_args = type { i32 }
%struct.dlm_rsb = type { i32 }

@R_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_lkb*, i8*, i32, %struct.dlm_args*)* @request_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_lock(%struct.dlm_ls* %0, %struct.dlm_lkb* %1, i8* %2, i32 %3, %struct.dlm_args* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ls*, align 8
  %8 = alloca %struct.dlm_lkb*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dlm_args*, align 8
  %12 = alloca %struct.dlm_rsb*, align 8
  %13 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %7, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.dlm_args* %4, %struct.dlm_args** %11, align 8
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %16 = load %struct.dlm_args*, %struct.dlm_args** %11, align 8
  %17 = call i32 @validate_lock_args(%struct.dlm_ls* %14, %struct.dlm_lkb* %15, %struct.dlm_args* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %53

22:                                               ; preds = %5
  %23 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @R_REQUEST, align 4
  %27 = call i32 @find_rsb(%struct.dlm_ls* %23, i8* %24, i32 %25, i32 0, i32 %26, %struct.dlm_rsb** %12)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %53

32:                                               ; preds = %22
  %33 = load %struct.dlm_rsb*, %struct.dlm_rsb** %12, align 8
  %34 = call i32 @lock_rsb(%struct.dlm_rsb* %33)
  %35 = load %struct.dlm_rsb*, %struct.dlm_rsb** %12, align 8
  %36 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %37 = call i32 @attach_lkb(%struct.dlm_rsb* %35, %struct.dlm_lkb* %36)
  %38 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %39 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %42 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.dlm_rsb*, %struct.dlm_rsb** %12, align 8
  %46 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %47 = call i32 @_request_lock(%struct.dlm_rsb* %45, %struct.dlm_lkb* %46)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.dlm_rsb*, %struct.dlm_rsb** %12, align 8
  %49 = call i32 @unlock_rsb(%struct.dlm_rsb* %48)
  %50 = load %struct.dlm_rsb*, %struct.dlm_rsb** %12, align 8
  %51 = call i32 @put_rsb(%struct.dlm_rsb* %50)
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %32, %30, %20
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @validate_lock_args(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_args*) #1

declare dso_local i32 @find_rsb(%struct.dlm_ls*, i8*, i32, i32, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @attach_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @_request_lock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
