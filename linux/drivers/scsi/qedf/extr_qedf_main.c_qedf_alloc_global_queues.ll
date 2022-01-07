; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_alloc_global_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_alloc_global_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, %struct.TYPE_4__**, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"No MSI-X vectors available!\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"p_cpuq is NULL.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Unable to allocate global queues array ptr memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"qedf->global_queues=%p.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Unable to allocate bdq.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Unable to allocate global queue %d.\0A\00", align 1
@FCOE_PARAMS_CQ_NUM_ENTRIES = common dso_local global i32 0, align 4
@QEDF_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Could not allocate cq.\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Could not allocate cq PBL.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ctx*)* @qedf_alloc_global_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_alloc_global_queues(%struct.qedf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %16, i32 0, i32 3
  %18 = call i32 @QEDF_ERR(i32* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %383

19:                                               ; preds = %1
  %20 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  %25 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %25, i32 0, i32 3
  %27 = call i32 @QEDF_ERR(i32* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %379

28:                                               ; preds = %19
  %29 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_4__**
  %38 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %38, i32 0, i32 1
  store %struct.TYPE_4__** %37, %struct.TYPE_4__*** %39, align 8
  %40 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = icmp ne %struct.TYPE_4__** %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %28
  %45 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %45, i32 0, i32 3
  %47 = call i32 @QEDF_ERR(i32* %46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %383

50:                                               ; preds = %28
  %51 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %51, i32 0, i32 3
  %53 = load i32, i32* @QEDF_LOG_DISC, align 4
  %54 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = call i32 @QEDF_INFO(i32* %52, i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__** %56)
  %58 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %59 = call i32 @qedf_alloc_bdq(%struct.qedf_ctx* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %63, i32 0, i32 3
  %65 = call i32 @QEDF_ERR(i32* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %379

66:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %326, %66
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %329

73:                                               ; preds = %67
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kzalloc(i32 4, i32 %74)
  %76 = bitcast i8* %75 to %struct.TYPE_4__*
  %77 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %79, i64 %81
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %82, align 8
  %83 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %85, i64 %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %73
  %92 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %92, i32 0, i32 3
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %379

98:                                               ; preds = %73
  %99 = load i32, i32* @FCOE_PARAMS_CQ_NUM_ENTRIES, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %105, i64 %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %102, i32* %110, align 8
  %111 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %112 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %113, i64 %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %121 = call i8* @ALIGN(i32 %119, i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %124 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %125, i64 %127
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 %122, i32* %130, align 8
  %131 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %132 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %133, i64 %135
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @PAGE_SIZE, align 4
  %141 = sdiv i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %146 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %147, i64 %149
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  store i32 %144, i32* %152, align 4
  %153 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %154 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %155, i64 %157
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %163 = call i8* @ALIGN(i32 %161, i32 %162)
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %166 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %167, i64 %169
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  store i32 %164, i32* %172, align 4
  %173 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %174 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %173, i32 0, i32 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %178 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %177, i32 0, i32 1
  %179 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %179, i64 %181
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %187 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %186, i32 0, i32 1
  %188 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %188, i64 %190
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* @GFP_KERNEL, align 4
  %195 = call i8* @dma_alloc_coherent(i32* %176, i32 %185, i32* %193, i32 %194)
  %196 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %197 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %198, i64 %200
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 6
  store i8* %195, i8** %203, align 8
  %204 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %205 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %206, i64 %208
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 6
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %220, label %214

214:                                              ; preds = %98
  %215 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %216 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %215, i32 0, i32 3
  %217 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %6, align 4
  br label %379

220:                                              ; preds = %98
  %221 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %222 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %221, i32 0, i32 4
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %226 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %225, i32 0, i32 1
  %227 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %227, i64 %229
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %235 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %234, i32 0, i32 1
  %236 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %236, i64 %238
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 3
  %242 = load i32, i32* @GFP_KERNEL, align 4
  %243 = call i8* @dma_alloc_coherent(i32* %224, i32 %233, i32* %241, i32 %242)
  %244 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %245 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %244, i32 0, i32 1
  %246 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %246, i64 %248
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 5
  store i8* %243, i8** %251, align 8
  %252 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %253 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %252, i32 0, i32 1
  %254 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %253, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %254, i64 %256
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 5
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %268, label %262

262:                                              ; preds = %220
  %263 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %264 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %263, i32 0, i32 3
  %265 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %264, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %266 = load i32, i32* @ENOMEM, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %6, align 4
  br label %379

268:                                              ; preds = %220
  %269 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %270 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %269, i32 0, i32 1
  %271 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %270, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %271, i64 %273
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %279 = sdiv i32 %277, %278
  store i32 %279, i32* %10, align 4
  %280 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %281 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %280, i32 0, i32 1
  %282 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %281, align 8
  %283 = load i32, i32* %5, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %282, i64 %284
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  store i32 %288, i32* %9, align 4
  %289 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %290 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %289, i32 0, i32 1
  %291 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %290, align 8
  %292 = load i32, i32* %5, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %291, i64 %293
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 5
  %297 = load i8*, i8** %296, align 8
  %298 = bitcast i8* %297 to i32*
  store i32* %298, i32** %8, align 8
  br label %299

299:                                              ; preds = %303, %268
  %300 = load i32, i32* %10, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* %10, align 4
  %302 = icmp ne i32 %300, 0
  br i1 %302, label %303, label %317

303:                                              ; preds = %299
  %304 = load i32, i32* %9, align 4
  %305 = call i32 @U64_LO(i32 %304)
  %306 = load i32*, i32** %8, align 8
  store i32 %305, i32* %306, align 4
  %307 = load i32*, i32** %8, align 8
  %308 = getelementptr inbounds i32, i32* %307, i32 1
  store i32* %308, i32** %8, align 8
  %309 = load i32, i32* %9, align 4
  %310 = call i32 @U64_HI(i32 %309)
  %311 = load i32*, i32** %8, align 8
  store i32 %310, i32* %311, align 4
  %312 = load i32*, i32** %8, align 8
  %313 = getelementptr inbounds i32, i32* %312, i32 1
  store i32* %313, i32** %8, align 8
  %314 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %315 = load i32, i32* %9, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %9, align 4
  br label %299

317:                                              ; preds = %299
  %318 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %319 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %318, i32 0, i32 1
  %320 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %319, align 8
  %321 = load i32, i32* %5, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %320, i64 %322
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 4
  store i64 0, i64* %325, align 8
  br label %326

326:                                              ; preds = %317
  %327 = load i32, i32* %5, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %5, align 4
  br label %67

329:                                              ; preds = %67
  %330 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %331 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = inttoptr i64 %332 to i32*
  store i32* %333, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %334

334:                                              ; preds = %375, %329
  %335 = load i32, i32* %5, align 4
  %336 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %337 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = icmp slt i32 %335, %338
  br i1 %339, label %340, label %378

340:                                              ; preds = %334
  %341 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %342 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %341, i32 0, i32 1
  %343 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %342, align 8
  %344 = load i32, i32* %5, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %343, i64 %345
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @U64_LO(i32 %349)
  %351 = load i32*, i32** %4, align 8
  store i32 %350, i32* %351, align 4
  %352 = load i32*, i32** %4, align 8
  %353 = getelementptr inbounds i32, i32* %352, i32 1
  store i32* %353, i32** %4, align 8
  %354 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %355 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %354, i32 0, i32 1
  %356 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %355, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %356, i64 %358
  %360 = load %struct.TYPE_4__*, %struct.TYPE_4__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @U64_HI(i32 %362)
  %364 = load i32*, i32** %4, align 8
  store i32 %363, i32* %364, align 4
  %365 = load i32*, i32** %4, align 8
  %366 = getelementptr inbounds i32, i32* %365, i32 1
  store i32* %366, i32** %4, align 8
  %367 = call i32 @U64_LO(i32 0)
  %368 = load i32*, i32** %4, align 8
  store i32 %367, i32* %368, align 4
  %369 = load i32*, i32** %4, align 8
  %370 = getelementptr inbounds i32, i32* %369, i32 1
  store i32* %370, i32** %4, align 8
  %371 = call i32 @U64_HI(i32 0)
  %372 = load i32*, i32** %4, align 8
  store i32 %371, i32* %372, align 4
  %373 = load i32*, i32** %4, align 8
  %374 = getelementptr inbounds i32, i32* %373, i32 1
  store i32* %374, i32** %4, align 8
  br label %375

375:                                              ; preds = %340
  %376 = load i32, i32* %5, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %5, align 4
  br label %334

378:                                              ; preds = %334
  store i32 0, i32* %2, align 4
  br label %383

379:                                              ; preds = %262, %214, %91, %62, %24
  %380 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %381 = call i32 @qedf_free_global_queues(%struct.qedf_ctx* %380)
  %382 = load i32, i32* %6, align 4
  store i32 %382, i32* %2, align 4
  br label %383

383:                                              ; preds = %379, %378, %44, %15
  %384 = load i32, i32* %2, align 4
  ret i32 %384
}

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, %struct.TYPE_4__**) #1

declare dso_local i32 @qedf_alloc_bdq(%struct.qedf_ctx*) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*, ...) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @qedf_free_global_queues(%struct.qedf_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
