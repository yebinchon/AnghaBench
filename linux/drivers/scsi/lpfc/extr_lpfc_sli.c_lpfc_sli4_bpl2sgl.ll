; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_bpl2sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_bpl2sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.lpfc_sglq = type { i32, i64 }
%struct.ulp_bde64 = type { %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.sli4_sge = type { i32, i8*, i8*, i8* }
%struct.lpfc_dmabuf = type { i64 }

@NO_XRI = common dso_local global i32 0, align 4
@CMD_XMIT_BLS_RSP64_CX = common dso_local global i64 0, align 8
@BUFF_TYPE_BLP_64 = common dso_local global i64 0, align 8
@lpfc_sli4_sge_last = common dso_local global i32 0, align 4
@CMD_GEN_REQUEST64_CR = common dso_local global i64 0, align 8
@BUFF_TYPE_BDE_64I = common dso_local global i64 0, align 8
@lpfc_sli4_sge_offset = common dso_local global i32 0, align 4
@lpfc_sli4_sge_type = common dso_local global i32 0, align 4
@LPFC_SGE_TYPE_DATA = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_sglq*)* @lpfc_sli4_bpl2sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bpl2sgl(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_sglq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_sglq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ulp_bde64*, align 8
  %10 = alloca %struct.ulp_bde64, align 8
  %11 = alloca %struct.sli4_sge*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_sglq* %2, %struct.lpfc_sglq** %7, align 8
  %18 = load i32, i32* @NO_XRI, align 4
  store i32 %18, i32* %8, align 4
  store %struct.ulp_bde64* null, %struct.ulp_bde64** %9, align 8
  store %struct.sli4_sge* null, %struct.sli4_sge** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %20 = icmp ne %struct.lpfc_iocbq* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %7, align 8
  %23 = icmp ne %struct.lpfc_sglq* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %243

26:                                               ; preds = %21
  %27 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %7, align 8
  %28 = getelementptr inbounds %struct.lpfc_sglq, %struct.lpfc_sglq* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.sli4_sge*
  store %struct.sli4_sge* %30, %struct.sli4_sge** %11, align 8
  %31 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %31, i32 0, i32 0
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %13, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CMD_XMIT_BLS_RSP64_CX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %7, align 8
  %40 = getelementptr inbounds %struct.lpfc_sglq, %struct.lpfc_sglq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  br label %243

42:                                               ; preds = %26
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BUFF_TYPE_BLP_64, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %184

51:                                               ; preds = %42
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 40
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %69, %struct.lpfc_dmabuf** %12, align 8
  br label %72

70:                                               ; preds = %51
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %243

72:                                               ; preds = %65
  %73 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %74 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %76, %struct.ulp_bde64** %9, align 8
  %77 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %78 = icmp ne %struct.ulp_bde64* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %243

81:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %180, %81
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %183

86:                                               ; preds = %82
  %87 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %88 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %91 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %93 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %96 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %98 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @le32_to_cpu(i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %103 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %14, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %86
  %109 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %110 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %111 = call i32 @bf_set(i32 %109, %struct.sli4_sge* %110, i32 1)
  br label %116

112:                                              ; preds = %86
  %113 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %114 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %115 = call i32 @bf_set(i32 %113, %struct.sli4_sge* %114, i32 0)
  br label %116

116:                                              ; preds = %112, %108
  %117 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %118 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @le32_to_cpu(i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %10, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %10, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %131 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %133 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CMD_GEN_REQUEST64_CR, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %168

138:                                              ; preds = %116
  %139 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %140 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @BUFF_TYPE_BDE_64I, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  br label %149

149:                                              ; preds = %146, %138
  %150 = load i32, i32* %17, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 0, i32* %16, align 4
  br label %153

153:                                              ; preds = %152, %149
  %154 = load i32, i32* @lpfc_sli4_sge_offset, align 4
  %155 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @bf_set(i32 %154, %struct.sli4_sge* %155, i32 %156)
  %158 = load i32, i32* @lpfc_sli4_sge_type, align 4
  %159 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %160 = load i32, i32* @LPFC_SGE_TYPE_DATA, align 4
  %161 = call i32 @bf_set(i32 %158, %struct.sli4_sge* %159, i32 %160)
  %162 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %10, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %16, align 4
  br label %168

168:                                              ; preds = %153, %116
  %169 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %170 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @cpu_to_le32(i32 %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %175 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %177 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %176, i32 1
  store %struct.ulp_bde64* %177, %struct.ulp_bde64** %9, align 8
  %178 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %179 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %178, i32 1
  store %struct.sli4_sge* %179, %struct.sli4_sge** %11, align 8
  br label %180

180:                                              ; preds = %168
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %82

183:                                              ; preds = %82
  br label %239

184:                                              ; preds = %42
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @BUFF_TYPE_BDE_64, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %238

193:                                              ; preds = %184
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @cpu_to_le32(i32 %199)
  %201 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %202 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %201, i32 0, i32 3
  store i8* %200, i8** %202, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i8* @cpu_to_le32(i32 %208)
  %210 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %211 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %210, i32 0, i32 2
  store i8* %209, i8** %211, align 8
  %212 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %213 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i8* @le32_to_cpu(i32 %214)
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %218 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %220 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %221 = call i32 @bf_set(i32 %219, %struct.sli4_sge* %220, i32 1)
  %222 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %223 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i8* @cpu_to_le32(i32 %224)
  %226 = ptrtoint i8* %225 to i32
  %227 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %228 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = call i8* @cpu_to_le32(i32 %234)
  %236 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %237 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %236, i32 0, i32 1
  store i8* %235, i8** %237, align 8
  br label %238

238:                                              ; preds = %193, %184
  br label %239

239:                                              ; preds = %238, %183
  %240 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %7, align 8
  %241 = getelementptr inbounds %struct.lpfc_sglq, %struct.lpfc_sglq* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %239, %79, %70, %38, %24
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @bf_set(i32, %struct.sli4_sge*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
