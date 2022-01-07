; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_get_protocol_tlv_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_get_protocol_tlv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.fc_lport* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fc_lport = type { i64, i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.qed_mfw_tlv_fcoe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i32, i32, i32, i32, i32 }
%struct.fc_host_attrs = type { i32 }
%struct.fc_host_statistics = type { i32, i32, i32, i32, i32, i32, i64 }

@QED_MFW_TLV_PORT_STATE_FABRIC = common dso_local global i32 0, align 4
@QED_MFW_TLV_PORT_STATE_OFFLINE = common dso_local global i32 0, align 4
@FCOE_PARAMS_NUM_TASKS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_get_protocol_tlv_data(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qedf_ctx*, align 8
  %6 = alloca %struct.qed_mfw_tlv_fcoe*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.fc_host_attrs*, align 8
  %10 = alloca %struct.fc_host_statistics*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.qedf_ctx*
  store %struct.qedf_ctx* %12, %struct.qedf_ctx** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.qed_mfw_tlv_fcoe*
  store %struct.qed_mfw_tlv_fcoe* %14, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %15 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %15, i32 0, i32 5
  %17 = load %struct.fc_lport*, %struct.fc_lport** %16, align 8
  store %struct.fc_lport* %17, %struct.fc_lport** %7, align 8
  %18 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %19 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %18, i32 0, i32 3
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %19, align 8
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %8, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %22 = call %struct.fc_host_attrs* @shost_to_fc_host(%struct.Scsi_Host* %21)
  store %struct.fc_host_attrs* %22, %struct.fc_host_attrs** %9, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %24 = call %struct.fc_host_statistics* @qedf_fc_get_host_stats(%struct.Scsi_Host* %23)
  store %struct.fc_host_statistics* %24, %struct.fc_host_statistics** %10, align 8
  %25 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %26 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %28 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %27, i32 0, i32 1
  store i32 3, i32* %28, align 4
  %29 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %30 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %29, i32 0, i32 2
  store i32 1, i32* %30, align 8
  %31 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %32 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %35 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %34, i32 0, i32 39
  store i32 %33, i32* %35, align 8
  %36 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %37 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %42 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %41, i32 0, i32 38
  store i32 %40, i32* %42, align 4
  %43 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %44 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %43, i32 0, i32 4
  store i32 1, i32* %44, align 8
  %45 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %46 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %45, i32 0, i32 5
  store i32 1, i32* %46, align 4
  %47 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %48 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %47, i32 0, i32 6
  store i32 1, i32* %48, align 8
  %49 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %50 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %53 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %52, i32 0, i32 37
  store i32 %51, i32* %53, align 8
  %54 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = icmp ne %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %2
  %60 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %61 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %60, i32 0, i32 7
  store i32 1, i32* %61, align 4
  %62 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %69 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %68, i32 0, i32 36
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @u64_to_wwn(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %59, %2
  %73 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %74 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %73, i32 0, i32 8
  store i32 1, i32* %74, align 8
  %75 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %76 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @QED_MFW_TLV_PORT_STATE_FABRIC, align 4
  %81 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %82 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %81, i32 0, i32 35
  store i32 %80, i32* %82, align 8
  br label %87

83:                                               ; preds = %72
  %84 = load i32, i32* @QED_MFW_TLV_PORT_STATE_OFFLINE, align 4
  %85 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %86 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %85, i32 0, i32 35
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %89 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %88, i32 0, i32 9
  store i32 1, i32* %89, align 4
  %90 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %10, align 8
  %91 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %94 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %93, i32 0, i32 34
  store i64 %92, i64* %94, align 8
  %95 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %96 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %95, i32 0, i32 10
  store i32 1, i32* %96, align 8
  %97 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %98 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %97, i32 0, i32 11
  store i32 1, i32* %98, align 4
  %99 = load i8*, i8** @FCOE_PARAMS_NUM_TASKS, align 8
  %100 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %101 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %100, i32 0, i32 33
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @FCOE_PARAMS_NUM_TASKS, align 8
  %103 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %104 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %103, i32 0, i32 32
  store i8* %102, i8** %104, align 8
  %105 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %106 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %105, i32 0, i32 12
  store i32 1, i32* %106, align 8
  %107 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %10, align 8
  %108 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %111 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %110, i32 0, i32 31
  store i32 %109, i32* %111, align 4
  %112 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %113 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %112, i32 0, i32 13
  store i32 1, i32* %113, align 4
  %114 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %10, align 8
  %115 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %118 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %117, i32 0, i32 30
  store i32 %116, i32* %118, align 8
  %119 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %120 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %119, i32 0, i32 14
  store i32 1, i32* %120, align 8
  %121 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %10, align 8
  %122 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %123, 1000000
  %125 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %126 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %125, i32 0, i32 15
  store i32 %124, i32* %126, align 4
  %127 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %128 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %127, i32 0, i32 16
  store i32 1, i32* %128, align 8
  %129 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %10, align 8
  %130 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %131, 1000000
  %133 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %134 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %133, i32 0, i32 17
  store i32 %132, i32* %134, align 4
  %135 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %136 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %135, i32 0, i32 18
  store i32 1, i32* %136, align 8
  %137 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %10, align 8
  %138 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %141 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %140, i32 0, i32 29
  store i32 %139, i32* %141, align 4
  %142 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %143 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %142, i32 0, i32 19
  store i32 1, i32* %143, align 4
  %144 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %10, align 8
  %145 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %148 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %147, i32 0, i32 28
  store i32 %146, i32* %148, align 8
  %149 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %150 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %149, i32 0, i32 20
  store i32 1, i32* %150, align 8
  %151 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %152 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %155 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %154, i32 0, i32 27
  store i32 %153, i32* %155, align 4
  %156 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %157 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %156, i32 0, i32 21
  store i32 1, i32* %157, align 4
  %158 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %159 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %162 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %161, i32 0, i32 26
  store i32 %160, i32* %162, align 8
  %163 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %164 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %163, i32 0, i32 22
  store i32 1, i32* %164, align 8
  %165 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %166 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %169 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %168, i32 0, i32 25
  store i32 %167, i32* %169, align 4
  %170 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %171 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %170, i32 0, i32 23
  store i32 1, i32* %171, align 4
  %172 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %173 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.qed_mfw_tlv_fcoe*, %struct.qed_mfw_tlv_fcoe** %6, align 8
  %176 = getelementptr inbounds %struct.qed_mfw_tlv_fcoe, %struct.qed_mfw_tlv_fcoe* %175, i32 0, i32 24
  store i32 %174, i32* %176, align 8
  ret void
}

declare dso_local %struct.fc_host_attrs* @shost_to_fc_host(%struct.Scsi_Host*) #1

declare dso_local %struct.fc_host_statistics* @qedf_fc_get_host_stats(%struct.Scsi_Host*) #1

declare dso_local i32 @u64_to_wwn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
