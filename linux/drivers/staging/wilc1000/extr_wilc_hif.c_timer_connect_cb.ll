; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_timer_connect_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_timer_connect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_if_drv = type { %struct.wilc_vif* }
%struct.wilc_vif = type { i32 }
%struct.timer_list = type { i32 }
%struct.host_if_msg = type { i32 }

@connect_timer = common dso_local global i32 0, align 4
@handle_connect_timeout = common dso_local global i32 0, align 4
@hif_drv = common dso_local global %struct.host_if_drv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @timer_connect_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_connect_cb(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.host_if_drv*, align 8
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca %struct.host_if_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.host_if_drv*, %struct.host_if_drv** %3, align 8
  %8 = ptrtoint %struct.host_if_drv* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @connect_timer, align 4
  %11 = call %struct.host_if_drv* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.host_if_drv* %11, %struct.host_if_drv** %3, align 8
  %12 = load %struct.host_if_drv*, %struct.host_if_drv** %3, align 8
  %13 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %12, i32 0, i32 0
  %14 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  store %struct.wilc_vif* %14, %struct.wilc_vif** %4, align 8
  %15 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %16 = load i32, i32* @handle_connect_timeout, align 4
  %17 = call %struct.host_if_msg* @wilc_alloc_work(%struct.wilc_vif* %15, i32 %16, i32 0)
  store %struct.host_if_msg* %17, %struct.host_if_msg** %5, align 8
  %18 = load %struct.host_if_msg*, %struct.host_if_msg** %5, align 8
  %19 = call i64 @IS_ERR(%struct.host_if_msg* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.host_if_msg*, %struct.host_if_msg** %5, align 8
  %24 = call i32 @wilc_enqueue_work(%struct.host_if_msg* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.host_if_msg*, %struct.host_if_msg** %5, align 8
  %29 = call i32 @kfree(%struct.host_if_msg* %28)
  br label %30

30:                                               ; preds = %21, %27, %22
  ret void
}

declare dso_local %struct.host_if_drv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.host_if_msg* @wilc_alloc_work(%struct.wilc_vif*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.host_if_msg*) #1

declare dso_local i32 @wilc_enqueue_work(%struct.host_if_msg*) #1

declare dso_local i32 @kfree(%struct.host_if_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
