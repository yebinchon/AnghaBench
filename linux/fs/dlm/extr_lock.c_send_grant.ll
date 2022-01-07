; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_grant.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_grant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i32 }
%struct.dlm_message = type { i64 }
%struct.dlm_mhandle = type { i32 }

@DLM_MSG_GRANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*)* @send_grant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_grant(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca %struct.dlm_message*, align 8
  %6 = alloca %struct.dlm_mhandle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  %9 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %13 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @DLM_MSG_GRANT, align 4
  %16 = call i32 @create_message(%struct.dlm_rsb* %12, %struct.dlm_lkb* %13, i32 %14, i32 %15, %struct.dlm_message** %5, %struct.dlm_mhandle** %6)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %22 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %23 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %24 = call i32 @send_args(%struct.dlm_rsb* %21, %struct.dlm_lkb* %22, %struct.dlm_message* %23)
  %25 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %26 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %6, align 8
  %28 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %29 = call i32 @send_message(%struct.dlm_mhandle* %27, %struct.dlm_message* %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %20, %19
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local i32 @create_message(%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32, %struct.dlm_message**, %struct.dlm_mhandle**) #1

declare dso_local i32 @send_args(%struct.dlm_rsb*, %struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @send_message(%struct.dlm_mhandle*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
