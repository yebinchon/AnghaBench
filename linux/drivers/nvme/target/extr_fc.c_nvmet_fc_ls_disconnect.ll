; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_ls_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_ls_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { i32 }
%struct.nvmet_fc_ls_iod = type { i32, %struct.nvmet_fc_tgt_assoc*, %struct.TYPE_8__*, i64, i64 }
%struct.nvmet_fc_tgt_assoc = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.fcnvme_ls_disconnect_rqst = type { i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.fcnvme_ls_disconnect_acc = type { i32 }

@VERR_DISCONN_LEN = common dso_local global i32 0, align 4
@VERR_DISCONN_RQST_LEN = common dso_local global i32 0, align 4
@FCNVME_LSDESC_ASSOC_ID = common dso_local global i32 0, align 4
@VERR_ASSOC_ID = common dso_local global i32 0, align 4
@VERR_ASSOC_ID_LEN = common dso_local global i32 0, align 4
@FCNVME_LSDESC_DISCONN_CMD = common dso_local global i32 0, align 4
@VERR_DISCONN_CMD = common dso_local global i32 0, align 4
@VERR_DISCONN_CMD_LEN = common dso_local global i32 0, align 4
@FCNVME_DISCONN_ASSOCIATION = common dso_local global i64 0, align 8
@FCNVME_DISCONN_CONNECTION = common dso_local global i64 0, align 8
@VERR_DISCONN_SCOPE = common dso_local global i32 0, align 4
@VERR_NO_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Disconnect LS failed: %s\0A\00", align 1
@validation_errors = common dso_local global i32* null, align 8
@NVME_FC_MAX_LS_BUFFER_SIZE = common dso_local global i32 0, align 4
@FCNVME_RJT_RC_INV_ASSOC = common dso_local global i32 0, align 4
@VERR_NO_CONN = common dso_local global i32 0, align 4
@FCNVME_RJT_RC_INV_CONN = common dso_local global i32 0, align 4
@FCNVME_RJT_RC_LOGIC = common dso_local global i32 0, align 4
@FCNVME_RJT_EXP_NONE = common dso_local global i32 0, align 4
@FCNVME_LS_ACC = common dso_local global i32 0, align 4
@FCNVME_LS_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_ls_iod*)* @nvmet_fc_ls_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_ls_disconnect(%struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_ls_iod* %1) #0 {
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_ls_iod*, align 8
  %5 = alloca %struct.fcnvme_ls_disconnect_rqst*, align 8
  %6 = alloca %struct.fcnvme_ls_disconnect_acc*, align 8
  %7 = alloca %struct.nvmet_fc_tgt_assoc*, align 8
  %8 = alloca i32, align 4
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %3, align 8
  store %struct.nvmet_fc_ls_iod* %1, %struct.nvmet_fc_ls_iod** %4, align 8
  %9 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %10 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.fcnvme_ls_disconnect_rqst*
  store %struct.fcnvme_ls_disconnect_rqst* %12, %struct.fcnvme_ls_disconnect_rqst** %5, align 8
  %13 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %14 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.fcnvme_ls_disconnect_acc*
  store %struct.fcnvme_ls_disconnect_acc* %16, %struct.fcnvme_ls_disconnect_acc** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.fcnvme_ls_disconnect_acc*, %struct.fcnvme_ls_disconnect_acc** %6, align 8
  %18 = call i32 @memset(%struct.fcnvme_ls_disconnect_acc* %17, i32 0, i32 4)
  %19 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %20 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 64
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @VERR_DISCONN_LEN, align 4
  store i32 %25, i32* %8, align 4
  br label %110

26:                                               ; preds = %2
  %27 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %5, align 8
  %28 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @fcnvme_lsdesc_len(i32 64)
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @VERR_DISCONN_RQST_LEN, align 4
  store i32 %33, i32* %8, align 4
  br label %109

34:                                               ; preds = %26
  %35 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %5, align 8
  %36 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @FCNVME_LSDESC_ASSOC_ID, align 4
  %40 = call i64 @cpu_to_be32(i32 %39)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @VERR_ASSOC_ID, align 4
  store i32 %43, i32* %8, align 4
  br label %108

44:                                               ; preds = %34
  %45 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %5, align 8
  %46 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @fcnvme_lsdesc_len(i32 4)
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @VERR_ASSOC_ID_LEN, align 4
  store i32 %52, i32* %8, align 4
  br label %107

53:                                               ; preds = %44
  %54 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %5, align 8
  %55 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @FCNVME_LSDESC_DISCONN_CMD, align 4
  %59 = call i64 @cpu_to_be32(i32 %58)
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @VERR_DISCONN_CMD, align 4
  store i32 %62, i32* %8, align 4
  br label %106

63:                                               ; preds = %53
  %64 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %5, align 8
  %65 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @fcnvme_lsdesc_len(i32 4)
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @VERR_DISCONN_CMD_LEN, align 4
  store i32 %71, i32* %8, align 4
  br label %105

72:                                               ; preds = %63
  %73 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %5, align 8
  %74 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FCNVME_DISCONN_ASSOCIATION, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %5, align 8
  %81 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @FCNVME_DISCONN_CONNECTION, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @VERR_DISCONN_SCOPE, align 4
  store i32 %87, i32* %8, align 4
  br label %104

88:                                               ; preds = %79, %72
  %89 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %90 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %5, align 8
  %91 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @be64_to_cpu(i32 %93)
  %95 = call %struct.nvmet_fc_tgt_assoc* @nvmet_fc_find_target_assoc(%struct.nvmet_fc_tgtport* %89, i32 %94)
  store %struct.nvmet_fc_tgt_assoc* %95, %struct.nvmet_fc_tgt_assoc** %7, align 8
  %96 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %7, align 8
  %97 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %98 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %97, i32 0, i32 1
  store %struct.nvmet_fc_tgt_assoc* %96, %struct.nvmet_fc_tgt_assoc** %98, align 8
  %99 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %7, align 8
  %100 = icmp ne %struct.nvmet_fc_tgt_assoc* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %88
  %102 = load i32, i32* @VERR_NO_ASSOC, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %88
  br label %104

104:                                              ; preds = %103, %86
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %61
  br label %107

107:                                              ; preds = %106, %51
  br label %108

108:                                              ; preds = %107, %42
  br label %109

109:                                              ; preds = %108, %32
  br label %110

110:                                              ; preds = %109, %24
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %152

113:                                              ; preds = %110
  %114 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %115 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** @validation_errors, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load %struct.fcnvme_ls_disconnect_acc*, %struct.fcnvme_ls_disconnect_acc** %6, align 8
  %124 = load i32, i32* @NVME_FC_MAX_LS_BUFFER_SIZE, align 4
  %125 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %5, align 8
  %126 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @VERR_NO_ASSOC, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %113
  %133 = load i32, i32* @FCNVME_RJT_RC_INV_ASSOC, align 4
  br label %144

134:                                              ; preds = %113
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @VERR_NO_CONN, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @FCNVME_RJT_RC_INV_CONN, align 4
  br label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @FCNVME_RJT_RC_LOGIC, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  br label %144

144:                                              ; preds = %142, %132
  %145 = phi i32 [ %133, %132 ], [ %143, %142 ]
  %146 = load i32, i32* @FCNVME_RJT_EXP_NONE, align 4
  %147 = call i32 @nvmet_fc_format_rjt(%struct.fcnvme_ls_disconnect_acc* %123, i32 %124, i32 %128, i32 %145, i32 %146, i32 0)
  %148 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %149 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %148, i32 0, i32 2
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 4
  br label %170

152:                                              ; preds = %110
  %153 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %154 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 4, i32* %156, align 4
  %157 = load %struct.fcnvme_ls_disconnect_acc*, %struct.fcnvme_ls_disconnect_acc** %6, align 8
  %158 = load i32, i32* @FCNVME_LS_ACC, align 4
  %159 = call i64 @fcnvme_lsdesc_len(i32 4)
  %160 = load i32, i32* @FCNVME_LS_DISCONNECT, align 4
  %161 = call i32 @nvmet_fc_format_rsp_hdr(%struct.fcnvme_ls_disconnect_acc* %157, i32 %158, i64 %159, i32 %160)
  %162 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %163 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %162, i32 0, i32 1
  %164 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %163, align 8
  %165 = call i32 @nvmet_fc_tgt_a_put(%struct.nvmet_fc_tgt_assoc* %164)
  %166 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %167 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %166, i32 0, i32 1
  %168 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %167, align 8
  %169 = call i32 @nvmet_fc_delete_target_assoc(%struct.nvmet_fc_tgt_assoc* %168)
  br label %170

170:                                              ; preds = %152, %144
  ret void
}

declare dso_local i32 @memset(%struct.fcnvme_ls_disconnect_acc*, i32, i32) #1

declare dso_local i64 @fcnvme_lsdesc_len(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local %struct.nvmet_fc_tgt_assoc* @nvmet_fc_find_target_assoc(%struct.nvmet_fc_tgtport*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @nvmet_fc_format_rjt(%struct.fcnvme_ls_disconnect_acc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nvmet_fc_format_rsp_hdr(%struct.fcnvme_ls_disconnect_acc*, i32, i64, i32) #1

declare dso_local i32 @nvmet_fc_tgt_a_put(%struct.nvmet_fc_tgt_assoc*) #1

declare dso_local i32 @nvmet_fc_delete_target_assoc(%struct.nvmet_fc_tgt_assoc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
