; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_handle_imm_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_handle_imm_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, %struct.TYPE_5__, %struct.qla_hw_data* }
%struct.TYPE_5__ = type { %struct.qla_tgt* }
%struct.qla_tgt = type { i32, %struct.imm_ntfy_from_isp }
%struct.imm_ntfy_from_isp = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qla_hw_data = type { i32, i32 }
%struct.atio_from_isp = type { i32 }

@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"qla_target(%d): LIP reset (loop %#x), subcode %x\0A\00", align 1
@QLA_TGT_ABORT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"qla_target(%d): LINK REINIT (loop %#x, subcode %x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"qla_target(%d): Port logout (loop %#x, subcode %x)\0A\00", align 1
@QLA_TGT_NEXUS_LOSS_SESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"qla_target(%d): Global TPRLO (%x)\0A\00", align 1
@QLA_TGT_NEXUS_LOSS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"qla_target(%d): Port config changed (%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"qla_target(%d): Link failure detected\0A\00", align 1
@.str.6 = private unnamed_addr constant [107 x i8] c"qla_target(%d): Cannot provide requested capability (IOCB overflowed the immediate notify resource count)\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"qla_target(%d): Abort Task (S %08x I %#x -> L %#x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"qla_target(%d): Out of resources, host %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"qla_target(%d): Immediate notify task %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"qla_target(%d): Received unknown immediate notify status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.imm_ntfy_from_isp*)* @qlt_handle_imm_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_handle_imm_notify(%struct.scsi_qla_host* %0, %struct.imm_ntfy_from_isp* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.imm_ntfy_from_isp*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla_tgt*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.imm_ntfy_from_isp* %1, %struct.imm_ntfy_from_isp** %4, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 3
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 1
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %17 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %222 [
    i32 132, label %23
    i32 133, label %48
    i32 129, label %88
    i32 135, label %113
    i32 130, label %128
    i32 136, label %143
    i32 134, label %157
    i32 138, label %164
    i32 128, label %193
    i32 131, label %203
    i32 137, label %215
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %30 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %36 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %24, %struct.scsi_qla_host* %25, i32 61490, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %34, i32 %39)
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %42 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %43 = load i32, i32* @QLA_TGT_ABORT_ALL, align 4
  %44 = call i32 @qlt_reset(%struct.scsi_qla_host* %41, %struct.imm_ntfy_from_isp* %42, i32 %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %23
  br label %230

48:                                               ; preds = %2
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.qla_tgt*, %struct.qla_tgt** %51, align 8
  store %struct.qla_tgt* %52, %struct.qla_tgt** %9, align 8
  %53 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %54 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %56 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %59 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %65 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %53, %struct.scsi_qla_host* %54, i32 61491, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %63, i32 %68)
  %70 = load %struct.qla_tgt*, %struct.qla_tgt** %9, align 8
  %71 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %48
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qla_tgt*, %struct.qla_tgt** %9, align 8
  %79 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %78, i32 0, i32 1
  %80 = call i32 @qlt_send_notify_ack(i32 %77, %struct.imm_ntfy_from_isp* %79, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %81

81:                                               ; preds = %74, %48
  %82 = load %struct.qla_tgt*, %struct.qla_tgt** %9, align 8
  %83 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %82, i32 0, i32 1
  %84 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %85 = call i32 @memcpy(%struct.imm_ntfy_from_isp* %83, %struct.imm_ntfy_from_isp* %84, i32 24)
  %86 = load %struct.qla_tgt*, %struct.qla_tgt** %9, align 8
  %87 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  store i32 0, i32* %7, align 4
  br label %230

88:                                               ; preds = %2
  %89 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %90 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %92 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %95 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le16_to_cpu(i32 %98)
  %100 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %101 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %89, %struct.scsi_qla_host* %90, i32 61492, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %99, i32 %104)
  %106 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %107 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %108 = load i32, i32* @QLA_TGT_NEXUS_LOSS_SESS, align 4
  %109 = call i32 @qlt_reset(%struct.scsi_qla_host* %106, %struct.imm_ntfy_from_isp* %107, i32 %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %88
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %88
  br label %230

113:                                              ; preds = %2
  %114 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %115 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %116 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %117 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %114, %struct.scsi_qla_host* %115, i32 61493, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %122 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %123 = load i32, i32* @QLA_TGT_NEXUS_LOSS, align 4
  %124 = call i32 @qlt_reset(%struct.scsi_qla_host* %121, %struct.imm_ntfy_from_isp* %122, i32 %123)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %113
  br label %230

128:                                              ; preds = %2
  %129 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %130 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %131 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %132 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %129, %struct.scsi_qla_host* %130, i32 61494, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %137 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %138 = load i32, i32* @QLA_TGT_ABORT_ALL, align 4
  %139 = call i32 @qlt_reset(%struct.scsi_qla_host* %136, %struct.imm_ntfy_from_isp* %137, i32 %138)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %141, %128
  br label %230

143:                                              ; preds = %2
  %144 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %145 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %146 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %147 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %144, %struct.scsi_qla_host* %145, i32 61546, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  %150 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %151 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %152 = load i32, i32* @QLA_TGT_NEXUS_LOSS, align 4
  %153 = call i32 @qlt_reset(%struct.scsi_qla_host* %150, %struct.imm_ntfy_from_isp* %151, i32 %152)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %155, %143
  br label %230

157:                                              ; preds = %2
  %158 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %159 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %160 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %161 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %158, %struct.scsi_qla_host* %159, i32 61547, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.6, i64 0, i64 0), i32 %162)
  br label %230

164:                                              ; preds = %2
  %165 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %166 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %167 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %168 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %171 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @le16_to_cpu(i32 %174)
  %176 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %177 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %178 = bitcast %struct.imm_ntfy_from_isp* %177 to %struct.atio_from_isp*
  %179 = call i32 @GET_TARGET_ID(%struct.qla_hw_data* %176, %struct.atio_from_isp* %178)
  %180 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %181 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le16_to_cpu(i32 %184)
  %186 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %165, %struct.scsi_qla_host* %166, i32 61495, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %169, i32 %175, i32 %179, i32 %185)
  %187 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %188 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %189 = call i32 @qlt_abort_task(%struct.scsi_qla_host* %187, %struct.imm_ntfy_from_isp* %188)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %164
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %191, %164
  br label %230

193:                                              ; preds = %2
  %194 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %195 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %196 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %197 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %200 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %194, %struct.scsi_qla_host* %195, i32 61548, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %198, i32 %201)
  br label %230

203:                                              ; preds = %2
  %204 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %205 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %206 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %207 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %210 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %204, %struct.scsi_qla_host* %205, i32 61496, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %208, i32 %213)
  br label %230

215:                                              ; preds = %2
  %216 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %217 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %218 = call i32 @qlt_24xx_handle_els(%struct.scsi_qla_host* %216, %struct.imm_ntfy_from_isp* %217)
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i32 0, i32* %7, align 4
  br label %221

221:                                              ; preds = %220, %215
  br label %230

222:                                              ; preds = %2
  %223 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %224 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %225 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %226 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %223, %struct.scsi_qla_host* %224, i32 61549, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %222, %221, %203, %193, %192, %157, %156, %142, %127, %112, %81, %47
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %235 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %4, align 8
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @qlt_send_notify_ack(i32 %236, %struct.imm_ntfy_from_isp* %237, i32 %238, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %240

240:                                              ; preds = %233, %230
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) #1

declare dso_local i32 @qlt_reset(%struct.scsi_qla_host*, %struct.imm_ntfy_from_isp*, i32) #1

declare dso_local i32 @qlt_send_notify_ack(i32, %struct.imm_ntfy_from_isp*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp*, i32) #1

declare dso_local i32 @GET_TARGET_ID(%struct.qla_hw_data*, %struct.atio_from_isp*) #1

declare dso_local i32 @qlt_abort_task(%struct.scsi_qla_host*, %struct.imm_ntfy_from_isp*) #1

declare dso_local i32 @qlt_24xx_handle_els(%struct.scsi_qla_host*, %struct.imm_ntfy_from_isp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
