; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_bast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i32 }
%struct.dlm_message = type { i32 }
%struct.dlm_mhandle = type { i32 }

@DLM_MSG_BAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*, i32)* @send_bast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_bast(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_rsb*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_message*, align 8
  %8 = alloca %struct.dlm_mhandle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %12 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @DLM_MSG_BAST, align 4
  %17 = call i32 @create_message(%struct.dlm_rsb* %14, i32* null, i32 %15, i32 %16, %struct.dlm_message** %7, %struct.dlm_mhandle** %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %32

21:                                               ; preds = %3
  %22 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %23 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %24 = load %struct.dlm_message*, %struct.dlm_message** %7, align 8
  %25 = call i32 @send_args(%struct.dlm_rsb* %22, %struct.dlm_lkb* %23, %struct.dlm_message* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.dlm_message*, %struct.dlm_message** %7, align 8
  %28 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %8, align 8
  %30 = load %struct.dlm_message*, %struct.dlm_message** %7, align 8
  %31 = call i32 @send_message(%struct.dlm_mhandle* %29, %struct.dlm_message* %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %21, %20
  %33 = load i32, i32* %10, align 4
  ret i32 %33
}

declare dso_local i32 @create_message(%struct.dlm_rsb*, i32*, i32, i32, %struct.dlm_message**, %struct.dlm_mhandle**) #1

declare dso_local i32 @send_args(%struct.dlm_rsb*, %struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @send_message(%struct.dlm_mhandle*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
