; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_sli_cfg_dma_desc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_sli_cfg_dma_desc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_dmabuf = type { i64, i64 }
%struct.lpfc_sli_config_mbox = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8*, i32 }

@nemb_mse = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"2943 SLI_CONFIG(mse)[%d], bufLen:%d, addrHi:x%x, addrLo:x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"2944 SLI_CONFIG(mse)[%d], bufLen:%d, addrHi:x%x, addrLo:x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"3007 SLI_CONFIG(hbd)[%d], bufLen:%d, addrHi:x%x, addrLo:x%x\0A\00", align 1
@lpfc_mbox_sli_config_ecmn_hbd_len = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"3008 SLI_CONFIG(hbd)[%d], bufLen:%d, addrHi:x%x, addrLo:x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, i32, i64, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*)* @lpfc_bsg_sli_cfg_dma_desc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_sli_cfg_dma_desc_setup(%struct.lpfc_hba* %0, i32 %1, i64 %2, %struct.lpfc_dmabuf* %3, %struct.lpfc_dmabuf* %4) #0 {
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_sli_config_mbox*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.lpfc_dmabuf* %3, %struct.lpfc_dmabuf** %9, align 8
  store %struct.lpfc_dmabuf* %4, %struct.lpfc_dmabuf** %10, align 8
  %12 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %13 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.lpfc_sli_config_mbox*
  store %struct.lpfc_sli_config_mbox* %15, %struct.lpfc_sli_config_mbox** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @nemb_mse, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %139

19:                                               ; preds = %5
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %19
  %23 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %24 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 4
  %27 = call i8* @putPaddrHigh(i64 %26)
  %28 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %29 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i8* %27, i8** %35, align 8
  %36 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %37 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 4
  %40 = call i8* @putPaddrLow(i64 %39)
  %41 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %42 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i8* %40, i8** %48, align 8
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %50 = load i32, i32* @KERN_INFO, align 4
  %51 = load i32, i32* @LOG_LIBDFC, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %54 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %63 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %72 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %61, i8* %70, i8* %79)
  br label %138

81:                                               ; preds = %19
  %82 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %83 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i8* @putPaddrHigh(i64 %84)
  %86 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %87 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i8* %85, i8** %93, align 8
  %94 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %95 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @putPaddrLow(i64 %96)
  %98 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %99 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i8* %97, i8** %105, align 8
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %107 = load i32, i32* @KERN_INFO, align 4
  %108 = load i32, i32* @LOG_LIBDFC, align 4
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %111 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %120 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %129 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %106, i32 %107, i32 %108, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %109, i32 %118, i8* %127, i8* %136)
  br label %138

138:                                              ; preds = %81, %22
  br label %259

139:                                              ; preds = %5
  %140 = load i64, i64* %8, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %201

142:                                              ; preds = %139
  %143 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %144 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, 4
  %147 = call i8* @putPaddrHigh(i64 %146)
  %148 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %149 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  store i8* %147, i8** %155, align 8
  %156 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %157 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, 4
  %160 = call i8* @putPaddrLow(i64 %159)
  %161 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %162 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  store i8* %160, i8** %168, align 8
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %170 = load i32, i32* @KERN_INFO, align 4
  %171 = load i32, i32* @LOG_LIBDFC, align 4
  %172 = load i64, i64* %8, align 8
  %173 = load i32, i32* @lpfc_mbox_sli_config_ecmn_hbd_len, align 4
  %174 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %175 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load i64, i64* %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %179
  %181 = call i32 @bsg_bf_get(i32 %173, %struct.TYPE_10__* %180)
  %182 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %183 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = load i64, i64* %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %192 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = load i64, i64* %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %169, i32 %170, i32 %171, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %172, i32 %181, i8* %190, i8* %199)
  br label %258

201:                                              ; preds = %139
  %202 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %203 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i8* @putPaddrHigh(i64 %204)
  %206 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %207 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = load i64, i64* %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  store i8* %205, i8** %213, align 8
  %214 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %215 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i8* @putPaddrLow(i64 %216)
  %218 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %219 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = load i64, i64* %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  store i8* %217, i8** %225, align 8
  %226 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %227 = load i32, i32* @KERN_INFO, align 4
  %228 = load i32, i32* @LOG_LIBDFC, align 4
  %229 = load i64, i64* %8, align 8
  %230 = load i32, i32* @lpfc_mbox_sli_config_ecmn_hbd_len, align 4
  %231 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %232 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = load i64, i64* %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i64 %236
  %238 = call i32 @bsg_bf_get(i32 %230, %struct.TYPE_10__* %237)
  %239 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %240 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = load i64, i64* %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %249 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = load i64, i64* %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %226, i32 %227, i32 %228, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %229, i32 %238, i8* %247, i8* %256)
  br label %258

258:                                              ; preds = %201, %142
  br label %259

259:                                              ; preds = %258, %138
  ret void
}

declare dso_local i8* @putPaddrHigh(i64) #1

declare dso_local i8* @putPaddrLow(i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i32, i8*, i8*) #1

declare dso_local i32 @bsg_bf_get(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
