; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_adapter_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_adapter_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32, i64*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ccw_dev_id = type { i32 }

@zfcp_scsi_host_template = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Registering the FCP device with the SCSI stack failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@zfcp_scsi_transport_template = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_scsi_adapter_register(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.ccw_dev_id, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  %5 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

10:                                               ; preds = %1
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = call i32 @ccw_device_get_id(%struct.TYPE_6__* %13, %struct.ccw_dev_id* %4)
  %15 = call %struct.TYPE_5__* @scsi_host_alloc(i32* @zfcp_scsi_host_template, i32 8)
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %16, i32 0, i32 0
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %17, align 8
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %10
  %23 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %83

30:                                               ; preds = %10
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 511, i32* %34, align 8
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 -1, i32* %38, align 4
  %39 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  store i32 %44, i32* %48, align 4
  %49 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 16, i32* %52, align 8
  %53 = load i32, i32* @zfcp_scsi_transport_template, align 4
  %54 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  store i32 %53, i32* %57, align 8
  %58 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %59 = ptrtoint %struct.zfcp_adapter* %58 to i64
  %60 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %59, i64* %65, align 8
  %66 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i64 @scsi_add_host(%struct.TYPE_5__* %68, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %30
  %76 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = call i32 @scsi_host_put(%struct.TYPE_5__* %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %75, %22, %9
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @ccw_device_get_id(%struct.TYPE_6__*, %struct.ccw_dev_id*) #1

declare dso_local %struct.TYPE_5__* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @scsi_add_host(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
