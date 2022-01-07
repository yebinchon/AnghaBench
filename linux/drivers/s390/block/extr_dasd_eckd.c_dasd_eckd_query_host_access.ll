; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_query_host_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_query_host_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }
%struct.dasd_psf_query_host_access = type { i32 }
%struct.dasd_psf_prssd_data = type { i32, i32, i32, i32 }
%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_device*, i32, i32, i32, %struct.ccw1*, i64, i32*, %struct.dasd_device* }
%struct.ccw1 = type { i32, i8*, i32, i32 }

@HYPER_PAV = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Could not allocate read message buffer request\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not allocate host_access buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@PSF_ORDER_PRSSD = common dso_local global i32 0, align 4
@PSF_SUBORDER_QHA = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_PSF = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_RSSD = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@DASD_CQR_SUPPRESS_CR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Reading host access data failed with rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.dasd_psf_query_host_access*)* @dasd_eckd_query_host_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_query_host_access(%struct.dasd_device* %0, %struct.dasd_psf_query_host_access* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_psf_query_host_access*, align 8
  %6 = alloca %struct.dasd_eckd_private*, align 8
  %7 = alloca %struct.dasd_psf_query_host_access*, align 8
  %8 = alloca %struct.dasd_psf_prssd_data*, align 8
  %9 = alloca %struct.dasd_ccw_req*, align 8
  %10 = alloca %struct.ccw1*, align 8
  %11 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_psf_query_host_access* %1, %struct.dasd_psf_query_host_access** %5, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 2
  %14 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  store %struct.dasd_eckd_private* %14, %struct.dasd_eckd_private** %6, align 8
  %15 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %2
  %20 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %21 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HYPER_PAV, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %193

30:                                               ; preds = %19, %2
  %31 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %32 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 14
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %193

42:                                               ; preds = %30
  %43 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %44 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %45 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %43, i32 2, i32 17, %struct.dasd_device* %44, i32* null)
  store %struct.dasd_ccw_req* %45, %struct.dasd_ccw_req** %9, align 8
  %46 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %47 = call i64 @IS_ERR(%struct.dasd_ccw_req* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32, i32* @DBF_WARNING, align 4
  %51 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %52 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i32, i8*, ...) @DBF_EVENT_DEVID(i32 %50, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %56 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %55)
  store i32 %56, i32* %3, align 4
  br label %193

57:                                               ; preds = %42
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = load i32, i32* @GFP_DMA, align 4
  %60 = or i32 %58, %59
  %61 = call %struct.dasd_psf_query_host_access* @kzalloc(i32 4, i32 %60)
  store %struct.dasd_psf_query_host_access* %61, %struct.dasd_psf_query_host_access** %7, align 8
  %62 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %7, align 8
  %63 = icmp ne %struct.dasd_psf_query_host_access* %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %57
  %65 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %66 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %67 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %65, %struct.dasd_device* %66)
  %68 = load i32, i32* @DBF_WARNING, align 4
  %69 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %70 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i32, i8*, ...) @DBF_EVENT_DEVID(i32 %68, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %193

75:                                               ; preds = %57
  %76 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %77 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %78 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %77, i32 0, i32 9
  store %struct.dasd_device* %76, %struct.dasd_device** %78, align 8
  %79 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %80 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %81 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %80, i32 0, i32 2
  store %struct.dasd_device* %79, %struct.dasd_device** %81, align 8
  %82 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %83 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %82, i32 0, i32 8
  store i32* null, i32** %83, align 8
  %84 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %85 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %84, i32 0, i32 0
  store i32 256, i32* %85, align 8
  %86 = load i32, i32* @HZ, align 4
  %87 = mul nsw i32 10, %86
  %88 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %89 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %91 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.dasd_psf_prssd_data*
  store %struct.dasd_psf_prssd_data* %93, %struct.dasd_psf_prssd_data** %8, align 8
  %94 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %8, align 8
  %95 = call i32 @memset(%struct.dasd_psf_prssd_data* %94, i32 0, i32 16)
  %96 = load i32, i32* @PSF_ORDER_PRSSD, align 4
  %97 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %8, align 8
  %98 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @PSF_SUBORDER_QHA, align 4
  %100 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %8, align 8
  %101 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %103 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %8, align 8
  %108 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %110 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %8, align 8
  %115 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %117 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %116, i32 0, i32 6
  %118 = load %struct.ccw1*, %struct.ccw1** %117, align 8
  store %struct.ccw1* %118, %struct.ccw1** %10, align 8
  %119 = load i32, i32* @DASD_ECKD_CCW_PSF, align 4
  %120 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %121 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %123 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %122, i32 0, i32 0
  store i32 16, i32* %123, align 8
  %124 = load i32, i32* @CCW_FLAG_CC, align 4
  %125 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %126 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* @CCW_FLAG_SLI, align 4
  %130 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %131 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %8, align 8
  %135 = ptrtoint %struct.dasd_psf_prssd_data* %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %138 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %140 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %139, i32 1
  store %struct.ccw1* %140, %struct.ccw1** %10, align 8
  %141 = load i32, i32* @DASD_ECKD_CCW_RSSD, align 4
  %142 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %143 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %145 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %144, i32 0, i32 0
  store i32 4, i32* %145, align 8
  %146 = load i32, i32* @CCW_FLAG_SLI, align 4
  %147 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %148 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %7, align 8
  %152 = ptrtoint %struct.dasd_psf_query_host_access* %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %155 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = call i32 (...) @get_tod_clock()
  %157 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %158 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @DASD_CQR_FILLED, align 4
  %160 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %161 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @DASD_CQR_SUPPRESS_CR, align 4
  %163 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %164 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %163, i32 0, i32 3
  %165 = call i32 @__set_bit(i32 %162, i32* %164)
  %166 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %167 = call i32 @dasd_sleep_on_interruptible(%struct.dasd_ccw_req* %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %75
  %171 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %5, align 8
  %172 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %7, align 8
  %173 = bitcast %struct.dasd_psf_query_host_access* %171 to i8*
  %174 = bitcast %struct.dasd_psf_query_host_access* %172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %173, i8* align 4 %174, i64 4, i1 false)
  br label %184

175:                                              ; preds = %75
  %176 = load i32, i32* @DBF_WARNING, align 4
  %177 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %178 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i32 (i32, i32, i8*, ...) @DBF_EVENT_DEVID(i32 %176, i32 %179, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @EOPNOTSUPP, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %175, %170
  %185 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %186 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %187 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %186, i32 0, i32 2
  %188 = load %struct.dasd_device*, %struct.dasd_device** %187, align 8
  %189 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %185, %struct.dasd_device* %188)
  %190 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %7, align 8
  %191 = call i32 @kfree(%struct.dasd_psf_query_host_access* %190)
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %184, %64, %49, %39, %27
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_psf_query_host_access* @kzalloc(i32, i32) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

declare dso_local i32 @memset(%struct.dasd_psf_prssd_data*, i32, i32) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @dasd_sleep_on_interruptible(%struct.dasd_ccw_req*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.dasd_psf_query_host_access*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
