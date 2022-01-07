; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_fmapi_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_fmapi_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i64, i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)*, i64, %struct.TYPE_4__* }
%struct.esas2r_adapter.0 = type opaque
%struct.TYPE_4__ = type { %struct.atto_vda_flash_req }
%struct.atto_vda_flash_req = type { i32 }
%struct.esas2r_flash_context = type { i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)*, %struct.TYPE_3__ }
%struct.esas2r_adapter.1 = type opaque
%struct.TYPE_3__ = type { i32* }

@RS_SUCCESS = common dso_local global i64 0, align 8
@RS_PENDING = common dso_local global i64 0, align 8
@VDA_FLASH_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_fmapi_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_fmapi_callback(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.atto_vda_flash_req*, align 8
  %6 = alloca %struct.esas2r_flash_context*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %7 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %8 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.atto_vda_flash_req* %10, %struct.atto_vda_flash_req** %5, align 8
  %11 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %12 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.esas2r_flash_context*
  store %struct.esas2r_flash_context* %14, %struct.esas2r_flash_context** %6, align 8
  %15 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %16 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RS_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %2
  %21 = load %struct.atto_vda_flash_req*, %struct.atto_vda_flash_req** %5, align 8
  %22 = getelementptr inbounds %struct.atto_vda_flash_req, %struct.atto_vda_flash_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %51 [
    i32 129, label %24
    i32 128, label %37
  ]

24:                                               ; preds = %20
  %25 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %6, align 8
  %26 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %38

31:                                               ; preds = %24
  %32 = load %struct.atto_vda_flash_req*, %struct.atto_vda_flash_req** %5, align 8
  %33 = getelementptr inbounds %struct.atto_vda_flash_req, %struct.atto_vda_flash_req* %32, i32 0, i32 0
  store i32 128, i32* %33, align 4
  %34 = load i64, i64* @RS_PENDING, align 8
  %35 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %36 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %52

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* @VDA_FLASH_COMMIT, align 4
  %40 = load %struct.atto_vda_flash_req*, %struct.atto_vda_flash_req** %5, align 8
  %41 = getelementptr inbounds %struct.atto_vda_flash_req, %struct.atto_vda_flash_req* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i64, i64* @RS_PENDING, align 8
  %43 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %44 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %6, align 8
  %46 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %45, i32 0, i32 0
  %47 = load i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)*, i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)** %46, align 8
  %48 = bitcast i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)* %47 to i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)*
  %49 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %50 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %49, i32 0, i32 1
  store i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)* %48, i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)** %50, align 8
  br label %52

51:                                               ; preds = %20
  br label %52

52:                                               ; preds = %51, %38, %31
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %55 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RS_PENDING, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %6, align 8
  %61 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %60, i32 0, i32 0
  %62 = load i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)*, i32 (%struct.esas2r_adapter.1*, %struct.esas2r_request*)** %61, align 8
  %63 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %64 = bitcast %struct.esas2r_adapter* %63 to %struct.esas2r_adapter.1*
  %65 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %66 = call i32 %62(%struct.esas2r_adapter.1* %64, %struct.esas2r_request* %65)
  br label %67

67:                                               ; preds = %59, %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
