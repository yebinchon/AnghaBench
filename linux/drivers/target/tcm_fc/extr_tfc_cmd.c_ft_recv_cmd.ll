; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_recv_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_recv_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft_sess = type { %struct.TYPE_5__*, %struct.se_session* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.fc_lport* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_lport = type { i32 }
%struct.se_session = type { i64, i32 }
%struct.fc_frame = type { i32 }
%struct.ft_cmd = type { i32, %struct.fc_frame*, %struct.TYPE_6__, i32, %struct.ft_sess* }
%struct.TYPE_6__ = type { i32, i32 }

@ft_send_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cmd or seq allocation failure - sending BUSY\0A\00", align 1
@SAM_STAT_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ft_sess*, %struct.fc_frame*)* @ft_recv_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_recv_cmd(%struct.ft_sess* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.ft_sess*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.ft_cmd*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.se_session*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ft_sess* %0, %struct.ft_sess** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %10 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %11 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.fc_lport*, %struct.fc_lport** %13, align 8
  store %struct.fc_lport* %14, %struct.fc_lport** %6, align 8
  %15 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %16 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %15, i32 0, i32 1
  %17 = load %struct.se_session*, %struct.se_session** %16, align 8
  store %struct.se_session* %17, %struct.se_session** %7, align 8
  %18 = load %struct.se_session*, %struct.se_session** %7, align 8
  %19 = getelementptr inbounds %struct.se_session, %struct.se_session* %18, i32 0, i32 1
  %20 = call i32 @sbitmap_queue_get(i32* %19, i32* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %77

24:                                               ; preds = %2
  %25 = load %struct.se_session*, %struct.se_session** %7, align 8
  %26 = getelementptr inbounds %struct.se_session, %struct.se_session* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ft_cmd*
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %28, i64 %30
  store %struct.ft_cmd* %31, %struct.ft_cmd** %5, align 8
  %32 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %33 = call i32 @memset(%struct.ft_cmd* %32, i32 0, i32 40)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %43 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %43, i32 0, i32 4
  store %struct.ft_sess* %42, %struct.ft_sess** %44, align 8
  %45 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %46 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %47 = call i32 @fc_seq_assign(%struct.fc_lport* %45, %struct.fc_frame* %46)
  %48 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %24
  %55 = load %struct.se_session*, %struct.se_session** %7, align 8
  %56 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %56, i32 0, i32 2
  %58 = call i32 @target_free_tag(%struct.se_session* %55, %struct.TYPE_6__* %57)
  br label %77

59:                                               ; preds = %24
  %60 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %61 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %61, i32 0, i32 1
  store %struct.fc_frame* %60, %struct.fc_frame** %62, align 8
  %63 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %63, i32 0, i32 0
  %65 = load i32, i32* @ft_send_work, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %68 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %75 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %74, i32 0, i32 0
  %76 = call i32 @queue_work(i32 %73, i32* %75)
  br label %87

77:                                               ; preds = %54, %23
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %80 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %81 = load i32, i32* @SAM_STAT_BUSY, align 4
  %82 = call i32 @ft_send_resp_status(%struct.fc_lport* %79, %struct.fc_frame* %80, i32 %81, i32 0)
  %83 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %84 = call i32 @fc_frame_free(%struct.fc_frame* %83)
  %85 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %86 = call i32 @ft_sess_put(%struct.ft_sess* %85)
  br label %87

87:                                               ; preds = %77, %59
  ret void
}

declare dso_local i32 @sbitmap_queue_get(i32*, i32*) #1

declare dso_local i32 @memset(%struct.ft_cmd*, i32, i32) #1

declare dso_local i32 @fc_seq_assign(%struct.fc_lport*, %struct.fc_frame*) #1

declare dso_local i32 @target_free_tag(%struct.se_session*, %struct.TYPE_6__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @ft_send_resp_status(%struct.fc_lport*, %struct.fc_frame*, i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @ft_sess_put(%struct.ft_sess*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
