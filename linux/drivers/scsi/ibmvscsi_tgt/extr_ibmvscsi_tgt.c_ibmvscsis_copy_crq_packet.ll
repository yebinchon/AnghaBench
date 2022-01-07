; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_copy_crq_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_copy_crq_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ibmvscsis_cmd = type { i32, %struct.iu_entry* }
%struct.iu_entry = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.viosrp_crq = type { i32, i32 }

@SRP_MAX_IU_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"copy_crq: Invalid len %d passed\00", align 1
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@SRP_VIOLATION = common dso_local global i64 0, align 8
@REMOTE = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"copy_crq: ioba 0x%llx, init_time 0x%llx\0A\00", align 1
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@CLIENT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"copy_crq: h_copy_rdma failed, rc %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, %struct.ibmvscsis_cmd*, %struct.viosrp_crq*)* @ibmvscsis_copy_crq_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_copy_crq_packet(%struct.scsi_info* %0, %struct.ibmvscsis_cmd* %1, %struct.viosrp_crq* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.scsi_info*, align 8
  %6 = alloca %struct.ibmvscsis_cmd*, align 8
  %7 = alloca %struct.viosrp_crq*, align 8
  %8 = alloca %struct.iu_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %5, align 8
  store %struct.ibmvscsis_cmd* %1, %struct.ibmvscsis_cmd** %6, align 8
  store %struct.viosrp_crq* %2, %struct.viosrp_crq** %7, align 8
  %11 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %6, align 8
  %12 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %11, i32 0, i32 1
  %13 = load %struct.iu_entry*, %struct.iu_entry** %12, align 8
  store %struct.iu_entry* %13, %struct.iu_entry** %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.viosrp_crq*, %struct.viosrp_crq** %7, align 8
  %15 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @be16_to_cpu(i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @SRP_MAX_IU_LEN, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21, %3
  %25 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %25, i32 0, i32 0
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %30 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %31 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %29, i32 %30, i32 0)
  %32 = load i64, i64* @SRP_VIOLATION, align 8
  store i64 %32, i64* %4, align 8
  br label %115

33:                                               ; preds = %21
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* @REMOTE, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.viosrp_crq*, %struct.viosrp_crq** %7, align 8
  %44 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be64_to_cpu(i32 %45)
  %47 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* @LOCAL, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iu_entry*, %struct.iu_entry** %8, align 8
  %56 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @h_copy_rdma(i64 %34, i32 %42, i32 %46, i32 %54, i32 %59)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  switch i64 %61, label %105 [
    i64 128, label %62
    i64 130, label %84
    i64 131, label %104
    i64 129, label %104
  ]

62:                                               ; preds = %33
  %63 = call i32 (...) @mftb()
  %64 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %6, align 8
  %65 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.viosrp_crq*, %struct.viosrp_crq** %7, align 8
  %67 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iu_entry*, %struct.iu_entry** %8, align 8
  %70 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.iu_entry*, %struct.iu_entry** %8, align 8
  %73 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %75 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %74, i32 0, i32 0
  %76 = load %struct.viosrp_crq*, %struct.viosrp_crq** %7, align 8
  %77 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be64_to_cpu(i32 %78)
  %80 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  br label %113

84:                                               ; preds = %33
  %85 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %86 = call i32 @connection_broken(%struct.scsi_info* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %90 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %91 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %92 = load i32, i32* @CLIENT_FAILED, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %89, i32 %90, i32 %93)
  br label %99

95:                                               ; preds = %84
  %96 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %97 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %98 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %96, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %95, %88
  %100 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %101 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %100, i32 0, i32 0
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  br label %113

104:                                              ; preds = %33, %33
  br label %105

105:                                              ; preds = %33, %104
  %106 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %107 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %106, i32 0, i32 0
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %108)
  %110 = load %struct.scsi_info*, %struct.scsi_info** %5, align 8
  %111 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %112 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %105, %99, %62
  %114 = load i64, i64* %9, align 8
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %113, %24
  %116 = load i64, i64* %4, align 8
  ret i64 %116
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local i64 @h_copy_rdma(i64, i32, i32, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @connection_broken(%struct.scsi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
