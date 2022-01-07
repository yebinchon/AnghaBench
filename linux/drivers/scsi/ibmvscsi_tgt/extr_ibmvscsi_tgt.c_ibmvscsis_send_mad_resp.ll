; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_send_mad_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_send_mad_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ibmvscsis_cmd = type { i32, %struct.TYPE_9__, %struct.iu_entry* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.iu_entry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.viosrp_crq = type { i32 }
%struct.mad_common = type { i32 }
%struct.TYPE_10__ = type { i32 }

@LOCAL = common dso_local global i64 0, align 8
@REMOTE = common dso_local global i64 0, align 8
@VIOSRP_MAD_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error sending mad response, rc %ld\0A\00", align 1
@H_PERMISSION = common dso_local global i64 0, align 8
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@CLIENT_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"mad: failed to copy to client, rc %ld\0A\00", align 1
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_info*, %struct.ibmvscsis_cmd*, %struct.viosrp_crq*)* @ibmvscsis_send_mad_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_send_mad_resp(%struct.scsi_info* %0, %struct.ibmvscsis_cmd* %1, %struct.viosrp_crq* %2) #0 {
  %4 = alloca %struct.scsi_info*, align 8
  %5 = alloca %struct.ibmvscsis_cmd*, align 8
  %6 = alloca %struct.viosrp_crq*, align 8
  %7 = alloca %struct.iu_entry*, align 8
  %8 = alloca %struct.mad_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %4, align 8
  store %struct.ibmvscsis_cmd* %1, %struct.ibmvscsis_cmd** %5, align 8
  store %struct.viosrp_crq* %2, %struct.viosrp_crq** %6, align 8
  %11 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %11, i32 0, i32 2
  %13 = load %struct.iu_entry*, %struct.iu_entry** %12, align 8
  store %struct.iu_entry* %13, %struct.iu_entry** %7, align 8
  %14 = load %struct.iu_entry*, %struct.iu_entry** %7, align 8
  %15 = call %struct.TYPE_10__* @vio_iu(%struct.iu_entry* %14)
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.mad_common*
  store %struct.mad_common* %17, %struct.mad_common** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = call i32 (...) @dma_wmb()
  %19 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load i64, i64* @LOCAL, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iu_entry*, %struct.iu_entry** %7, align 8
  %28 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i64, i64* @REMOTE, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.viosrp_crq*, %struct.viosrp_crq** %6, align 8
  %41 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be64_to_cpu(i32 %42)
  %44 = call i64 @h_copy_rdma(i32 4, i32 %26, i32 %31, i32 %39, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %3
  %48 = load i32, i32* @VIOSRP_MAD_FORMAT, align 4
  %49 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 4, i32* %54, align 4
  %55 = load %struct.mad_common*, %struct.mad_common** %8, align 8
  %56 = getelementptr inbounds %struct.mad_common, %struct.mad_common* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %61, i32 0, i32 0
  %63 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %63, i32 0, i32 1
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  %66 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %67 = call i32 @ibmvscsis_send_messages(%struct.scsi_info* %66)
  br label %97

68:                                               ; preds = %3
  %69 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %69, i32 0, i32 0
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @H_PERMISSION, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %78 = call i64 @connection_broken(%struct.scsi_info* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %82 = load i32, i32* @CLIENT_FAILED, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %68
  %86 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %87 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %86, i32 0, i32 0
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %91 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %92 = call i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info* %90, %struct.ibmvscsis_cmd* %91)
  %93 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %94 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %85, %47
  ret void
}

declare dso_local %struct.TYPE_10__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i64 @h_copy_rdma(i32, i32, i32, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ibmvscsis_send_messages(%struct.scsi_info*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i64 @connection_broken(%struct.scsi_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info*, %struct.ibmvscsis_cmd*) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
