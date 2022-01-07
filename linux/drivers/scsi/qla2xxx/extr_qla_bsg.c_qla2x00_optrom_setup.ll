; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_optrom_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_optrom_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.fc_bsg_request* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.fc_bsg_request = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i64, i32, i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"start %d > optrom_size %d.\0A\00", align 1
@QLA_SWAITING = common dso_local global i64 0, align 8
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"optrom_state %d.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"is_update=%d.\0A\00", align 1
@OPTROM_SIZE_2300 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid start region 0x%x/0x%x.\0A\00", align 1
@QLA_SWRITING = common dso_local global i64 0, align 8
@QLA_SREADING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"Read: Unable to allocate memory for optrom retrieval (%x)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*, %struct.TYPE_13__*, i64)* @qla2x00_optrom_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_optrom_setup(%struct.bsg_job* %0, %struct.TYPE_13__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bsg_job*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fc_bsg_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qla_hw_data*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %13 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %12, i32 0, i32 2
  %14 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %13, align 8
  store %struct.fc_bsg_request* %14, %struct.fc_bsg_request** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  store %struct.qla_hw_data* %17, %struct.qla_hw_data** %11, align 8
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pci_channel_offline(i32 %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %232

27:                                               ; preds = %3
  %28 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %8, align 8
  %29 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %37 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %27
  %41 = load i32, i32* @ql_log_warn, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, i64, ...) @ql_log(i32 %41, %struct.TYPE_13__* %42, i32 28757, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %232

51:                                               ; preds = %27
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %53 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QLA_SWAITING, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i32, i32* @ql_log_info, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, i64, ...) @ql_log(i32 %58, %struct.TYPE_13__* %59, i32 28758, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %232

66:                                               ; preds = %51
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %69 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @ql_dbg_user, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @ql_dbg(i32 %70, %struct.TYPE_13__* %71, i32 28759, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %176

76:                                               ; preds = %66
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @OPTROM_SIZE_2300, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  br label %129

87:                                               ; preds = %83, %76
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %90 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 4
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %97 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 4
  %100 = icmp eq i32 %95, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %94, %87
  store i32 1, i32* %10, align 4
  br label %128

102:                                              ; preds = %94
  %103 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %104 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %126, label %106

106:                                              ; preds = %102
  %107 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %108 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %106
  %111 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %112 = call i64 @IS_CNA_CAPABLE(%struct.qla_hw_data* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %110
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %116 = call i64 @IS_QLA2031(%struct.qla_hw_data* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %120 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %124 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %118, %114, %110, %106, %102
  store i32 1, i32* %10, align 4
  br label %127

127:                                              ; preds = %126, %122
  br label %128

128:                                              ; preds = %127, %101
  br label %129

129:                                              ; preds = %128, %86
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @ql_log_warn, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %138 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, i64, ...) @ql_log(i32 %133, %struct.TYPE_13__* %134, i32 28760, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %136, i64 %140)
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %232

144:                                              ; preds = %129
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %148 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %146, %150
  %152 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %153 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = icmp sgt i64 %151, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %144
  %158 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %159 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sub nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  br label %169

164:                                              ; preds = %144
  %165 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %166 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  br label %169

169:                                              ; preds = %164, %157
  %170 = phi i64 [ %163, %157 ], [ %168, %164 ]
  %171 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %172 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %171, i32 0, i32 5
  store i64 %170, i64* %172, align 8
  %173 = load i64, i64* @QLA_SWRITING, align 8
  %174 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %175 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  br label %208

176:                                              ; preds = %66
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %180 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %178, %182
  %184 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %185 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = icmp sgt i64 %183, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %176
  %190 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %191 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sub nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  br label %201

196:                                              ; preds = %176
  %197 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %198 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  br label %201

201:                                              ; preds = %196, %189
  %202 = phi i64 [ %195, %189 ], [ %200, %196 ]
  %203 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %204 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %203, i32 0, i32 5
  store i64 %202, i64* %204, align 8
  %205 = load i64, i64* @QLA_SREADING, align 8
  %206 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %207 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %201, %169
  %209 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %210 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @vzalloc(i64 %211)
  %213 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %214 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %213, i32 0, i32 6
  store i32 %212, i32* %214, align 8
  %215 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %216 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %231, label %219

219:                                              ; preds = %208
  %220 = load i32, i32* @ql_log_warn, align 4
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %222 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %223 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, i64, ...) @ql_log(i32 %220, %struct.TYPE_13__* %221, i32 28761, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %224)
  %226 = load i64, i64* @QLA_SWAITING, align 8
  %227 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %228 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %227, i32 0, i32 1
  store i64 %226, i64* %228, align 8
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %4, align 4
  br label %232

231:                                              ; preds = %208
  store i32 0, i32* %4, align 4
  br label %232

232:                                              ; preds = %231, %219, %132, %57, %40, %24
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_13__*, i32, i8*, i64, ...) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_13__*, i32, i8*, i64) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @vzalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
