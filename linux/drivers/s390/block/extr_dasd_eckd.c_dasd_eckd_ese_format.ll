; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_ese_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_ese_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.dasd_block*, %struct.dasd_eckd_private* }
%struct.dasd_block = type { i32, i32 }
%struct.dasd_eckd_private = type { i64, i32 }
%struct.dasd_ccw_req = type { i32, %struct.TYPE_2__*, %struct.request* }
%struct.TYPE_2__ = type { %struct.dasd_device* }
%struct.request = type { i32 }
%struct.format_data_t = type { i32, i32, i8*, i8* }

@DASD_FMT_INT_COMPAT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dasd_eckd_ese_format_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_ccw_req*)* @dasd_eckd_ese_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_ese_format(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca %struct.dasd_eckd_private*, align 8
  %7 = alloca %struct.format_data_t, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dasd_ccw_req*, align 8
  %10 = alloca %struct.dasd_device*, align 8
  %11 = alloca %struct.dasd_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.request*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %5, align 8
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %18 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %17, i32 0, i32 2
  %19 = load %struct.request*, %struct.request** %18, align 8
  store %struct.request* %19, %struct.request** %13, align 8
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %21 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.dasd_device*, %struct.dasd_device** %23, align 8
  store %struct.dasd_device* %24, %struct.dasd_device** %10, align 8
  %25 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 1
  %27 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  store %struct.dasd_eckd_private* %27, %struct.dasd_eckd_private** %6, align 8
  %28 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %29 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %28, i32 0, i32 0
  %30 = load %struct.dasd_block*, %struct.dasd_block** %29, align 8
  store %struct.dasd_block* %30, %struct.dasd_block** %11, align 8
  %31 = load %struct.dasd_block*, %struct.dasd_block** %11, align 8
  %32 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %35 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %34, i32 0, i32 1
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @recs_per_track(i32* %35, i32 0, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.request*, %struct.request** %13, align 8
  %39 = call i32 @blk_rq_pos(%struct.request* %38)
  %40 = load %struct.dasd_block*, %struct.dasd_block** %11, align 8
  %41 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sector_div(i8* %46, i32 %47)
  %49 = load %struct.request*, %struct.request** %13, align 8
  %50 = call i32 @blk_rq_pos(%struct.request* %49)
  %51 = load %struct.request*, %struct.request** %13, align 8
  %52 = call i32 @blk_rq_sectors(%struct.request* %51)
  %53 = add nsw i32 %50, %52
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.dasd_block*, %struct.dasd_block** %11, align 8
  %56 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @sector_div(i8* %61, i32 %62)
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %7, i32 0, i32 3
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %7, i32 0, i32 2
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %7, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %71 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %2
  %75 = load i32, i32* @DASD_FMT_INT_COMPAT, align 4
  br label %77

76:                                               ; preds = %2
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %7, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %81 = call i32 @dasd_eckd_format_sanity_checks(%struct.dasd_device* %80, %struct.format_data_t* %7)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  %87 = call %struct.dasd_ccw_req* @ERR_PTR(i32 %86)
  store %struct.dasd_ccw_req* %87, %struct.dasd_ccw_req** %3, align 8
  br label %102

88:                                               ; preds = %77
  %89 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %90 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %91 = call %struct.dasd_ccw_req* @dasd_eckd_build_format(%struct.dasd_device* %89, %struct.dasd_device* %90, %struct.format_data_t* %7, i32 0)
  store %struct.dasd_ccw_req* %91, %struct.dasd_ccw_req** %9, align 8
  %92 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %93 = call i64 @IS_ERR(%struct.dasd_ccw_req* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  store %struct.dasd_ccw_req* %96, %struct.dasd_ccw_req** %3, align 8
  br label %102

97:                                               ; preds = %88
  %98 = load i32, i32* @dasd_eckd_ese_format_cb, align 4
  %99 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %100 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  store %struct.dasd_ccw_req* %101, %struct.dasd_ccw_req** %3, align 8
  br label %102

102:                                              ; preds = %97, %95, %84
  %103 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %103
}

declare dso_local i32 @recs_per_track(i32*, i32, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @sector_div(i8*, i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @dasd_eckd_format_sanity_checks(%struct.dasd_device*, %struct.format_data_t*) #1

declare dso_local %struct.dasd_ccw_req* @ERR_PTR(i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_format(%struct.dasd_device*, %struct.dasd_device*, %struct.format_data_t*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
