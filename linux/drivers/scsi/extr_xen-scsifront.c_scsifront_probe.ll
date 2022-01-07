; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xenbus_device_id = type { i32 }
%struct.vscsifrnt_info = type { i32, %struct.Scsi_Host*, i32, i32, i32, i32, %struct.xenbus_device* }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i64, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@scsifront_sht = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"fail to allocate scsi host\00", align 1
@VSCSIIF_MAX_REQS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"vscsiif.%d\00", align 1
@VSCSIIF_MAX_TARGET = common dso_local global i32 0, align 4
@VSCSIIF_MAX_LUN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VSCSIIF_MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"fail to add scsi host %d\0A\00", align 1
@XenbusStateInitialised = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @scsifront_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsifront_probe(%struct.xenbus_device* %0, %struct.xenbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenbus_device_id*, align 8
  %6 = alloca %struct.vscsifrnt_info*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xenbus_device_id* %1, %struct.xenbus_device_id** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @TASK_COMM_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @scsifront_sht, i32 40)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %7, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %20 = icmp ne %struct.Scsi_Host* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %22, i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %112

26:                                               ; preds = %2
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.vscsifrnt_info*
  store %struct.vscsifrnt_info* %30, %struct.vscsifrnt_info** %6, align 8
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %32 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %31, i32 0, i32 0
  %33 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %6, align 8
  %34 = call i32 @dev_set_drvdata(i32* %32, %struct.vscsifrnt_info* %33)
  %35 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %36 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %6, align 8
  %37 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %36, i32 0, i32 6
  store %struct.xenbus_device* %35, %struct.xenbus_device** %37, align 8
  %38 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %6, align 8
  %39 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VSCSIIF_MAX_REQS, align 4
  %42 = call i32 @bitmap_fill(i32 %40, i32 %41)
  %43 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %6, align 8
  %44 = call i32 @scsifront_init_ring(%struct.vscsifrnt_info* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %49 = call i32 @scsi_host_put(%struct.Scsi_Host* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %112

51:                                               ; preds = %26
  %52 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %6, align 8
  %53 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %52, i32 0, i32 4
  %54 = call i32 @init_waitqueue_head(i32* %53)
  %55 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %6, align 8
  %56 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %55, i32 0, i32 3
  %57 = call i32 @init_waitqueue_head(i32* %56)
  %58 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %6, align 8
  %59 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %58, i32 0, i32 2
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load i32, i32* @TASK_COMM_LEN, align 4
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %63 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @snprintf(i8* %17, i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @VSCSIIF_MAX_TARGET, align 4
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @VSCSIIF_MAX_LUN, align 4
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sdiv i32 %79, 512
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %82 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @VSCSIIF_MAX_COMMAND_SIZE, align 4
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %85 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %87 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %88 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %87, i32 0, i32 0
  %89 = call i32 @scsi_add_host(%struct.Scsi_Host* %86, i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %51
  %93 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %94 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %93, i32 0, i32 0
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %106

97:                                               ; preds = %51
  %98 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %99 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %6, align 8
  %100 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %99, i32 0, i32 1
  store %struct.Scsi_Host* %98, %struct.Scsi_Host** %100, align 8
  %101 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %6, align 8
  %102 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %104 = load i32, i32* @XenbusStateInitialised, align 4
  %105 = call i32 @xenbus_switch_state(%struct.xenbus_device* %103, i32 %104)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %112

106:                                              ; preds = %92
  %107 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %6, align 8
  %108 = call i32 @scsifront_free_ring(%struct.vscsifrnt_info* %107)
  %109 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %110 = call i32 @scsi_host_put(%struct.Scsi_Host* %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %112

112:                                              ; preds = %106, %97, %47, %21
  %113 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #2

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #2

declare dso_local i32 @dev_set_drvdata(i32*, %struct.vscsifrnt_info*) #2

declare dso_local i32 @bitmap_fill(i32, i32) #2

declare dso_local i32 @scsifront_init_ring(%struct.vscsifrnt_info*) #2

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #2

declare dso_local i32 @init_waitqueue_head(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #2

declare dso_local i32 @scsifront_free_ring(%struct.vscsifrnt_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
