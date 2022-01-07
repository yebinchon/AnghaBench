; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_analysis_ccw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_analysis_ccw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, i32*, %struct.LO_eckd_data*, %struct.ccw1* }
%struct.LO_eckd_data = type { i32 }
%struct.ccw1 = type { i32, i8*, i64, i8* }
%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.eckd_count* }
%struct.eckd_count = type { i32 }

@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_READ_COUNT = common dso_local global i8* null, align 8
@CCW_FLAG_CC = common dso_local global i64 0, align 8
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@DASD_CQR_SUPPRESS_NRF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*)* @dasd_eckd_analysis_ccw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_analysis_ccw(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca %struct.eckd_count*, align 8
  %6 = alloca %struct.LO_eckd_data*, align 8
  %7 = alloca %struct.dasd_ccw_req*, align 8
  %8 = alloca %struct.ccw1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 0
  %14 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  store %struct.dasd_eckd_private* %14, %struct.dasd_eckd_private** %4, align 8
  store i32 8, i32* %9, align 4
  store i32 12, i32* %10, align 4
  %15 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %19 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %15, i32 %16, i32 %17, %struct.dasd_device* %18, i32* null)
  store %struct.dasd_ccw_req* %19, %struct.dasd_ccw_req** %7, align 8
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %21 = call i64 @IS_ERR(%struct.dasd_ccw_req* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  store %struct.dasd_ccw_req* %24, %struct.dasd_ccw_req** %2, align 8
  br label %144

25:                                               ; preds = %1
  %26 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %27 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %26, i32 0, i32 8
  %28 = load %struct.ccw1*, %struct.ccw1** %27, align 8
  store %struct.ccw1* %28, %struct.ccw1** %8, align 8
  %29 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %30 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %29, i32 1
  store %struct.ccw1* %30, %struct.ccw1** %8, align 8
  %31 = ptrtoint %struct.ccw1* %29 to i32
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 7
  %34 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %33, align 8
  %35 = load i8*, i8** @DASD_ECKD_CCW_READ_COUNT, align 8
  %36 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %37 = call i32 @define_extent(i32 %31, %struct.LO_eckd_data* %34, i32 0, i32 1, i8* %35, %struct.dasd_device* %36, i32 0)
  %38 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %39 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %38, i32 0, i32 7
  %40 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %39, align 8
  %41 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %40, i64 4
  store %struct.LO_eckd_data* %41, %struct.LO_eckd_data** %6, align 8
  %42 = load i64, i64* @CCW_FLAG_CC, align 8
  %43 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %44 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %43, i64 -1
  %45 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %42
  store i64 %47, i64* %45, align 8
  %48 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %49 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %48, i32 1
  store %struct.ccw1* %49, %struct.ccw1** %8, align 8
  %50 = ptrtoint %struct.ccw1* %48 to i32
  %51 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %6, align 8
  %52 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %51, i32 1
  store %struct.LO_eckd_data* %52, %struct.LO_eckd_data** %6, align 8
  %53 = ptrtoint %struct.LO_eckd_data* %51 to i32
  %54 = load i8*, i8** @DASD_ECKD_CCW_READ_COUNT, align 8
  %55 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %56 = call i32 @locate_record(i32 %50, i32 %53, i32 0, i32 0, i32 4, i8* %54, %struct.dasd_device* %55, i32 0)
  %57 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %58 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %57, i32 0, i32 0
  %59 = load %struct.eckd_count*, %struct.eckd_count** %58, align 8
  store %struct.eckd_count* %59, %struct.eckd_count** %5, align 8
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %86, %25
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load i64, i64* @CCW_FLAG_CC, align 8
  %65 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %66 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %65, i64 -1
  %67 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = or i64 %68, %64
  store i64 %69, i64* %67, align 8
  %70 = load i8*, i8** @DASD_ECKD_CCW_READ_COUNT, align 8
  %71 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %72 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %74 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %76 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %75, i32 0, i32 0
  store i32 8, i32* %76, align 8
  %77 = load %struct.eckd_count*, %struct.eckd_count** %5, align 8
  %78 = ptrtoint %struct.eckd_count* %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %81 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %83 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %82, i32 1
  store %struct.ccw1* %83, %struct.ccw1** %8, align 8
  %84 = load %struct.eckd_count*, %struct.eckd_count** %5, align 8
  %85 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %84, i32 1
  store %struct.eckd_count* %85, %struct.eckd_count** %5, align 8
  br label %86

86:                                               ; preds = %63
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %60

89:                                               ; preds = %60
  %90 = load i64, i64* @CCW_FLAG_CC, align 8
  %91 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %92 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %91, i64 -1
  %93 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = or i64 %94, %90
  store i64 %95, i64* %93, align 8
  %96 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %97 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %96, i32 1
  store %struct.ccw1* %97, %struct.ccw1** %8, align 8
  %98 = ptrtoint %struct.ccw1* %96 to i32
  %99 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %6, align 8
  %100 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %99, i32 1
  store %struct.LO_eckd_data* %100, %struct.LO_eckd_data** %6, align 8
  %101 = ptrtoint %struct.LO_eckd_data* %99 to i32
  %102 = load i8*, i8** @DASD_ECKD_CCW_READ_COUNT, align 8
  %103 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %104 = call i32 @locate_record(i32 %98, i32 %101, i32 1, i32 0, i32 1, i8* %102, %struct.dasd_device* %103, i32 0)
  %105 = load i64, i64* @CCW_FLAG_CC, align 8
  %106 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %107 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %106, i64 -1
  %108 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = or i64 %109, %105
  store i64 %110, i64* %108, align 8
  %111 = load i8*, i8** @DASD_ECKD_CCW_READ_COUNT, align 8
  %112 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %113 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %115 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %117 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %116, i32 0, i32 0
  store i32 8, i32* %117, align 8
  %118 = load %struct.eckd_count*, %struct.eckd_count** %5, align 8
  %119 = ptrtoint %struct.eckd_count* %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %122 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %124 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %123, i32 0, i32 6
  store i32* null, i32** %124, align 8
  %125 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %126 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %127 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %126, i32 0, i32 5
  store %struct.dasd_device* %125, %struct.dasd_device** %127, align 8
  %128 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %129 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %130 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %129, i32 0, i32 4
  store %struct.dasd_device* %128, %struct.dasd_device** %130, align 8
  %131 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %132 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %131, i32 0, i32 0
  store i32 255, i32* %132, align 8
  %133 = call i32 (...) @get_tod_clock()
  %134 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %135 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @DASD_CQR_FILLED, align 4
  %137 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %138 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @DASD_CQR_SUPPRESS_NRF, align 4
  %140 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %141 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %140, i32 0, i32 1
  %142 = call i32 @set_bit(i32 %139, i32* %141)
  %143 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  store %struct.dasd_ccw_req* %143, %struct.dasd_ccw_req** %2, align 8
  br label %144

144:                                              ; preds = %89, %23
  %145 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %145
}

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @define_extent(i32, %struct.LO_eckd_data*, i32, i32, i8*, %struct.dasd_device*, i32) #1

declare dso_local i32 @locate_record(i32, i32, i32, i32, i32, i8*, %struct.dasd_device*, i32) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
