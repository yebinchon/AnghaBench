; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c___iscsit_free_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c___iscsit_free_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*)* }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__iscsit_free_cmd(%struct.iscsi_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %6, i32 0, i32 2
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %5, align 8
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %9, i32 0, i32 1
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DMA_TO_DEVICE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %23 = call i32 @iscsit_stop_dataout_timer(%struct.iscsi_cmd* %22)
  %24 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %25 = call i32 @iscsit_free_r2ts_from_list(%struct.iscsi_cmd* %24)
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %34 = call i32 @iscsit_free_all_datain_reqs(%struct.iscsi_cmd* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %37 = icmp ne %struct.iscsi_conn* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %44 = call i32 @iscsit_remove_cmd_from_immediate_queue(%struct.iscsi_cmd* %42, %struct.iscsi_conn* %43)
  %45 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %47 = call i32 @iscsit_remove_cmd_from_response_queue(%struct.iscsi_cmd* %45, %struct.iscsi_conn* %46)
  br label %48

48:                                               ; preds = %41, %38, %35
  %49 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %50 = icmp ne %struct.iscsi_conn* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*)** %55, align 8
  %57 = icmp ne i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*)* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %60 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*)** %62, align 8
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %65 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %66 = call i32 %63(%struct.iscsi_conn* %64, %struct.iscsi_cmd* %65)
  br label %67

67:                                               ; preds = %58, %51, %48
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @iscsit_stop_dataout_timer(%struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_free_r2ts_from_list(%struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_free_all_datain_reqs(%struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_remove_cmd_from_immediate_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_remove_cmd_from_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
