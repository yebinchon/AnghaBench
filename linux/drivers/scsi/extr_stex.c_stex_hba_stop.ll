; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_hba_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_hba_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { i64, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 (%struct.st_hba*, %struct.st_msg_header*, i64)*, i32, %struct.st_msg_header* (%struct.st_hba*)* }
%struct.TYPE_4__ = type { i32, i32*, i64, i64, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.st_msg_header = type { i32* }
%struct.req_msg = type { i32* }

@st_yel = common dso_local global i64 0, align 8
@st_P3 = common dso_local global i64 0, align 8
@ST_NOTHANDLED = common dso_local global i32 0, align 4
@st_yosemite = common dso_local global i64 0, align 8
@ST_IGNORED = common dso_local global i32 0, align 4
@MGT_CMD = common dso_local global i8* null, align 8
@MGT_CMD_SIGNATURE = common dso_local global i8* null, align 8
@CTLR_CONFIG_CMD = common dso_local global i8* null, align 8
@CTLR_SHUTDOWN = common dso_local global i32 0, align 4
@PMIC_SHUTDOWN = common dso_local global i32 0, align 4
@CONTROLLER_CMD = common dso_local global i32 0, align 4
@CTLR_POWER_STATE_CHANGE = common dso_local global i32 0, align 4
@CTLR_POWER_SAVING = common dso_local global i32 0, align 4
@PASSTHRU_REQ_TYPE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ST_INTERNAL_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@MU_STATE_STOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_hba*, i32)* @stex_hba_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stex_hba_stop(%struct.st_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.st_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.req_msg*, align 8
  %6 = alloca %struct.st_msg_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.st_hba* %0, %struct.st_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %11 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %18 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @st_yel, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %24 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @st_P3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22, %2
  %29 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %30 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ST_NOTHANDLED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %39 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %38, i32 0, i32 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32 %42, i64 %43)
  br label %272

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %28, %22
  %47 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %48 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %47, i32 0, i32 7
  %49 = load %struct.st_msg_header* (%struct.st_hba*)*, %struct.st_msg_header* (%struct.st_hba*)** %48, align 8
  %50 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %51 = call %struct.st_msg_header* %49(%struct.st_hba* %50)
  %52 = bitcast %struct.st_msg_header* %51 to %struct.req_msg*
  store %struct.req_msg* %52, %struct.req_msg** %5, align 8
  %53 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %54 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @st_yel, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %46
  %59 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %60 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @st_P3, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58, %46
  %65 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %66 = bitcast %struct.req_msg* %65 to %struct.st_msg_header*
  %67 = getelementptr inbounds %struct.st_msg_header, %struct.st_msg_header* %66, i64 -1
  store %struct.st_msg_header* %67, %struct.st_msg_header** %6, align 8
  %68 = load %struct.st_msg_header*, %struct.st_msg_header** %6, align 8
  %69 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %70 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @memset(%struct.st_msg_header* %68, i32 0, i32 %71)
  br label %80

73:                                               ; preds = %58
  %74 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %75 = bitcast %struct.req_msg* %74 to %struct.st_msg_header*
  %76 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %77 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memset(%struct.st_msg_header* %75, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %73, %64
  %81 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %82 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @st_yosemite, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %88 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @st_yel, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %94 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @st_P3, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %92, %86, %80
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @ST_IGNORED, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %98
  %103 = load i8*, i8** @MGT_CMD, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %106 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %104, i32* %108, align 4
  %109 = load i8*, i8** @MGT_CMD_SIGNATURE, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %112 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %110, i32* %114, align 4
  %115 = load i8*, i8** @CTLR_CONFIG_CMD, align 8
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %118 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32 %116, i32* %120, align 4
  %121 = load i32, i32* @CTLR_SHUTDOWN, align 4
  %122 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %123 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  store i32 %121, i32* %125, align 4
  br label %188

126:                                              ; preds = %98, %92
  %127 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %128 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @st_yel, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %134 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @st_P3, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %171

138:                                              ; preds = %132, %126
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @ST_IGNORED, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %138
  %143 = load i8*, i8** @MGT_CMD, align 8
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %146 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %144, i32* %148, align 4
  %149 = load i8*, i8** @MGT_CMD_SIGNATURE, align 8
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %152 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %150, i32* %154, align 4
  %155 = load i8*, i8** @CTLR_CONFIG_CMD, align 8
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %158 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* @PMIC_SHUTDOWN, align 4
  %162 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %163 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  store i32 %161, i32* %165, align 4
  %166 = load i32, i32* %4, align 4
  %167 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %168 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  store i32 %166, i32* %170, align 4
  br label %187

171:                                              ; preds = %138, %132
  %172 = load i32, i32* @CONTROLLER_CMD, align 4
  %173 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %174 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %172, i32* %176, align 4
  %177 = load i32, i32* @CTLR_POWER_STATE_CHANGE, align 4
  %178 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %179 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  store i32 %177, i32* %181, align 4
  %182 = load i32, i32* @CTLR_POWER_SAVING, align 4
  %183 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %184 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  store i32 %182, i32* %186, align 4
  br label %187

187:                                              ; preds = %171, %142
  br label %188

188:                                              ; preds = %187, %102
  %189 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %190 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %189, i32 0, i32 3
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i64, i64* %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 4
  store i32* null, i32** %194, align 8
  %195 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %196 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %195, i32 0, i32 3
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = load i64, i64* %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  store i64 0, i64* %200, align 8
  %201 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %202 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %201, i32 0, i32 3
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = load i64, i64* %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  store i64 0, i64* %206, align 8
  %207 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %208 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %207, i32 0, i32 3
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load i64, i64* %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  store i32* null, i32** %212, align 8
  %213 = load i32, i32* @PASSTHRU_REQ_TYPE, align 4
  %214 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %215 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %214, i32 0, i32 3
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load i64, i64* %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  store i32 %213, i32* %219, align 8
  %220 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %221 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %220, i32 0, i32 5
  %222 = load i32 (%struct.st_hba*, %struct.st_msg_header*, i64)*, i32 (%struct.st_hba*, %struct.st_msg_header*, i64)** %221, align 8
  %223 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %224 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %225 = bitcast %struct.req_msg* %224 to %struct.st_msg_header*
  %226 = load i64, i64* %9, align 8
  %227 = call i32 %222(%struct.st_hba* %223, %struct.st_msg_header* %225, i64 %226)
  %228 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %229 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %228, i32 0, i32 4
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i64, i64* %7, align 8
  %234 = call i32 @spin_unlock_irqrestore(i32 %232, i64 %233)
  %235 = load i64, i64* @jiffies, align 8
  store i64 %235, i64* %8, align 8
  br label %236

236:                                              ; preds = %266, %188
  %237 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %238 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %237, i32 0, i32 3
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = load i64, i64* %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @PASSTHRU_REQ_TYPE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %268

247:                                              ; preds = %236
  %248 = load i64, i64* @jiffies, align 8
  %249 = load i64, i64* %8, align 8
  %250 = load i64, i64* @ST_INTERNAL_TIMEOUT, align 8
  %251 = load i64, i64* @HZ, align 8
  %252 = mul i64 %250, %251
  %253 = add i64 %249, %252
  %254 = call i64 @time_after(i64 %248, i64 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %247
  %257 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %258 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %257, i32 0, i32 3
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = load i64, i64* %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  store i32 0, i32* %262, align 8
  %263 = load i8*, i8** @MU_STATE_STOP, align 8
  %264 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %265 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %264, i32 0, i32 2
  store i8* %263, i8** %265, align 8
  br label %272

266:                                              ; preds = %247
  %267 = call i32 @msleep(i32 1)
  br label %236

268:                                              ; preds = %236
  %269 = load i8*, i8** @MU_STATE_STOP, align 8
  %270 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %271 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %270, i32 0, i32 2
  store i8* %269, i8** %271, align 8
  br label %272

272:                                              ; preds = %268, %256, %37
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @memset(%struct.st_msg_header*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
