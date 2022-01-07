; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data*, i32, i32, %struct.TYPE_2__ }
%struct.qla_hw_data = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.qla_tgt* }
%struct.qla_tgt = type { i32, i32, i64, i64 }

@MBA_POINT_TO_POINT = common dso_local global i32 0, align 4
@MBA_CHG_IN_CONNECTION = common dso_local global i32 0, align 4
@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"qla_target(%d): System error async event %#x occurred\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"qla_target(%d): Async LOOP_UP occurred (m[0]=%x, m[1]=%x, m[2]=%x, m[3]=%x)\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"qla_target(%d): Async event %#x occurred (m[0]=%x, m[1]=%x, m[2]=%x, m[3]=%x)\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"qla_target(%d): Async event LS_REJECT occurred (m[0]=%x, m[1]=%x, m[2]=%x, m[3]=%x)\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Exchange starvation-. Resetting RISC\0A\00", align 1
@FCOE_CTX_RESET_NEEDED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [119 x i8] c"qla_target(%d): Port update async event %#x occurred: updating the ports database (m[0]=%x, m[1]=%x, m[2]=%x, m[3]=%x)\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Async MB 2: Got PLOGI Complete\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Async MB 2: Port Logged Out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlt_async_event(i32 %0, %struct.scsi_qla_host* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca %struct.qla_tgt*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.scsi_qla_host* %1, %struct.scsi_qla_host** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 0
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %7, align 8
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.qla_tgt*, %struct.qla_tgt** %15, align 8
  store %struct.qla_tgt* %16, %struct.qla_tgt** %8, align 8
  %17 = load %struct.qla_tgt*, %struct.qla_tgt** %8, align 8
  %18 = icmp ne %struct.qla_tgt* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.qla_tgt*, %struct.qla_tgt** %8, align 8
  %21 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.qla_tgt*, %struct.qla_tgt** %8, align 8
  %26 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19, %3
  br label %237

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MBA_POINT_TO_POINT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MBA_CHG_IN_CONNECTION, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %30
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %40 = call i64 @IS_QLA2100(%struct.qla_hw_data* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %237

43:                                               ; preds = %38, %34
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %236 [
    i32 132, label %45
    i32 129, label %45
    i32 133, label %45
    i32 130, label %45
    i32 128, label %53
    i32 136, label %58
    i32 139, label %96
    i32 137, label %96
    i32 138, label %96
    i32 131, label %96
    i32 134, label %120
    i32 135, label %189
  ]

45:                                               ; preds = %43, %43, %43, %43
  %46 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %47 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %49 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %46, %struct.scsi_qla_host* %47, i32 61498, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %237

53:                                               ; preds = %43
  %54 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %56 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %55, i32 0, i32 2
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  br label %237

58:                                               ; preds = %43
  %59 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %62 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  %80 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %59, %struct.scsi_qla_host* %60, i32 61499, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67, i32 %71, i32 %75, i32 %79)
  %81 = load %struct.qla_tgt*, %struct.qla_tgt** %8, align 8
  %82 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %58
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %87 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.qla_tgt*, %struct.qla_tgt** %8, align 8
  %90 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %89, i32 0, i32 1
  %91 = bitcast i32* %90 to i8*
  %92 = call i32 @qlt_send_notify_ack(i32 %88, i8* %91, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %93 = load %struct.qla_tgt*, %struct.qla_tgt** %8, align 8
  %94 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %85, %58
  br label %237

96:                                               ; preds = %43, %43, %43, %43
  %97 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %98 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %99 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %100 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le16_to_cpu(i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  %119 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %97, %struct.scsi_qla_host* %98, i32 61500, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102, i32 %106, i32 %110, i32 %114, i32 %118)
  br label %237

120:                                              ; preds = %43
  %121 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %122 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %123 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %124 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le16_to_cpu(i32 %128)
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le16_to_cpu(i32 %132)
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le16_to_cpu(i32 %136)
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le16_to_cpu(i32 %140)
  %142 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %121, %struct.scsi_qla_host* %122, i32 61463, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %129, i32 %133, i32 %137, i32 %141)
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @le16_to_cpu(i32 %145)
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %188

148:                                              ; preds = %120
  %149 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %150 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %149, i32 0, i32 0
  %151 = load %struct.qla_hw_data*, %struct.qla_hw_data** %150, align 8
  %152 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %156 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %155, i32 0, i32 0
  %157 = load %struct.qla_hw_data*, %struct.qla_hw_data** %156, align 8
  %158 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 5
  br i1 %160, label %161, label %187

161:                                              ; preds = %148
  %162 = load i32, i32* @ql_log_warn, align 4
  %163 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %164 = call i32 @ql_log(i32 %162, %struct.scsi_qla_host* %163, i32 53306, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %165 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %166 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %165, i32 0, i32 0
  %167 = load %struct.qla_hw_data*, %struct.qla_hw_data** %166, align 8
  %168 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %167, i32 0, i32 0
  store i32 0, i32* %168, align 4
  %169 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %170 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %169, i32 0, i32 0
  %171 = load %struct.qla_hw_data*, %struct.qla_hw_data** %170, align 8
  %172 = call i32 @IS_P3P_TYPE(%struct.qla_hw_data* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %161
  %175 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %176 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %177 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %176, i32 0, i32 2
  %178 = call i32 @set_bit(i32 %175, i32* %177)
  br label %184

179:                                              ; preds = %161
  %180 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %181 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %182 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %181, i32 0, i32 2
  %183 = call i32 @set_bit(i32 %180, i32* %182)
  br label %184

184:                                              ; preds = %179, %174
  %185 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %186 = call i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host* %185)
  br label %187

187:                                              ; preds = %184, %148
  br label %188

188:                                              ; preds = %187, %120
  br label %237

189:                                              ; preds = %43
  %190 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %191 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %192 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %193 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = load i32*, i32** %6, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @le16_to_cpu(i32 %198)
  %200 = load i32*, i32** %6, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @le16_to_cpu(i32 %202)
  %204 = load i32*, i32** %6, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @le16_to_cpu(i32 %206)
  %208 = load i32*, i32** %6, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @le16_to_cpu(i32 %210)
  %212 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %190, %struct.scsi_qla_host* %191, i32 61501, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.5, i64 0, i64 0), i32 %194, i32 %195, i32 %199, i32 %203, i32 %207, i32 %211)
  %213 = load i32*, i32** %6, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @le16_to_cpu(i32 %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp eq i32 %217, 4
  br i1 %218, label %219, label %227

219:                                              ; preds = %189
  %220 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %221 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %222 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %220, %struct.scsi_qla_host* %221, i32 61502, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %223 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %224 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %223, i32 0, i32 0
  %225 = load %struct.qla_hw_data*, %struct.qla_hw_data** %224, align 8
  %226 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %225, i32 0, i32 0
  store i32 0, i32* %226, align 4
  br label %235

227:                                              ; preds = %189
  %228 = load i32, i32* %9, align 4
  %229 = icmp eq i32 %228, 7
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %232 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %233 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %231, %struct.scsi_qla_host* %232, i32 61503, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %234

234:                                              ; preds = %230, %227
  br label %235

235:                                              ; preds = %234, %219
  br label %237

236:                                              ; preds = %43
  br label %237

237:                                              ; preds = %29, %42, %236, %235, %188, %96, %95, %53, %45
  ret void
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @qlt_send_notify_ack(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*) #1

declare dso_local i32 @IS_P3P_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
