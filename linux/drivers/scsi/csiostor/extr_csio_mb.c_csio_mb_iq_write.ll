; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_iq_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_iq_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.csio_iq_params = type { i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.fw_iq_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FW_IQ_CMD_IQSTART_F = common dso_local global i32 0, align 4
@FW_IQ_CMD_IQSTOP_F = common dso_local global i32 0, align 4
@CSIO_HWF_ROOT_NO_RELAXED_ORDERING = common dso_local global i32 0, align 4
@FW_IQ_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_mb*, i8*, i32, i32, %struct.csio_iq_params*, void (%struct.csio_hw*, %struct.csio_mb*)*)* @csio_mb_iq_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_mb_iq_write(%struct.csio_hw* %0, %struct.csio_mb* %1, i8* %2, i32 %3, i32 %4, %struct.csio_iq_params* %5, void (%struct.csio_hw*, %struct.csio_mb*)* %6) #0 {
  %8 = alloca %struct.csio_hw*, align 8
  %9 = alloca %struct.csio_mb*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.csio_iq_params*, align 8
  %14 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %15 = alloca %struct.fw_iq_cmd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %8, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.csio_iq_params* %5, %struct.csio_iq_params** %13, align 8
  store void (%struct.csio_hw*, %struct.csio_mb*)* %6, void (%struct.csio_hw*, %struct.csio_mb*)** %14, align 8
  %18 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %19 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.fw_iq_cmd*
  store %struct.fw_iq_cmd* %21, %struct.fw_iq_cmd** %15, align 8
  %22 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %23 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %22, i32 0, i32 31
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* @FW_IQ_CMD_IQSTART_F, align 4
  br label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @FW_IQ_CMD_IQSTOP_F, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %16, align 4
  %32 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %33 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CSIO_HWF_ROOT_NO_RELAXED_ORDERING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %30
  %43 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %44 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %14, align 8
  %48 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %43, %struct.fw_iq_cmd* %44, i32 %45, i8* %46, void (%struct.csio_hw*, %struct.csio_mb*)* %47, i32 1)
  br label %49

49:                                               ; preds = %42, %30
  %50 = load i32, i32* @FW_IQ_CMD, align 4
  %51 = call i32 @FW_CMD_OP_V(i32 %50)
  %52 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %57 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %56, i32 0, i32 30
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @FW_IQ_CMD_PFN_V(i32 %58)
  %60 = or i32 %55, %59
  %61 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %62 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %61, i32 0, i32 29
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @FW_IQ_CMD_VFN_V(i32 %63)
  %65 = or i32 %60, %64
  %66 = call i32 @htonl(i32 %65)
  %67 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %68 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @FW_CMD_LEN16_V(i32 3)
  %73 = or i32 %71, %72
  %74 = call i32 @htonl(i32 %73)
  %75 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %76 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %80 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @htons(i32 %81)
  %83 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %84 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %88 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @htons(i32 %89)
  %91 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %92 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %96 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @htons(i32 %97)
  %99 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %100 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %104 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %103, i32 0, i32 28
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @FW_IQ_CMD_IQANDST_V(i32 %105)
  %107 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %108 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %107, i32 0, i32 27
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @FW_IQ_CMD_IQANUS_V(i32 %109)
  %111 = or i32 %106, %110
  %112 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %113 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %112, i32 0, i32 26
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @FW_IQ_CMD_IQANUD_V(i32 %114)
  %116 = or i32 %111, %115
  %117 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %118 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %117, i32 0, i32 25
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @FW_IQ_CMD_IQANDSTINDEX_V(i32 %119)
  %121 = or i32 %116, %120
  %122 = call i32 @htonl(i32 %121)
  %123 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %124 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %128 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %127, i32 0, i32 24
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @FW_IQ_CMD_IQPCIECH_V(i32 %129)
  %131 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %132 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %131, i32 0, i32 23
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @FW_IQ_CMD_IQDCAEN_V(i32 %133)
  %135 = or i32 %130, %134
  %136 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %137 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %136, i32 0, i32 22
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @FW_IQ_CMD_IQDCACPU_V(i32 %138)
  %140 = or i32 %135, %139
  %141 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %142 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %141, i32 0, i32 21
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @FW_IQ_CMD_IQINTCNTTHRESH_V(i32 %143)
  %145 = or i32 %140, %144
  %146 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %147 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %146, i32 0, i32 20
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @FW_IQ_CMD_IQCPRIO_V(i32 %148)
  %150 = or i32 %145, %149
  %151 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %152 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %151, i32 0, i32 19
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @FW_IQ_CMD_IQESIZE_V(i32 %153)
  %155 = or i32 %150, %154
  %156 = call i32 @htons(i32 %155)
  %157 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %158 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %162 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @htons(i32 %163)
  %165 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %166 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %170 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %169, i32 0, i32 18
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @cpu_to_be64(i64 %171)
  %173 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %174 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %178 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %196

181:                                              ; preds = %49
  %182 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %183 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %182, i32 0, i32 17
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @FW_IQ_CMD_IQFLINTIQHSEN_V(i32 %184)
  %186 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %187 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %186, i32 0, i32 16
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @FW_IQ_CMD_IQFLINTCONGEN_V(i32 %188)
  %190 = or i32 %185, %189
  %191 = call i32 @htonl(i32 %190)
  %192 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %193 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %181, %49
  %197 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %198 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %287

201:                                              ; preds = %196
  %202 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %203 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %287

206:                                              ; preds = %201
  %207 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %208 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 65535
  br i1 %210, label %211, label %287

211:                                              ; preds = %206
  %212 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %213 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %212, i32 0, i32 15
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @FW_IQ_CMD_FL0HOSTFCMODE_V(i32 %214)
  %216 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %217 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %216, i32 0, i32 14
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @FW_IQ_CMD_FL0CPRIO_V(i32 %218)
  %220 = or i32 %215, %219
  %221 = load i32, i32* %17, align 4
  %222 = call i32 @FW_IQ_CMD_FL0FETCHRO_V(i32 %221)
  %223 = or i32 %220, %222
  %224 = load i32, i32* %17, align 4
  %225 = call i32 @FW_IQ_CMD_FL0DATARO_V(i32 %224)
  %226 = or i32 %223, %225
  %227 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %228 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %227, i32 0, i32 13
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @FW_IQ_CMD_FL0PADEN_V(i32 %229)
  %231 = or i32 %226, %230
  %232 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %233 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %232, i32 0, i32 12
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @FW_IQ_CMD_FL0PACKEN_V(i32 %234)
  %236 = or i32 %231, %235
  %237 = call i32 @htonl(i32 %236)
  %238 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %239 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %243 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %242, i32 0, i32 11
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @FW_IQ_CMD_FL0DCAEN_V(i32 %244)
  %246 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %247 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %246, i32 0, i32 10
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @FW_IQ_CMD_FL0DCACPU_V(i32 %248)
  %250 = or i32 %245, %249
  %251 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %252 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @FW_IQ_CMD_FL0FBMIN_V(i32 %253)
  %255 = or i32 %250, %254
  %256 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %257 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @FW_IQ_CMD_FL0FBMAX_V(i32 %258)
  %260 = or i32 %255, %259
  %261 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %262 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @FW_IQ_CMD_FL0CIDXFTHRESH_V(i32 %263)
  %265 = or i32 %260, %264
  %266 = call i32 @htons(i32 %265)
  %267 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %268 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %272 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @htons(i32 %273)
  %275 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %276 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 4
  %279 = load %struct.csio_iq_params*, %struct.csio_iq_params** %13, align 8
  %280 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %279, i32 0, i32 6
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @cpu_to_be64(i64 %281)
  %283 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %15, align 8
  %284 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %211, %206, %201, %196
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_iq_cmd*, i32, i8*, void (%struct.csio_hw*, %struct.csio_mb*)*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_PFN_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_VFN_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQANDST_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQANUS_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQANUD_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQANDSTINDEX_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQPCIECH_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQDCAEN_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQDCACPU_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQINTCNTTHRESH_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQCPRIO_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQESIZE_V(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @FW_IQ_CMD_IQFLINTIQHSEN_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQFLINTCONGEN_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0HOSTFCMODE_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0CPRIO_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0FETCHRO_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0DATARO_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0PADEN_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0PACKEN_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0DCAEN_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0DCACPU_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0FBMIN_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0FBMAX_V(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0CIDXFTHRESH_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
