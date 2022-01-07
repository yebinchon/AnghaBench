; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_message_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_message_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_rssd_messages = type { i32, i32 }
%struct.dasd_psf_prssd_data = type { i32, i32 }
%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_device*, i64, i64, i32, i32, %struct.ccw1*, i32, i32*, %struct.dasd_device* }
%struct.ccw1 = type { i32, i8*, i32, i32 }

@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Could not allocate read message buffer request\00", align 1
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_VERIFY_PATH = common dso_local global i32 0, align 4
@DASD_CQR_FLAGS_USE_ERP = common dso_local global i32 0, align 4
@PSF_ORDER_PRSSD = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_PSF = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_RSSD = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Reading messages failed with rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.dasd_rssd_messages*, i64)* @dasd_eckd_read_message_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_read_message_buffer(%struct.dasd_device* %0, %struct.dasd_rssd_messages* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_rssd_messages*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dasd_rssd_messages*, align 8
  %9 = alloca %struct.dasd_psf_prssd_data*, align 8
  %10 = alloca %struct.dasd_ccw_req*, align 8
  %11 = alloca %struct.ccw1*, align 8
  %12 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store %struct.dasd_rssd_messages* %1, %struct.dasd_rssd_messages** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %14 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %15 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %13, i32 2, i32 16, %struct.dasd_device* %14, i32* null)
  store %struct.dasd_ccw_req* %15, %struct.dasd_ccw_req** %10, align 8
  %16 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %17 = call i64 @IS_ERR(%struct.dasd_ccw_req* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @DBF_WARNING, align 4
  %21 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i32, i8*, ...) @DBF_EVENT_DEVID(i32 %20, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %26 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %25)
  store i32 %26, i32* %4, align 4
  br label %155

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %30 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %137, %27
  %32 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %34 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %33, i32 0, i32 10
  store %struct.dasd_device* %32, %struct.dasd_device** %34, align 8
  %35 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %36 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %37 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %36, i32 0, i32 2
  store %struct.dasd_device* %35, %struct.dasd_device** %37, align 8
  %38 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %39 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %38, i32 0, i32 9
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 10, %40
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %43 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @DASD_CQR_VERIFY_PATH, align 4
  %45 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %46 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %45, i32 0, i32 8
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  %48 = load i32, i32* @DASD_CQR_FLAGS_USE_ERP, align 4
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %50 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %49, i32 0, i32 8
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %53 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %52, i32 0, i32 1
  store i32 256, i32* %53, align 4
  %54 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %55 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.dasd_psf_prssd_data*
  store %struct.dasd_psf_prssd_data* %57, %struct.dasd_psf_prssd_data** %9, align 8
  %58 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %9, align 8
  %59 = bitcast %struct.dasd_psf_prssd_data* %58 to %struct.dasd_rssd_messages*
  %60 = call i32 @memset(%struct.dasd_rssd_messages* %59, i32 0, i32 8)
  %61 = load i32, i32* @PSF_ORDER_PRSSD, align 4
  %62 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %9, align 8
  %63 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %9, align 8
  %65 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %64, i32 0, i32 0
  store i32 3, i32* %65, align 4
  %66 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %67 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %66, i32 0, i32 7
  %68 = load %struct.ccw1*, %struct.ccw1** %67, align 8
  store %struct.ccw1* %68, %struct.ccw1** %11, align 8
  %69 = load i32, i32* @DASD_ECKD_CCW_PSF, align 4
  %70 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %71 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %73 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %72, i32 0, i32 0
  store i32 8, i32* %73, align 8
  %74 = load i32, i32* @CCW_FLAG_CC, align 4
  %75 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %76 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @CCW_FLAG_SLI, align 4
  %80 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %81 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %9, align 8
  %85 = ptrtoint %struct.dasd_psf_prssd_data* %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %88 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %9, align 8
  %90 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %89, i64 1
  %91 = bitcast %struct.dasd_psf_prssd_data* %90 to %struct.dasd_rssd_messages*
  store %struct.dasd_rssd_messages* %91, %struct.dasd_rssd_messages** %8, align 8
  %92 = load %struct.dasd_rssd_messages*, %struct.dasd_rssd_messages** %8, align 8
  %93 = call i32 @memset(%struct.dasd_rssd_messages* %92, i32 0, i32 8)
  %94 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %95 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %94, i32 1
  store %struct.ccw1* %95, %struct.ccw1** %11, align 8
  %96 = load i32, i32* @DASD_ECKD_CCW_RSSD, align 4
  %97 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %98 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %100 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %99, i32 0, i32 0
  store i32 8, i32* %100, align 8
  %101 = load i32, i32* @CCW_FLAG_SLI, align 4
  %102 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %103 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.dasd_rssd_messages*, %struct.dasd_rssd_messages** %8, align 8
  %107 = ptrtoint %struct.dasd_rssd_messages* %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %110 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = call i32 (...) @get_tod_clock()
  %112 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %113 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @DASD_CQR_FILLED, align 4
  %115 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %116 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %118 = call i32 @dasd_sleep_on_immediatly(%struct.dasd_ccw_req* %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %31
  %122 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %123 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.dasd_psf_prssd_data*
  store %struct.dasd_psf_prssd_data* %125, %struct.dasd_psf_prssd_data** %9, align 8
  %126 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %9, align 8
  %127 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %126, i64 1
  %128 = bitcast %struct.dasd_psf_prssd_data* %127 to %struct.dasd_rssd_messages*
  store %struct.dasd_rssd_messages* %128, %struct.dasd_rssd_messages** %8, align 8
  %129 = load %struct.dasd_rssd_messages*, %struct.dasd_rssd_messages** %6, align 8
  %130 = load %struct.dasd_rssd_messages*, %struct.dasd_rssd_messages** %8, align 8
  %131 = call i32 @memcpy(%struct.dasd_rssd_messages* %129, %struct.dasd_rssd_messages* %130, i32 8)
  br label %148

132:                                              ; preds = %31
  %133 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %134 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %139 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  br label %31

140:                                              ; preds = %132
  %141 = load i32, i32* @DBF_WARNING, align 4
  %142 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %143 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 (i32, i32, i8*, ...) @DBF_EVENT_DEVID(i32 %141, i32 %144, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %121
  %149 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %150 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %151 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %150, i32 0, i32 2
  %152 = load %struct.dasd_device*, %struct.dasd_device** %151, align 8
  %153 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %149, %struct.dasd_device* %152)
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %148, %19
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.dasd_rssd_messages*, i32, i32) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i32 @dasd_sleep_on_immediatly(%struct.dasd_ccw_req*) #1

declare dso_local i32 @memcpy(%struct.dasd_rssd_messages*, %struct.dasd_rssd_messages*, i32) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
