; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dpt_i2o.c_adpt_queue_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dpt_i2o.c_adpt_queue_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i64*, i64*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.adpt_device*, i32, i64, i64, %struct.TYPE_6__* }
%struct.adpt_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_8__ = type { i32 }

@REQUEST_SENSE = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@DPTI_STATE_RESET = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DPTI_DEV_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @adpt_queue_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adpt_queue_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.adpt_device*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  store %struct.adpt_device* null, %struct.adpt_device** %7, align 8
  %8 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %8, void (%struct.scsi_cmnd*)** %10, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REQUEST_SENSE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, i32* @DID_OK, align 4
  %27 = shl i32 %26, 16
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %31, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %32(%struct.scsi_cmnd* %33)
  store i32 0, i32* %3, align 4
  br label %121

34:                                               ; preds = %18, %2
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @FAILED, align 4
  store i32 %48, i32* %3, align 4
  br label %121

49:                                               ; preds = %34
  %50 = call i32 (...) @rmb()
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DPTI_STATE_RESET, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %58, i32* %3, align 4
  br label %121

59:                                               ; preds = %49
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.adpt_device*, %struct.adpt_device** %63, align 8
  store %struct.adpt_device* %64, %struct.adpt_device** %7, align 8
  %65 = icmp eq %struct.adpt_device* %64, null
  br i1 %65, label %66, label %102

66:                                               ; preds = %59
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.adpt_device* @adpt_find_device(%struct.TYPE_8__* %67, i32 %73, i32 %79, i32 %84)
  store %struct.adpt_device* %85, %struct.adpt_device** %7, align 8
  %86 = icmp eq %struct.adpt_device* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %66
  %88 = load i32, i32* @DID_NO_CONNECT, align 4
  %89 = shl i32 %88, 16
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 0
  %94 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %93, align 8
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %94(%struct.scsi_cmnd* %95)
  store i32 0, i32* %3, align 4
  br label %121

96:                                               ; preds = %66
  %97 = load %struct.adpt_device*, %struct.adpt_device** %7, align 8
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store %struct.adpt_device* %97, %struct.adpt_device** %101, align 8
  br label %102

102:                                              ; preds = %96, %59
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load %struct.adpt_device*, %struct.adpt_device** %7, align 8
  %107 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %106, i32 0, i32 1
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %107, align 8
  %108 = load %struct.adpt_device*, %struct.adpt_device** %7, align 8
  %109 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DPTI_DEV_RESET, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i32, i32* @FAILED, align 4
  store i32 %115, i32* %3, align 4
  br label %121

116:                                              ; preds = %102
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %119 = load %struct.adpt_device*, %struct.adpt_device** %7, align 8
  %120 = call i32 @adpt_scsi_to_i2o(%struct.TYPE_8__* %117, %struct.scsi_cmnd* %118, %struct.adpt_device* %119)
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %114, %87, %57, %47, %25
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.adpt_device* @adpt_find_device(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @adpt_scsi_to_i2o(%struct.TYPE_8__*, %struct.scsi_cmnd*, %struct.adpt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
