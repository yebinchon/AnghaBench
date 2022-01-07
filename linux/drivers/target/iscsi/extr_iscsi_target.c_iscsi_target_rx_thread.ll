; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsi_target_rx_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsi_target_rx_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.iscsi_conn*)* }

@SIGINT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_target_rx_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.iscsi_conn*
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @SIGINT, align 4
  %10 = call i32 @allow_signal(i32 %9)
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 2
  %13 = call i32 @wait_for_completion_interruptible(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %18 = call i64 @iscsi_target_check_conn_state(%struct.iscsi_conn* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %1
  br label %47

21:                                               ; preds = %16
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %23 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)** %25, align 8
  %27 = icmp ne i32 (%struct.iscsi_conn*)* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %59

29:                                               ; preds = %21
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.iscsi_conn*)*, i32 (%struct.iscsi_conn*)** %33, align 8
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %36 = call i32 %34(%struct.iscsi_conn* %35)
  %37 = load i32, i32* @current, align 4
  %38 = call i32 @signal_pending(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %29
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 0
  %43 = call i32 @atomic_set(i32* %42, i32 1)
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %46 = call i32 @iscsit_take_action_for_connection_exit(%struct.iscsi_conn* %45, i32* %6)
  br label %47

47:                                               ; preds = %44, %20
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %55, %50
  %52 = call i32 (...) @kthread_should_stop()
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @msleep(i32 100)
  br label %51

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %47
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %28
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @allow_signal(i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i64 @iscsi_target_check_conn_state(%struct.iscsi_conn*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @iscsit_take_action_for_connection_exit(%struct.iscsi_conn*, i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
