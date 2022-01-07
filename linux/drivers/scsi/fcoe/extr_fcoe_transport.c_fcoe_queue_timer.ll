; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_queue_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_queue_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_port = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@port = common dso_local global %struct.fcoe_port* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcoe_queue_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.fcoe_port*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %5 = ptrtoint %struct.fcoe_port* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.fcoe_port* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.fcoe_port* %8, %struct.fcoe_port** %3, align 8
  %9 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %10 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @fcoe_check_wait_queue(i32 %11, i32* null)
  ret void
}

declare dso_local %struct.fcoe_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @fcoe_check_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
