; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_complete_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i64, i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)*, %struct.TYPE_6__*, i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)* }
%struct.esas2r_adapter.0 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.esas2r_adapter.1 = type opaque

@VDA_FUNC_FLASH = common dso_local global i64 0, align 8
@VDA_FLASH_COMMIT = common dso_local global i64 0, align 8
@AF_FLASHING = common dso_local global i32 0, align 4
@RS_PENDING = common dso_local global i64 0, align 8
@VDA_FUNC_SCSI = common dso_local global i64 0, align 8
@RS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_complete_request(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %5 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %6 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VDA_FUNC_FLASH, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %15 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VDA_FLASH_COMMIT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load i32, i32* @AF_FLASHING, align 4
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %22, %13, %2
  %28 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %29 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %28, i32 0, i32 3
  %30 = load i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)*, i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)** %29, align 8
  %31 = icmp ne i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %34 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %33, i32 0, i32 3
  %35 = load i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)*, i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)** %34, align 8
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %37 = bitcast %struct.esas2r_adapter* %36 to %struct.esas2r_adapter.1*
  %38 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %39 = call i32 %35(%struct.esas2r_adapter.1* %37, %struct.esas2r_request* %38)
  %40 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %41 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RS_PENDING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %47 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %48 = call i32 @esas2r_start_request(%struct.esas2r_adapter* %46, %struct.esas2r_request* %47)
  br label %86

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %52 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @VDA_FUNC_SCSI, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @likely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %50
  %63 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %64 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RS_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %73 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %74 = call i32 @esas2r_check_req_rsp_sense(%struct.esas2r_adapter* %72, %struct.esas2r_request* %73)
  %75 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %76 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %77 = call i32 @esas2r_log_request_failure(%struct.esas2r_adapter* %75, %struct.esas2r_request* %76)
  br label %78

78:                                               ; preds = %71, %62, %50
  %79 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %80 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %79, i32 0, i32 1
  %81 = load i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)*, i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)** %80, align 8
  %82 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %83 = bitcast %struct.esas2r_adapter* %82 to %struct.esas2r_adapter.0*
  %84 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %85 = call i32 %81(%struct.esas2r_adapter.0* %83, %struct.esas2r_request* %84)
  br label %86

86:                                               ; preds = %78, %45
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @esas2r_start_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @esas2r_check_req_rsp_sense(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_log_request_failure(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
