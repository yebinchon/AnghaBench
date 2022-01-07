; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_handle_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_handle_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.iscsi_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.cxgbit_lro_pdu_cb = type { i64, i32, i64 }
%struct.iscsi_scsi_req = type { i32 }

@SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*, %struct.iscsi_cmd*)* @cxgbit_handle_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_handle_scsi_cmd(%struct.cxgbit_sock* %0, %struct.iscsi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbit_sock*, align 8
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %8 = alloca %struct.iscsi_scsi_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %4, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %5, align 8
  %11 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %12 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %11, i32 0, i32 1
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %6, align 8
  %14 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %15 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32 %16)
  store %struct.cxgbit_lro_pdu_cb* %17, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %18 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %19 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.iscsi_scsi_req*
  store %struct.iscsi_scsi_req* %21, %struct.iscsi_scsi_req** %8, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %23 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %24 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %8, align 8
  %25 = bitcast %struct.iscsi_scsi_req* %24 to i8*
  %26 = call i32 @iscsit_setup_scsi_cmd(%struct.iscsi_conn* %22, %struct.iscsi_cmd* %23, i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %81

31:                                               ; preds = %2
  %32 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %33 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %38 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %47 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* @SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC, align 4
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %50, %45, %36, %31
  %58 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %59 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %60 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %8, align 8
  %61 = call i32 @iscsit_process_scsi_cmd(%struct.iscsi_conn* %58, %struct.iscsi_cmd* %59, %struct.iscsi_scsi_req* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %81

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %72 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %81

76:                                               ; preds = %70
  %77 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %78 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @cxgbit_get_immediate_data(%struct.iscsi_cmd* %77, %struct.iscsi_scsi_req* %78, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %75, %64, %29
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32) #1

declare dso_local i32 @iscsit_setup_scsi_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_process_scsi_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_scsi_req*) #1

declare dso_local i32 @cxgbit_get_immediate_data(%struct.iscsi_cmd*, %struct.iscsi_scsi_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
