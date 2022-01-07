; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_get_rx_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_get_rx_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.cxgbit_sock* }
%struct.cxgbit_sock = type { i32 }

@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbit_get_rx_pdu(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.cxgbit_sock*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %4 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %4, i32 0, i32 0
  %6 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %5, align 8
  store %struct.cxgbit_sock* %6, %struct.cxgbit_sock** %3, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = call i32 (...) @kthread_should_stop()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @iscsit_thread_check_cpumask(%struct.iscsi_conn* %12, i32 %13, i32 0)
  %15 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %16 = call i64 @cxgbit_wait_rxq(%struct.cxgbit_sock* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %20

19:                                               ; preds = %11
  br label %7

20:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @iscsit_thread_check_cpumask(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i64 @cxgbit_wait_rxq(%struct.cxgbit_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
