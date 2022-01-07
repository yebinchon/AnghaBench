; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_rsv.c_uwb_rsv_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_rsv.c_uwb_rsv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i32, %struct.uwb_rc*, i32, i32, i32, i32 }
%struct.uwb_rc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@uwb_rsv_timer = common dso_local global i32 0, align 4
@uwb_rsv_handle_timeout_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uwb_rsv* (%struct.uwb_rc*)* @uwb_rsv_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uwb_rsv* @uwb_rsv_alloc(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rsv*, align 8
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.uwb_rsv*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.uwb_rsv* @kzalloc(i32 32, i32 %5)
  store %struct.uwb_rsv* %6, %struct.uwb_rsv** %4, align 8
  %7 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %8 = icmp ne %struct.uwb_rsv* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.uwb_rsv* null, %struct.uwb_rsv** %2, align 8
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %12 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %11, i32 0, i32 5
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %15 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %14, i32 0, i32 4
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %18 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %17, i32 0, i32 3
  %19 = call i32 @kref_init(i32* %18)
  %20 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %21 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %20, i32 0, i32 2
  %22 = load i32, i32* @uwb_rsv_timer, align 4
  %23 = call i32 @timer_setup(i32* %21, i32 %22, i32 0)
  %24 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %25 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %26 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %25, i32 0, i32 1
  store %struct.uwb_rc* %24, %struct.uwb_rc** %26, align 8
  %27 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %28 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %27, i32 0, i32 0
  %29 = load i32, i32* @uwb_rsv_handle_timeout_work, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  store %struct.uwb_rsv* %31, %struct.uwb_rsv** %2, align 8
  br label %32

32:                                               ; preds = %10, %9
  %33 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  ret %struct.uwb_rsv* %33
}

declare dso_local %struct.uwb_rsv* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
