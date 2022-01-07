; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsi_target_tx_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsi_target_tx_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, i32 }

@SIGINT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@TARG_CONN_STATE_IN_LOGIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_target_tx_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.iscsi_conn*
  store %struct.iscsi_conn* %7, %struct.iscsi_conn** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @SIGINT, align 4
  %9 = call i32 @allow_signal(i32 %8)
  br label %10

10:                                               ; preds = %56, %1
  %11 = call i32 (...) @kthread_should_stop()
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %57

14:                                               ; preds = %10
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %16 = load i32, i32* @current, align 4
  %17 = call i32 @iscsit_thread_check_cpumask(%struct.iscsi_conn* %15, i32 %16, i32 1)
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %22 = call i32 @iscsit_conn_all_queues_empty(%struct.iscsi_conn* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @wait_event_interruptible(i32 %20, i32 %25)
  %27 = load i32, i32* @current, align 4
  %28 = call i64 @signal_pending(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %58

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %43, %31
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %34 = call i32 @iscsit_handle_immediate_queue(%struct.iscsi_conn* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %58

38:                                               ; preds = %32
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %40 = call i32 @iscsit_handle_response_queue(%struct.iscsi_conn* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %32

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @ECONNRESET, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %68

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %58

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  br label %10

57:                                               ; preds = %10
  br label %58

58:                                               ; preds = %57, %53, %37, %30
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TARG_CONN_STATE_IN_LOGIN, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %66 = call i32 @iscsit_take_action_for_connection_exit(%struct.iscsi_conn* %65, i32* %5)
  br label %67

67:                                               ; preds = %64, %58
  br label %68

68:                                               ; preds = %67, %49
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %76, %71
  %73 = call i32 (...) @kthread_should_stop()
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @msleep(i32 100)
  br label %72

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %68
  ret i32 0
}

declare dso_local i32 @allow_signal(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @iscsit_thread_check_cpumask(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @iscsit_conn_all_queues_empty(%struct.iscsi_conn*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @iscsit_handle_immediate_queue(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_handle_response_queue(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_take_action_for_connection_exit(%struct.iscsi_conn*, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
