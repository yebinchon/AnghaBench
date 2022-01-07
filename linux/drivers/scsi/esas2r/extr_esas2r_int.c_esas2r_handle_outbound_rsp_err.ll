; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_handle_outbound_rsp_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_handle_outbound_rsp_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.atto_vda_ob_rsp = type { i32 }

@RS_SUCCESS = common dso_local global i64 0, align 8
@RS_ABORTED = common dso_local global i64 0, align 8
@RQ_MAX_TIMEOUT = common dso_local global i64 0, align 8
@RS_TIMEOUT = common dso_local global i64 0, align 8
@RS_SCSI_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"scsistatus: %x\00", align 1
@SAM_STAT_GOOD = common dso_local global i64 0, align 8
@SAM_STAT_CONDITION_MET = common dso_local global i64 0, align 8
@SAM_STAT_INTERMEDIATE = common dso_local global i64 0, align 8
@SAM_STAT_INTERMEDIATE_CONDITION_MET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*, %struct.atto_vda_ob_rsp*)* @esas2r_handle_outbound_rsp_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_handle_outbound_rsp_err(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1, %struct.atto_vda_ob_rsp* %2) #0 {
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %struct.esas2r_request*, align 8
  %6 = alloca %struct.atto_vda_ob_rsp*, align 8
  %7 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %5, align 8
  store %struct.atto_vda_ob_rsp* %2, %struct.atto_vda_ob_rsp** %6, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RS_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %79

16:                                               ; preds = %3
  %17 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %18 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %17, i32 0, i32 2
  %19 = load %struct.atto_vda_ob_rsp*, %struct.atto_vda_ob_rsp** %6, align 8
  %20 = getelementptr inbounds %struct.atto_vda_ob_rsp, %struct.atto_vda_ob_rsp* %19, i32 0, i32 0
  %21 = call i32 @memcpy(%struct.TYPE_4__* %18, i32* %20, i32 4)
  %22 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %23 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RS_ABORTED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %29 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RQ_MAX_TIMEOUT, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* @RS_TIMEOUT, align 8
  %35 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %36 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  br label %78

38:                                               ; preds = %16
  %39 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %40 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RS_SCSI_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %38
  %45 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %46 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @esas2r_trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @SAM_STAT_GOOD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @SAM_STAT_CONDITION_MET, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @SAM_STAT_INTERMEDIATE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @SAM_STAT_INTERMEDIATE_CONDITION_MET, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63, %59, %55, %44
  %68 = load i64, i64* @RS_SUCCESS, align 8
  %69 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %70 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* @SAM_STAT_GOOD, align 8
  %72 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %73 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 %71, i64* %75, align 8
  br label %76

76:                                               ; preds = %67, %63
  br label %77

77:                                               ; preds = %76, %38
  br label %78

78:                                               ; preds = %77, %37
  br label %79

79:                                               ; preds = %78, %3
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @esas2r_trace(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
