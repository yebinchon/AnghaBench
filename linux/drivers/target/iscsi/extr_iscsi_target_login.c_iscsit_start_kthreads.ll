; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_start_kthreads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_start_kthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.iscsi_conn = type { i64, i32, i32, i8*, i8* }

@iscsit_global = common dso_local global %struct.TYPE_2__* null, align 8
@ISCSIT_BITMAP_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"bitmap_find_free_region() failed for iscsit_start_kthreads()\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@iscsi_target_tx_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ISCSI_TX_THREAD_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to start iscsi_target_tx_thread\0A\00", align 1
@iscsi_target_rx_thread = common dso_local global i32 0, align 4
@ISCSI_RX_THREAD_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Unable to start iscsi_target_rx_thread\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_start_kthreads(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iscsit_global, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iscsit_global, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ISCSIT_BITMAP_BITS, align 4
  %12 = call i32 @get_order(i32 1)
  %13 = call i64 @bitmap_find_free_region(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iscsit_global, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %96

27:                                               ; preds = %1
  %28 = load i32, i32* @iscsi_target_tx_thread, align 4
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %30 = load i32, i32* @ISCSI_TX_THREAD_NAME, align 4
  %31 = call i8* @kthread_run(i32 %28, %struct.iscsi_conn* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %4, align 4
  br label %80

45:                                               ; preds = %27
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %47 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @iscsi_target_rx_thread, align 4
  %49 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %50 = load i32, i32* @ISCSI_RX_THREAD_NAME, align 4
  %51 = call i8* @kthread_run(i32 %48, %struct.iscsi_conn* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %55 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %45
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %62 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %45
  %66 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %67 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %66, i32 0, i32 2
  store i32 1, i32* %67, align 4
  store i32 0, i32* %2, align 4
  br label %96

68:                                               ; preds = %59
  %69 = load i32, i32* @SIGINT, align 4
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %71 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @send_sig(i32 %69, i8* %72, i32 1)
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %75 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @kthread_stop(i8* %76)
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %79 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %78, i32 0, i32 1
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %68, %39
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iscsit_global, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iscsit_global, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %88 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @get_order(i32 1)
  %91 = call i32 @bitmap_release_region(i32 %86, i64 %89, i32 %90)
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iscsit_global, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %80, %65, %23
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @kthread_run(i32, %struct.iscsi_conn*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @send_sig(i32, i8*, i32) #1

declare dso_local i32 @kthread_stop(i8*) #1

declare dso_local i32 @bitmap_release_region(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
