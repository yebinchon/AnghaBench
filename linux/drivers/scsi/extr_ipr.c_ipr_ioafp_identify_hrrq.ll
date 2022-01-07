; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_ioafp_identify_hrrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_ioafp_identify_hrrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { {}*, %struct.ipr_ioarcb, %struct.ipr_ioa_cfg* }
%struct.ipr_ioarcb = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.ipr_ioa_cfg = type { i64, i64, i32, i64, %struct.ipr_hrr_queue*, %struct.TYPE_3__* }
%struct.ipr_hrr_queue = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Starting IOA initialization sequence.\0A\00", align 1
@IPR_ID_HOST_RR_Q = common dso_local global i32 0, align 4
@IPR_IOA_RES_HANDLE = common dso_local global i32 0, align 4
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@IPR_ID_HRRQ_SELE_ENABLE = common dso_local global i32 0, align 4
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_INTERNAL_TIMEOUT = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_ioafp_identify_hrrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_ioafp_identify_hrrq(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.ipr_ioarcb*, align 8
  %6 = alloca %struct.ipr_hrr_queue*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %7 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %7, i32 0, i32 2
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  store %struct.ipr_ioa_cfg* %9, %struct.ipr_ioa_cfg** %4, align 8
  %10 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %10, i32 0, i32 1
  store %struct.ipr_ioarcb* %11, %struct.ipr_ioarcb** %5, align 8
  %12 = load i32, i32* @ENTER, align 4
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.ipr_cmnd*)**
  store i32 (%struct.ipr_cmnd*)* @ipr_ioafp_std_inquiry, i32 (%struct.ipr_cmnd*)** %15, align 8
  %16 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %17 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %28 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %269

34:                                               ; preds = %26
  %35 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %35, i32 0, i32 4
  %37 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %36, align 8
  %38 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %39 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %37, i64 %40
  store %struct.ipr_hrr_queue* %41, %struct.ipr_hrr_queue** %6, align 8
  %42 = load i32, i32* @IPR_ID_HOST_RR_Q, align 4
  %43 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %44 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* @IPR_IOA_RES_HANDLE, align 4
  %49 = call i32 @cpu_to_be32(i32 %48)
  %50 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %51 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %53 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %54 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %57 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %34
  %61 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %62 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %34
  %67 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %68 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i32, i32* @IPR_ID_HRRQ_SELE_ENABLE, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %75 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %73
  store i32 %80, i32* %78, align 4
  br label %90

81:                                               ; preds = %66
  %82 = load i32, i32* @IPR_ID_HRRQ_SELE_ENABLE, align 4
  %83 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %84 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %82
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %81, %71
  %91 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %92 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = ashr i32 %94, 24
  %96 = and i32 %95, 255
  %97 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %98 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %96, i32* %101, align 4
  %102 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %103 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = ashr i32 %105, 16
  %107 = and i32 %106, 255
  %108 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %109 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 %107, i32* %112, align 4
  %113 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %114 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = ashr i32 %116, 8
  %118 = and i32 %117, 255
  %119 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %120 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  store i32 %118, i32* %123, align 4
  %124 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %125 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = and i32 %127, 255
  %129 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %130 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 5
  store i32 %128, i32* %133, align 4
  %134 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %135 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = mul i64 4, %137
  %139 = lshr i64 %138, 8
  %140 = and i64 %139, 255
  %141 = trunc i64 %140 to i32
  %142 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %143 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 7
  store i32 %141, i32* %146, align 4
  %147 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %148 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = mul i64 4, %150
  %152 = and i64 %151, 255
  %153 = trunc i64 %152 to i32
  %154 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %155 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 8
  store i32 %153, i32* %158, align 4
  %159 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %160 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @IPR_ID_HRRQ_SELE_ENABLE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %90
  %169 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %170 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %174 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 9
  store i32 %172, i32* %177, align 4
  br label %178

178:                                              ; preds = %168, %90
  %179 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %180 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %228

183:                                              ; preds = %178
  %184 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %185 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = ashr i32 %187, 56
  %189 = and i32 %188, 255
  %190 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %191 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 10
  store i32 %189, i32* %194, align 4
  %195 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %196 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = ashr i32 %198, 48
  %200 = and i32 %199, 255
  %201 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %202 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 11
  store i32 %200, i32* %205, align 4
  %206 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %207 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i32
  %210 = ashr i32 %209, 40
  %211 = and i32 %210, 255
  %212 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %213 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 12
  store i32 %211, i32* %216, align 4
  %217 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %218 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = trunc i64 %219 to i32
  %221 = ashr i32 %220, 32
  %222 = and i32 %221, 255
  %223 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %224 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 13
  store i32 %222, i32* %227, align 4
  br label %228

228:                                              ; preds = %183, %178
  %229 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %230 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @IPR_ID_HRRQ_SELE_ENABLE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %228
  %239 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %240 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = trunc i64 %241 to i32
  %243 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %244 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 14
  store i32 %242, i32* %247, align 4
  br label %248

248:                                              ; preds = %238, %228
  %249 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %250 = load i32, i32* @ipr_reset_ioa_job, align 4
  %251 = load i32, i32* @ipr_timeout, align 4
  %252 = load i32, i32* @IPR_INTERNAL_TIMEOUT, align 4
  %253 = call i32 @ipr_do_req(%struct.ipr_cmnd* %249, i32 %250, i32 %251, i32 %252)
  %254 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %255 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %255, align 8
  %258 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %259 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ult i64 %257, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %248
  %263 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %264 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %263, i32 0, i32 0
  %265 = bitcast {}** %264 to i32 (%struct.ipr_cmnd*)**
  store i32 (%struct.ipr_cmnd*)* @ipr_ioafp_identify_hrrq, i32 (%struct.ipr_cmnd*)** %265, align 8
  br label %266

266:                                              ; preds = %262, %248
  %267 = load i32, i32* @LEAVE, align 4
  %268 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %268, i32* %2, align 4
  br label %272

269:                                              ; preds = %26
  %270 = load i32, i32* @LEAVE, align 4
  %271 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %271, i32* %2, align 4
  br label %272

272:                                              ; preds = %269, %266
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local i32 @ipr_ioafp_std_inquiry(%struct.ipr_cmnd*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
