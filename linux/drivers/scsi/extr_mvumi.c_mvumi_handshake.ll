; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_handshake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i64, i32, %struct.mvumi_hw_regs* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mvumi_hw_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvumi_hs_header = type { i32 }
%struct.mvumi_hs_page1 = type { i32 }

@FW_STATE_STARTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"handshake state[0x%x].\0A\00", align 1
@HS_STATUS_OK = common dso_local global i64 0, align 8
@FW_STATE_HANDSHAKING = common dso_local global i64 0, align 8
@HANDSHAKE_SIGNATURE = common dso_local global i32 0, align 4
@DRBL_HANDSHAKE = common dso_local global i32 0, align 4
@HS_PAGE_FIRM_CAP = common dso_local global i32 0, align 4
@HS_PAGE_TOTAL = common dso_local global i32 0, align 4
@HS_S_ABORT = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_MARVELL_MV9143 = common dso_local global i32 0, align 4
@FW_STATE_STARTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"unknown handshake state [0x%x].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*)* @mvumi_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_handshake(%struct.mvumi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvumi_hs_header*, align 8
  %8 = alloca %struct.mvumi_hw_regs*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  %9 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %10 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %9, i32 0, i32 12
  %11 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %10, align 8
  store %struct.mvumi_hw_regs* %11, %struct.mvumi_hw_regs** %8, align 8
  %12 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FW_STATE_STARTING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 128, i32* %4, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %20 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ioread32(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @HS_GET_STATE(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %26 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @HS_GET_STATUS(i32 %31)
  %33 = load i64, i64* @HS_STATUS_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = load i64, i64* @FW_STATE_STARTING, align 8
  %37 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %38 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  store i32 -1, i32* %2, align 4
  br label %313

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39, %17
  store i32 0, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  switch i32 %41, label %305 [
    i32 128, label %42
    i32 130, label %66
    i32 132, label %98
    i32 131, label %98
    i32 129, label %98
    i32 133, label %203
  ]

42:                                               ; preds = %40
  %43 = load i64, i64* @FW_STATE_HANDSHAKING, align 8
  %44 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %45 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* @HS_STATUS_OK, align 8
  %48 = call i32 @HS_SET_STATUS(i32 %46, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @HS_SET_STATE(i32 %49, i32 130)
  %51 = load i32, i32* @HANDSHAKE_SIGNATURE, align 4
  %52 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %53 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @iowrite32(i32 %51, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %58 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @iowrite32(i32 %56, i32 %59)
  %61 = load i32, i32* @DRBL_HANDSHAKE, align 4
  %62 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %63 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @iowrite32(i32 %61, i32 %64)
  br label %312

66:                                               ; preds = %40
  %67 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %68 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @lower_32_bits(i32 %69)
  %71 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %72 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @iowrite32(i32 %70, i32 %73)
  %75 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %76 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @upper_32_bits(i32 %77)
  %79 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %80 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @iowrite32(i32 %78, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i64, i64* @HS_STATUS_OK, align 8
  %85 = call i32 @HS_SET_STATUS(i32 %83, i64 %84)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @HS_SET_STATE(i32 %86, i32 132)
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %90 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @iowrite32(i32 %88, i32 %91)
  %93 = load i32, i32* @DRBL_HANDSHAKE, align 4
  %94 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %95 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @iowrite32(i32 %93, i32 %96)
  br label %312

98:                                               ; preds = %40, %40, %40
  %99 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %100 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %99, i32 0, i32 10
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.mvumi_hs_header*
  store %struct.mvumi_hs_header* %102, %struct.mvumi_hs_header** %7, align 8
  %103 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %7, align 8
  %104 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @HS_PAGE_FIRM_CAP, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %98
  %109 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %7, align 8
  %110 = bitcast %struct.mvumi_hs_header* %109 to %struct.mvumi_hs_page1*
  %111 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %114 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 8
  %115 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %116 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %108
  %120 = load i32, i32* @HS_PAGE_TOTAL, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %123 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %122, i32 0, i32 9
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %119, %108
  br label %125

125:                                              ; preds = %124, %98
  %126 = load i32, i32* %4, align 4
  %127 = icmp eq i32 %126, 131
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %130 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %7, align 8
  %131 = call i32 @mvumi_hs_process_page(%struct.mvumi_hba* %129, %struct.mvumi_hs_header* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @HS_S_ABORT, align 4
  %136 = call i32 @HS_SET_STATE(i32 %134, i32 %135)
  store i32 -1, i32* %2, align 4
  br label %313

137:                                              ; preds = %128
  %138 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %139 = call i32 @mvumi_init_data(%struct.mvumi_hba* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @HS_S_ABORT, align 4
  %144 = call i32 @HS_SET_STATE(i32 %142, i32 %143)
  store i32 -1, i32* %2, align 4
  br label %313

145:                                              ; preds = %137
  br label %157

146:                                              ; preds = %125
  %147 = load i32, i32* %4, align 4
  %148 = icmp eq i32 %147, 132
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %7, align 8
  %151 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %150, i32 0, i32 0
  store i32 0, i32* %151, align 4
  %152 = load i32, i32* @HS_PAGE_TOTAL, align 4
  %153 = sub nsw i32 %152, 1
  %154 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %155 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %154, i32 0, i32 9
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %149, %146
  br label %157

157:                                              ; preds = %156, %145
  %158 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %7, align 8
  %159 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  %162 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %163 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 8
  %165 = icmp sle i32 %161, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %157
  %167 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %7, align 8
  %168 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %7, align 8
  %172 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @HS_PAGE_FIRM_CAP, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %166
  %177 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %178 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %7, align 8
  %179 = call i32 @mvumi_hs_build_page(%struct.mvumi_hba* %177, %struct.mvumi_hs_header* %178)
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @HS_SET_STATE(i32 %180, i32 129)
  br label %185

182:                                              ; preds = %166
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @HS_SET_STATE(i32 %183, i32 131)
  br label %185

185:                                              ; preds = %182, %176
  br label %189

186:                                              ; preds = %157
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @HS_SET_STATE(i32 %187, i32 133)
  br label %189

189:                                              ; preds = %186, %185
  %190 = load i32, i32* %6, align 4
  %191 = load i64, i64* @HS_STATUS_OK, align 8
  %192 = call i32 @HS_SET_STATUS(i32 %190, i64 %191)
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %195 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @iowrite32(i32 %193, i32 %196)
  %198 = load i32, i32* @DRBL_HANDSHAKE, align 4
  %199 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %200 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @iowrite32(i32 %198, i32 %201)
  br label %312

203:                                              ; preds = %40
  %204 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %205 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ioread32(i32 %206)
  store i32 %207, i32* %5, align 4
  %208 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %209 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %212 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %210, %213
  %215 = load i32, i32* %5, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %219 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @iowrite32(i32 %217, i32 %220)
  %222 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %223 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %226 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @iowrite32(i32 %224, i32 %227)
  %229 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %230 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @lower_32_bits(i32 %231)
  %233 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %234 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @iowrite32(i32 %232, i32 %235)
  %237 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %238 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @upper_32_bits(i32 %239)
  %241 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %242 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @iowrite32(i32 %240, i32 %243)
  %245 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %246 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %245, i32 0, i32 4
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @PCI_DEVICE_ID_MARVELL_MV9143, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %281

252:                                              ; preds = %203
  %253 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %254 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = sub i32 %255, 1
  %257 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %258 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %256, %259
  %261 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %262 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @iowrite32(i32 %260, i32 %263)
  %265 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %266 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @lower_32_bits(i32 %267)
  %269 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %270 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @iowrite32(i32 %268, i32 %271)
  %273 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %274 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @upper_32_bits(i32 %275)
  %277 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %278 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @iowrite32(i32 %276, i32 %279)
  br label %281

281:                                              ; preds = %252, %203
  %282 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %283 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = sub i32 %284, 1
  %286 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %287 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %285, %288
  %290 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %291 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  %292 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %293 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = sub i32 %294, 1
  %296 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %297 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %295, %298
  %300 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %301 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %300, i32 0, i32 3
  store i32 %299, i32* %301, align 8
  %302 = load i64, i64* @FW_STATE_STARTED, align 8
  %303 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %304 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %303, i32 0, i32 0
  store i64 %302, i64* %304, align 8
  br label %312

305:                                              ; preds = %40
  %306 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %307 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %306, i32 0, i32 4
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 0
  %310 = load i32, i32* %4, align 4
  %311 = call i32 @dev_err(i32* %309, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %310)
  store i32 -1, i32* %2, align 4
  br label %313

312:                                              ; preds = %281, %189, %66, %42
  store i32 0, i32* %2, align 4
  br label %313

313:                                              ; preds = %312, %305, %141, %133, %35
  %314 = load i32, i32* %2, align 4
  ret i32 %314
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @HS_GET_STATE(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i64 @HS_GET_STATUS(i32) #1

declare dso_local i32 @HS_SET_STATUS(i32, i64) #1

declare dso_local i32 @HS_SET_STATE(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mvumi_hs_process_page(%struct.mvumi_hba*, %struct.mvumi_hs_header*) #1

declare dso_local i32 @mvumi_init_data(%struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_hs_build_page(%struct.mvumi_hba*, %struct.mvumi_hs_header*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
