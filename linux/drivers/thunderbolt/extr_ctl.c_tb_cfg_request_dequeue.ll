; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_request_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_request_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_cfg_request = type { i32, i32, %struct.tb_ctl* }
%struct.tb_ctl = type { i32 }

@TB_CFG_REQUEST_ACTIVE = common dso_local global i32 0, align 4
@TB_CFG_REQUEST_CANCELED = common dso_local global i32 0, align 4
@tb_cfg_request_cancel_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_cfg_request*)* @tb_cfg_request_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_cfg_request_dequeue(%struct.tb_cfg_request* %0) #0 {
  %2 = alloca %struct.tb_cfg_request*, align 8
  %3 = alloca %struct.tb_ctl*, align 8
  store %struct.tb_cfg_request* %0, %struct.tb_cfg_request** %2, align 8
  %4 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %2, align 8
  %5 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %4, i32 0, i32 2
  %6 = load %struct.tb_ctl*, %struct.tb_ctl** %5, align 8
  store %struct.tb_ctl* %6, %struct.tb_ctl** %3, align 8
  %7 = load %struct.tb_ctl*, %struct.tb_ctl** %3, align 8
  %8 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %2, align 8
  %11 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %10, i32 0, i32 1
  %12 = call i32 @list_del(i32* %11)
  %13 = load i32, i32* @TB_CFG_REQUEST_ACTIVE, align 4
  %14 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %2, align 8
  %15 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @TB_CFG_REQUEST_CANCELED, align 4
  %18 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %2, align 8
  %19 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @wake_up(i32* @tb_cfg_request_cancel_queue)
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.tb_ctl*, %struct.tb_ctl** %3, align 8
  %26 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
