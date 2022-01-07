; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_ccw_req*, i64, i32, %struct.TYPE_3__, %struct.dasd_device* }
%struct.TYPE_3__ = type { i32 }
%struct.dasd_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DASD_FEATURE_ERPLOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ERP chain at BEGINNING of ERP-ACTION\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ERP %p (%02x) refers to %p\0A\00", align 1
@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@DBF_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"ERP called for successful request %p - NO ERP necessary\00", align 1
@DASD_CQR_DONE = common dso_local global i32 0, align 4
@DASD_CQR_VERIFY_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"ERP chain at END of ERP-ACTION\0A\00", align 1
@DASD_CQR_IN_ERP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %4, align 8
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %7, i32 0, i32 6
  %9 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  store %struct.dasd_device* %9, %struct.dasd_device** %5, align 8
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %6, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DASD_FEATURE_ERPLOG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_ccw_req* %22, %struct.dasd_ccw_req** %6, align 8
  br label %23

23:                                               ; preds = %39, %16
  %24 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %25 = icmp ne %struct.dasd_ccw_req* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %28 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %36 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %35, i32 0, i32 2
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %36, align 8
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.dasd_ccw_req* %31, i32 %34, %struct.dasd_ccw_req* %37)
  br label %39

39:                                               ; preds = %26
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %41 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %40, i32 0, i32 2
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %41, align 8
  store %struct.dasd_ccw_req* %42, %struct.dasd_ccw_req** %6, align 8
  br label %23

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %46 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @scsw_cstat(i32* %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %52 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @scsw_dstat(i32* %53)
  %55 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %56 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %57 = or i32 %55, %56
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32, i32* @DBF_DEBUG, align 4
  %61 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %62 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %63 = call i32 @DBF_DEV_EVENT(i32 %60, %struct.dasd_device* %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), %struct.dasd_ccw_req* %62)
  %64 = load i32, i32* @DASD_CQR_DONE, align 4
  %65 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %66 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_ccw_req* %67, %struct.dasd_ccw_req** %2, align 8
  br label %154

68:                                               ; preds = %50, %44
  %69 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %70 = call %struct.dasd_ccw_req* @dasd_3990_erp_in_erp(%struct.dasd_ccw_req* %69)
  store %struct.dasd_ccw_req* %70, %struct.dasd_ccw_req** %4, align 8
  %71 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %72 = icmp eq %struct.dasd_ccw_req* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %75 = call %struct.dasd_ccw_req* @dasd_3990_erp_additional_erp(%struct.dasd_ccw_req* %74)
  store %struct.dasd_ccw_req* %75, %struct.dasd_ccw_req** %4, align 8
  %76 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %77 = call i64 @IS_ERR(%struct.dasd_ccw_req* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %80, %struct.dasd_ccw_req** %2, align 8
  br label %154

81:                                               ; preds = %73
  br label %86

82:                                               ; preds = %68
  %83 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %84 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %85 = call %struct.dasd_ccw_req* @dasd_3990_erp_handle_match_erp(%struct.dasd_ccw_req* %83, %struct.dasd_ccw_req* %84)
  store %struct.dasd_ccw_req* %85, %struct.dasd_ccw_req** %4, align 8
  br label %86

86:                                               ; preds = %82, %81
  %87 = load i32, i32* @DASD_CQR_VERIFY_PATH, align 4
  %88 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %89 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %88, i32 0, i32 4
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %94 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %99 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %102 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %97, %92, %86
  %104 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %105 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DASD_FEATURE_ERPLOG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %103
  %111 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %112 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 (i32*, i8*, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %116, %struct.dasd_ccw_req** %6, align 8
  br label %117

117:                                              ; preds = %133, %110
  %118 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %119 = icmp ne %struct.dasd_ccw_req* %118, null
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %122 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %126 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %127 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %130 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %129, i32 0, i32 2
  %131 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %130, align 8
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.dasd_ccw_req* %125, i32 %128, %struct.dasd_ccw_req* %131)
  br label %133

133:                                              ; preds = %120
  %134 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %135 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %134, i32 0, i32 2
  %136 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %135, align 8
  store %struct.dasd_ccw_req* %136, %struct.dasd_ccw_req** %6, align 8
  br label %117

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %137, %103
  %139 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %140 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %139, i32 0, i32 0
  %141 = call i64 @list_empty(i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load i32, i32* @DASD_CQR_IN_ERP, align 4
  %145 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %146 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %148 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %147, i32 0, i32 0
  %149 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %150 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %149, i32 0, i32 0
  %151 = call i32 @list_add_tail(i32* %148, i32* %150)
  br label %152

152:                                              ; preds = %143, %138
  %153 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %153, %struct.dasd_ccw_req** %2, align 8
  br label %154

154:                                              ; preds = %152, %79, %59
  %155 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %155
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @scsw_cstat(i32*) #1

declare dso_local i32 @scsw_dstat(i32*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, %struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_in_erp(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_additional_erp(%struct.dasd_ccw_req*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_handle_match_erp(%struct.dasd_ccw_req*, %struct.dasd_ccw_req*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
