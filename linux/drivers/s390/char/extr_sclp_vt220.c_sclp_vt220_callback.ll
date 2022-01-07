; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_req = type { i64 }
%struct.sclp_vt220_request = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.sclp_vt220_sccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sccb_header = type { i32 }

@SCLP_REQ_FAILED = common dso_local global i64 0, align 8
@SCLP_BUFFER_MAX_RETRY = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sclp_req*, i8*)* @sclp_vt220_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_vt220_callback(%struct.sclp_req* %0, i8* %1) #0 {
  %3 = alloca %struct.sclp_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sclp_vt220_request*, align 8
  %6 = alloca %struct.sclp_vt220_sccb*, align 8
  store %struct.sclp_req* %0, %struct.sclp_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.sclp_vt220_request*
  store %struct.sclp_vt220_request* %8, %struct.sclp_vt220_request** %5, align 8
  %9 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %10 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SCLP_REQ_FAILED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %5, align 8
  %16 = call i32 @sclp_vt220_process_queue(%struct.sclp_vt220_request* %15)
  br label %81

17:                                               ; preds = %2
  %18 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %5, align 8
  %19 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.sclp_vt220_sccb*
  store %struct.sclp_vt220_sccb* %22, %struct.sclp_vt220_sccb** %6, align 8
  %23 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %6, align 8
  %24 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %77 [
    i32 32, label %27
    i32 1520, label %28
    i32 832, label %29
    i32 64, label %56
  ]

27:                                               ; preds = %17
  br label %78

28:                                               ; preds = %17
  br label %78

29:                                               ; preds = %17
  %30 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %5, align 8
  %31 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @SCLP_BUFFER_MAX_RETRY, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %78

37:                                               ; preds = %29
  %38 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %6, align 8
  %39 = bitcast %struct.sclp_vt220_sccb* %38 to %struct.sccb_header*
  %40 = call i32 @sclp_remove_processed(%struct.sccb_header* %39)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %6, align 8
  %44 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load i8*, i8** @SCLP_REQ_FILLED, align 8
  %47 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %5, align 8
  %48 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %51 = call i32 @sclp_add_request(%struct.sclp_req* %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %81

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %37
  br label %78

56:                                               ; preds = %17
  %57 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %5, align 8
  %58 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @SCLP_BUFFER_MAX_RETRY, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %78

64:                                               ; preds = %56
  %65 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %6, align 8
  %66 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load i8*, i8** @SCLP_REQ_FILLED, align 8
  %69 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %5, align 8
  %70 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %73 = call i32 @sclp_add_request(%struct.sclp_req* %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %81

76:                                               ; preds = %64
  br label %78

77:                                               ; preds = %17
  br label %78

78:                                               ; preds = %77, %76, %63, %55, %36, %28, %27
  %79 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %5, align 8
  %80 = call i32 @sclp_vt220_process_queue(%struct.sclp_vt220_request* %79)
  br label %81

81:                                               ; preds = %78, %75, %53, %14
  ret void
}

declare dso_local i32 @sclp_vt220_process_queue(%struct.sclp_vt220_request*) #1

declare dso_local i32 @sclp_remove_processed(%struct.sccb_header*) #1

declare dso_local i32 @sclp_add_request(%struct.sclp_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
