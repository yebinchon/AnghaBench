; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_check_tcw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_check_tcw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, %struct.dasd_device*, i32, i32 }
%struct.dasd_device = type { i32, i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i32 }
%struct.format_data_t = type { i32, i32 }
%struct.eckd_count = type { i32 }
%struct.tidaw = type { i32, i32, i32, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, %struct.dasd_device*, i32, i32 }
%struct.itcw = type { i32, i32, i32, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, %struct.dasd_device*, i32, i32 }

@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@ITCW_OP_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_READ_COUNT_MT = common dso_local global i32 0, align 4
@TIDAW_FLAGS_LAST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@DASD_CQR_SUPPRESS_FP = common dso_local global i32 0, align 4
@DASD_CQR_SUPPRESS_IL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.format_data_t*, i32, %struct.eckd_count*, i32)* @dasd_eckd_build_check_tcw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_build_check_tcw(%struct.dasd_device* %0, %struct.format_data_t* %1, i32 %2, %struct.eckd_count* %3, i32 %4) #0 {
  %6 = alloca %struct.dasd_ccw_req*, align 8
  %7 = alloca %struct.dasd_device*, align 8
  %8 = alloca %struct.format_data_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eckd_count*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dasd_eckd_private*, align 8
  %13 = alloca %struct.dasd_device*, align 8
  %14 = alloca %struct.tidaw*, align 8
  %15 = alloca %struct.dasd_ccw_req*, align 8
  %16 = alloca %struct.itcw*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %7, align 8
  store %struct.format_data_t* %1, %struct.format_data_t** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.eckd_count* %3, %struct.eckd_count** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.dasd_device* null, %struct.dasd_device** %13, align 8
  store %struct.tidaw* null, %struct.tidaw** %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %25 = call %struct.dasd_device* @dasd_alias_get_start_dev(%struct.dasd_device* %24)
  store %struct.dasd_device* %25, %struct.dasd_device** %13, align 8
  br label %26

26:                                               ; preds = %23, %5
  %27 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %28 = icmp ne %struct.dasd_device* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %30, %struct.dasd_device** %13, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %33 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %32, i32 0, i32 2
  %34 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %33, align 8
  store %struct.dasd_eckd_private* %34, %struct.dasd_eckd_private** %12, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %37 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %40 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = add nsw i32 %42, 1
  %44 = mul nsw i32 %35, %43
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @itcw_calc_size(i32 0, i32 %45, i32 0)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %50 = call %struct.tidaw* @dasd_fmalloc_request(i32 %47, i32 0, i32 %48, %struct.dasd_device* %49)
  %51 = bitcast %struct.tidaw* %50 to %struct.dasd_ccw_req*
  store %struct.dasd_ccw_req* %51, %struct.dasd_ccw_req** %15, align 8
  %52 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %53 = bitcast %struct.dasd_ccw_req* %52 to %struct.tidaw*
  %54 = call i64 @IS_ERR(%struct.tidaw* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %31
  %57 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  store %struct.dasd_ccw_req* %57, %struct.dasd_ccw_req** %6, align 8
  br label %182

58:                                               ; preds = %31
  %59 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %60 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %64 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* @ITCW_OP_READ, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call %struct.tidaw* @itcw_init(i32 %65, i32 %66, i32 %67, i32 0, i32 %68, i32 0)
  %70 = bitcast %struct.tidaw* %69 to %struct.itcw*
  store %struct.itcw* %70, %struct.itcw** %16, align 8
  %71 = load %struct.itcw*, %struct.itcw** %16, align 8
  %72 = bitcast %struct.itcw* %71 to %struct.tidaw*
  %73 = call i64 @IS_ERR(%struct.tidaw* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %19, align 4
  br label %174

78:                                               ; preds = %58
  %79 = load %struct.itcw*, %struct.itcw** %16, align 8
  %80 = bitcast %struct.itcw* %79 to %struct.tidaw*
  %81 = call i32 @itcw_get_tcw(%struct.tidaw* %80)
  %82 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %83 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 8
  %84 = load %struct.itcw*, %struct.itcw** %16, align 8
  %85 = bitcast %struct.itcw* %84 to %struct.tidaw*
  %86 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %87 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %90 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DASD_ECKD_CCW_READ_COUNT_MT, align 4
  %93 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %94 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @prepare_itcw(%struct.tidaw* %85, i32 %88, i32 %91, i32 %92, %struct.dasd_device* %93, %struct.dasd_device* %94, i32 0, i32 %95, i32 4, i32 %99, i32 0, i32 %100)
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %78
  br label %174

105:                                              ; preds = %78
  store i32 0, i32* %20, align 4
  br label %106

106:                                              ; preds = %124, %105
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = load %struct.itcw*, %struct.itcw** %16, align 8
  %112 = bitcast %struct.itcw* %111 to %struct.tidaw*
  %113 = load %struct.eckd_count*, %struct.eckd_count** %10, align 8
  %114 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %113, i32 1
  store %struct.eckd_count* %114, %struct.eckd_count** %10, align 8
  %115 = ptrtoint %struct.eckd_count* %113 to i32
  %116 = call %struct.tidaw* @itcw_add_tidaw(%struct.tidaw* %112, i32 0, i32 %115, i32 4)
  store %struct.tidaw* %116, %struct.tidaw** %14, align 8
  %117 = load %struct.tidaw*, %struct.tidaw** %14, align 8
  %118 = call i64 @IS_ERR(%struct.tidaw* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %19, align 4
  br label %174

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %20, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %20, align 4
  br label %106

127:                                              ; preds = %106
  %128 = load i32, i32* @TIDAW_FLAGS_LAST, align 4
  %129 = load %struct.tidaw*, %struct.tidaw** %14, align 8
  %130 = getelementptr inbounds %struct.tidaw, %struct.tidaw* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.itcw*, %struct.itcw** %16, align 8
  %134 = bitcast %struct.itcw* %133 to %struct.tidaw*
  %135 = call i32 @itcw_finalize(%struct.tidaw* %134)
  %136 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %137 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %139 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %140 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %139, i32 0, i32 8
  store %struct.dasd_device* %138, %struct.dasd_device** %140, align 8
  %141 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %142 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %143 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %142, i32 0, i32 7
  store %struct.dasd_device* %141, %struct.dasd_device** %143, align 8
  %144 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %145 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %146 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %145, i32 0, i32 6
  store %struct.dasd_device* %144, %struct.dasd_device** %146, align 8
  %147 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %148 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %151 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  %152 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %153 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @HZ, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %158 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = call i32 (...) @get_tod_clock()
  %160 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %161 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @DASD_CQR_FILLED, align 4
  %163 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %164 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @DASD_CQR_SUPPRESS_FP, align 4
  %166 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %167 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %166, i32 0, i32 2
  %168 = call i32 @set_bit(i32 %165, i32* %167)
  %169 = load i32, i32* @DASD_CQR_SUPPRESS_IL, align 4
  %170 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %171 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %170, i32 0, i32 2
  %172 = call i32 @set_bit(i32 %169, i32* %171)
  %173 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  store %struct.dasd_ccw_req* %173, %struct.dasd_ccw_req** %6, align 8
  br label %182

174:                                              ; preds = %120, %104, %75
  %175 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %176 = bitcast %struct.dasd_ccw_req* %175 to %struct.tidaw*
  %177 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %178 = call i32 @dasd_sfree_request(%struct.tidaw* %176, %struct.dasd_device* %177)
  %179 = load i32, i32* %19, align 4
  %180 = call %struct.tidaw* @ERR_PTR(i32 %179)
  %181 = bitcast %struct.tidaw* %180 to %struct.dasd_ccw_req*
  store %struct.dasd_ccw_req* %181, %struct.dasd_ccw_req** %6, align 8
  br label %182

182:                                              ; preds = %174, %127, %56
  %183 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  ret %struct.dasd_ccw_req* %183
}

declare dso_local %struct.dasd_device* @dasd_alias_get_start_dev(%struct.dasd_device*) #1

declare dso_local i32 @itcw_calc_size(i32, i32, i32) #1

declare dso_local %struct.tidaw* @dasd_fmalloc_request(i32, i32, i32, %struct.dasd_device*) #1

declare dso_local i64 @IS_ERR(%struct.tidaw*) #1

declare dso_local %struct.tidaw* @itcw_init(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @itcw_get_tcw(%struct.tidaw*) #1

declare dso_local i32 @prepare_itcw(%struct.tidaw*, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.tidaw* @itcw_add_tidaw(%struct.tidaw*, i32, i32, i32) #1

declare dso_local i32 @itcw_finalize(%struct.tidaw*) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dasd_sfree_request(%struct.tidaw*, %struct.dasd_device*) #1

declare dso_local %struct.tidaw* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
