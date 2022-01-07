; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_rq_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_rq_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_request = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__, i32, i32, i64, i64, i32, i32*, i8*, i32, %union.atto_vda_req* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64* }
%union.atto_vda_req = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.esas2r_adapter = type { i32, %struct.esas2r_request** }

@esas2r_complete_request_cb = common dso_local global i32 0, align 4
@RS_PENDING = common dso_local global i32 0, align 4
@RT_INI_REQ = common dso_local global i32 0, align 4
@RQ_SIZE_DEFAULT = common dso_local global i32 0, align 4
@VDA_FUNC_SCSI = common dso_local global i32 0, align 4
@SENSE_DATA_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_request*, %struct.esas2r_adapter*)* @esas2r_rq_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_rq_init_request(%struct.esas2r_request* %0, %struct.esas2r_adapter* %1) #0 {
  %3 = alloca %struct.esas2r_request*, align 8
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %union.atto_vda_req*, align 8
  store %struct.esas2r_request* %0, %struct.esas2r_request** %3, align 8
  store %struct.esas2r_adapter* %1, %struct.esas2r_adapter** %4, align 8
  %6 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %7 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %6, i32 0, i32 11
  %8 = load %union.atto_vda_req*, %union.atto_vda_req** %7, align 8
  store %union.atto_vda_req* %8, %union.atto_vda_req** %5, align 8
  %9 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %10 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %9, i32 0, i32 10
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %13 = getelementptr inbounds %union.atto_vda_req, %union.atto_vda_req* %12, i64 1
  %14 = bitcast %union.atto_vda_req* %13 to i8*
  %15 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %16 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %15, i32 0, i32 9
  store i8* %14, i8** %16, align 8
  %17 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %18 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %17, i32 0, i32 8
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* @esas2r_complete_request_cb, align 4
  %20 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %21 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %23 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %25 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @RS_PENDING, align 4
  %27 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %28 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @RT_INI_REQ, align 4
  %30 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %31 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %33 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %38 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @RQ_SIZE_DEFAULT, align 4
  %43 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %44 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %45, i32 0, i32 1
  %47 = load %struct.esas2r_request**, %struct.esas2r_request*** %46, align 8
  %48 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %49 = bitcast %union.atto_vda_req* %48 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @LOWORD(i32 %51)
  %53 = getelementptr inbounds %struct.esas2r_request*, %struct.esas2r_request** %47, i64 %52
  %54 = load %struct.esas2r_request*, %struct.esas2r_request** %53, align 8
  %55 = icmp ne %struct.esas2r_request* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %2
  %57 = call i32 (...) @esas2r_bugon()
  br label %58

58:                                               ; preds = %56, %2
  %59 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %60 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %60, i32 0, i32 1
  %62 = load %struct.esas2r_request**, %struct.esas2r_request*** %61, align 8
  %63 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %64 = bitcast %union.atto_vda_req* %63 to %struct.TYPE_5__*
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @LOWORD(i32 %66)
  %68 = getelementptr inbounds %struct.esas2r_request*, %struct.esas2r_request** %62, i64 %67
  store %struct.esas2r_request* %59, %struct.esas2r_request** %68, align 8
  %69 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %70 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = shl i32 %71, 16
  %74 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %75 = bitcast %union.atto_vda_req* %74 to %struct.TYPE_5__*
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %73, %77
  %79 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %80 = bitcast %union.atto_vda_req* %79 to %struct.TYPE_5__*
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @VDA_FUNC_SCSI, align 4
  %83 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %84 = bitcast %union.atto_vda_req* %83 to %struct.TYPE_5__*
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 7
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @SENSE_DATA_SZ, align 4
  %87 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %88 = bitcast %union.atto_vda_req* %87 to %struct.TYPE_5__*
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 6
  store i32 %86, i32* %89, align 8
  %90 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %91 = bitcast %union.atto_vda_req* %90 to %struct.TYPE_5__*
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %94 = bitcast %union.atto_vda_req* %93 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %97 = bitcast %union.atto_vda_req* %96 to %struct.TYPE_5__*
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %100 = bitcast %union.atto_vda_req* %99 to %struct.TYPE_5__*
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %103 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 48
  %108 = call i32 @cpu_to_le64(i64 %107)
  %109 = load %union.atto_vda_req*, %union.atto_vda_req** %5, align 8
  %110 = bitcast %union.atto_vda_req* %109 to %struct.TYPE_5__*
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @esas2r_bugon(...) #1

declare dso_local i32 @cpu_to_le64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
