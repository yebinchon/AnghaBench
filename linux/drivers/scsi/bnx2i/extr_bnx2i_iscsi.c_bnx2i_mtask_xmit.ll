; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_mtask_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_mtask_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.bnx2i_conn* }
%struct.bnx2i_conn = type { %struct.TYPE_2__, %struct.bnx2i_hba* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bnx2i_hba = type { i32 }
%struct.iscsi_task = type { i32, i32, %struct.bnx2i_cmd* }
%struct.bnx2i_cmd = type { i32*, %struct.bnx2i_conn* }

@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@tx_pdus = common dso_local global i32 0, align 4
@tx_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_task*)* @bnx2i_mtask_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_mtask_xmit(%struct.iscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.bnx2i_conn*, align 8
  %6 = alloca %struct.bnx2i_hba*, align 8
  %7 = alloca %struct.bnx2i_cmd*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %4, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 0
  %10 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %9, align 8
  store %struct.bnx2i_conn* %10, %struct.bnx2i_conn** %5, align 8
  %11 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %11, i32 0, i32 1
  %13 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %12, align 8
  store %struct.bnx2i_hba* %13, %struct.bnx2i_hba** %6, align 8
  %14 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %14, i32 0, i32 2
  %16 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %15, align 8
  store %struct.bnx2i_cmd* %16, %struct.bnx2i_cmd** %7, align 8
  %17 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %18 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %22 = call i32 @memset(i32 %20, i32 0, i32 %21)
  %23 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %7, align 8
  %24 = call i32 @bnx2i_setup_cmd_wqe_template(%struct.bnx2i_cmd* %23)
  %25 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %26 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %29 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %6, align 8
  %32 = load i32, i32* @tx_pdus, align 4
  %33 = call i32 @ADD_STATS_64(%struct.bnx2i_hba* %31, i32 %32, i32 1)
  %34 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %6, align 8
  %35 = load i32, i32* @tx_bytes, align 4
  %36 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ADD_STATS_64(%struct.bnx2i_hba* %34, i32 %35, i32 %38)
  %40 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %41 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %2
  %45 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %46 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i32 %48, i32 %51, i32 %54)
  %56 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %57 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %61 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %59, %62
  %64 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %65 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  br label %67

67:                                               ; preds = %44, %2
  %68 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %69 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %68, i32 0, i32 0
  %70 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %69, align 8
  %71 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %71, i32 0, i32 1
  store %struct.bnx2i_conn* %70, %struct.bnx2i_conn** %72, align 8
  %73 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %7, align 8
  %74 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %76 = call i32 @bnx2i_iscsi_send_generic_request(%struct.iscsi_task* %75)
  ret i32 %76
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @bnx2i_setup_cmd_wqe_template(%struct.bnx2i_cmd*) #1

declare dso_local i32 @ADD_STATS_64(%struct.bnx2i_hba*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bnx2i_iscsi_send_generic_request(%struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
