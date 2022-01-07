; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_request_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_request_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_cfg_request = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TB_CFG_REQUEST_CANCELED = common dso_local global i32 0, align 4
@tb_cfg_request_cancel_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_cfg_request_cancel(%struct.tb_cfg_request* %0, i32 %1) #0 {
  %3 = alloca %struct.tb_cfg_request*, align 8
  %4 = alloca i32, align 4
  store %struct.tb_cfg_request* %0, %struct.tb_cfg_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @TB_CFG_REQUEST_CANCELED, align 4
  %6 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %3, align 8
  %7 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %6, i32 0, i32 2
  %8 = call i32 @set_bit(i32 %5, i32* %7)
  %9 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %3, align 8
  %10 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %9, i32 0, i32 1
  %11 = call i32 @schedule_work(i32* %10)
  %12 = load i32, i32* @tb_cfg_request_cancel_queue, align 4
  %13 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %3, align 8
  %14 = call i32 @tb_cfg_request_is_active(%struct.tb_cfg_request* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @wait_event(i32 %12, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %3, align 8
  %21 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @tb_cfg_request_is_active(%struct.tb_cfg_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
