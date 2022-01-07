; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_nvram_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_nvram_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32 }
%struct.esas2r_request = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.atto_vda_flash_req }
%struct.atto_vda_flash_req = type { i32 }

@RS_SUCCESS = common dso_local global i64 0, align 8
@RS_PENDING = common dso_local global i64 0, align 8
@AF_NVR_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_nvram_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_nvram_callback(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.atto_vda_flash_req*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %6 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %7 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.atto_vda_flash_req* %9, %struct.atto_vda_flash_req** %5, align 8
  %10 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %11 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RS_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.atto_vda_flash_req*, %struct.atto_vda_flash_req** %5, align 8
  %17 = getelementptr inbounds %struct.atto_vda_flash_req, %struct.atto_vda_flash_req* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %35 [
    i32 131, label %19
    i32 128, label %25
    i32 129, label %31
    i32 130, label %34
  ]

19:                                               ; preds = %15
  %20 = load %struct.atto_vda_flash_req*, %struct.atto_vda_flash_req** %5, align 8
  %21 = getelementptr inbounds %struct.atto_vda_flash_req, %struct.atto_vda_flash_req* %20, i32 0, i32 0
  store i32 128, i32* %21, align 4
  %22 = load i64, i64* @RS_PENDING, align 8
  %23 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %24 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %36

25:                                               ; preds = %15
  %26 = load %struct.atto_vda_flash_req*, %struct.atto_vda_flash_req** %5, align 8
  %27 = getelementptr inbounds %struct.atto_vda_flash_req, %struct.atto_vda_flash_req* %26, i32 0, i32 0
  store i32 130, i32* %27, align 4
  %28 = load i64, i64* @RS_PENDING, align 8
  %29 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %30 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %36

31:                                               ; preds = %15
  %32 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %33 = call i32 @esas2r_nvram_validate(%struct.esas2r_adapter* %32)
  br label %36

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %15, %34
  br label %36

36:                                               ; preds = %35, %31, %25, %19
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %39 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RS_PENDING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %45 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RS_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @AF_NVR_VALID, align 4
  %51 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %51, i32 0, i32 1
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  br label %59

54:                                               ; preds = %43
  %55 = load i32, i32* @AF_NVR_VALID, align 4
  %56 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %56, i32 0, i32 1
  %58 = call i32 @clear_bit(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %61 = call i32 @esas2r_enable_heartbeat(%struct.esas2r_adapter* %60)
  %62 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %62, i32 0, i32 0
  %64 = call i32 @up(i32* %63)
  br label %65

65:                                               ; preds = %59, %37
  ret void
}

declare dso_local i32 @esas2r_nvram_validate(%struct.esas2r_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @esas2r_enable_heartbeat(%struct.esas2r_adapter*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
