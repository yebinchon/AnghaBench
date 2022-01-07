; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_bdq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_bdq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_10__*, %struct.TYPE_6__*, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8* }
%struct.scsi_bd = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_7__ = type { i8*, i8* }

@QEDI_BDQ_NUM = common dso_local global i32 0, align 4
@QEDI_BDQ_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not allocate BDQ buffer %d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDI_PAGE_SIZE = common dso_local global i32 0, align 4
@QEDI_LOG_CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"rq_num_entries = %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not allocate BDQ PBL.\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"pbl [0x%p] pbl->address hi [0x%llx] lo [0x%llx], idx [%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Could not allocate list of PBL pages.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_alloc_bdq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_alloc_bdq(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_bd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @QEDI_BDQ_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %13, i32 0, i32 7
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* @QEDI_BDQ_BUF_SIZE, align 4
  %18 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %18, i32 0, i32 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @dma_alloc_coherent(i32* %16, i32 %17, i32* %24, i32 %25)
  %27 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %27, i32 0, i32 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i8* %26, i8** %33, align 8
  %34 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %34, i32 0, i32 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %12
  %44 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %44, i32 0, i32 6
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %242

50:                                               ; preds = %12
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %8

54:                                               ; preds = %8
  %55 = load i32, i32* @QEDI_BDQ_NUM, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 32
  %58 = trunc i64 %57 to i32
  %59 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %65 = call i32 @ALIGN(i32 %63, i32 %64)
  %66 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 32
  %73 = trunc i64 %72 to i32
  %74 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %76, i32 0, i32 6
  %78 = load i32, i32* @QEDI_LOG_CONN, align 4
  %79 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32*, i32, i8*, ...) @QEDI_INFO(i32* %77, i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %83, i32 0, i32 7
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %90, i32 0, i32 2
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @dma_alloc_coherent(i32* %86, i32 %89, i32* %91, i32 %92)
  %94 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %94, i32 0, i32 9
  store i8* %93, i8** %95, align 8
  %96 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %96, i32 0, i32 9
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %54
  %101 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %101, i32 0, i32 6
  %103 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %242

106:                                              ; preds = %54
  %107 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %107, i32 0, i32 9
  %109 = load i8*, i8** %108, align 8
  %110 = bitcast i8* %109 to %struct.scsi_bd*
  store %struct.scsi_bd* %110, %struct.scsi_bd** %5, align 8
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %182, %106
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @QEDI_BDQ_NUM, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %185

115:                                              ; preds = %111
  %116 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %117 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %116, i32 0, i32 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @QEDI_U64_HI(i32 %123)
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %127 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store i8* %125, i8** %128, align 8
  %129 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %130 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %129, i32 0, i32 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @QEDI_U64_LO(i32 %136)
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %140 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  %142 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %143 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %142, i32 0, i32 6
  %144 = load i32, i32* @QEDI_LOG_CONN, align 4
  %145 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %146 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %147 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %151 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = call i32 (i32*, i32, i8*, ...) @QEDI_INFO(i32* %143, i32 %144, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), %struct.scsi_bd* %145, i8* %149, i8* %153, i32 %154)
  %156 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %157 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  store i64 0, i64* %161, align 8
  %162 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %163 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  store i64 0, i64* %167, align 8
  %168 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %169 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 2
  store i64 0, i64* %173, align 8
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @cpu_to_le16(i32 %174)
  %176 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %177 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  %180 = load %struct.scsi_bd*, %struct.scsi_bd** %5, align 8
  %181 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %180, i32 1
  store %struct.scsi_bd* %181, %struct.scsi_bd** %5, align 8
  br label %182

182:                                              ; preds = %115
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %111

185:                                              ; preds = %111
  %186 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %187 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %186, i32 0, i32 7
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %191 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %192 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %191, i32 0, i32 3
  %193 = load i32, i32* @GFP_KERNEL, align 4
  %194 = call i8* @dma_alloc_coherent(i32* %189, i32 %190, i32* %192, i32 %193)
  %195 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %196 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  %197 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %198 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %197, i32 0, i32 5
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %207, label %201

201:                                              ; preds = %185
  %202 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %203 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %202, i32 0, i32 6
  %204 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %203, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %2, align 4
  br label %242

207:                                              ; preds = %185
  %208 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %209 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %212 = sdiv i32 %210, %211
  %213 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %214 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  %215 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %216 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %215, i32 0, i32 5
  %217 = load i8*, i8** %216, align 8
  %218 = bitcast i8* %217 to i32*
  store i32* %218, i32** %6, align 8
  %219 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %220 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %238, %207
  %223 = load i32, i32* %4, align 4
  %224 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %225 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %222
  %229 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %230 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i32*, i32** %6, align 8
  store i32 %231, i32* %232, align 4
  %233 = load i32*, i32** %6, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %6, align 8
  %235 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %7, align 4
  br label %238

238:                                              ; preds = %228
  %239 = load i32, i32* %4, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %4, align 4
  br label %222

241:                                              ; preds = %222
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %241, %201, %100, %43
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @QEDI_U64_HI(i32) #1

declare dso_local i32 @QEDI_U64_LO(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
