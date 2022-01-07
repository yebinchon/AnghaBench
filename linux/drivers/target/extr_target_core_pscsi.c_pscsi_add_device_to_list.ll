; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_add_device_to_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_add_device_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i64, i8* }
%struct.scsi_device = type { i64, i8*, i64, %struct.TYPE_3__*, i32, i32, i32, %struct.request_queue* }
%struct.TYPE_3__ = type { i32 }
%struct.request_queue = type { i32 }
%struct.pscsi_dev_virt = type { %struct.scsi_device* }

@PSCSI_DEFAULT_QUEUEDEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Set broken SCSI Device %d:%d:%llu queue_depth to %d\0A\00", align 1
@TYPE_TAPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, %struct.scsi_device*)* @pscsi_add_device_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pscsi_add_device_to_list(%struct.se_device* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.pscsi_dev_virt*, align 8
  %6 = alloca %struct.request_queue*, align 8
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %4, align 8
  %7 = load %struct.se_device*, %struct.se_device** %3, align 8
  %8 = call %struct.pscsi_dev_virt* @PSCSI_DEV(%struct.se_device* %7)
  store %struct.pscsi_dev_virt* %8, %struct.pscsi_dev_virt** %5, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 7
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %6, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %13 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %5, align 8
  %14 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %13, i32 0, i32 0
  store %struct.scsi_device* %12, %struct.scsi_device** %14, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* @PSCSI_DEFAULT_QUEUEDEPTH, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %19, %2
  %37 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = call i8* @min_not_zero(i32 %40, i32 512)
  %42 = load %struct.se_device*, %struct.se_device** %3, align 8
  %43 = getelementptr inbounds %struct.se_device, %struct.se_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %51 = call i32 @queue_max_hw_sectors(%struct.request_queue* %50)
  %52 = call i8* @min_not_zero(i32 %49, i32 %51)
  %53 = load %struct.se_device*, %struct.se_device** %3, align 8
  %54 = getelementptr inbounds %struct.se_device, %struct.se_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  %56 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %57 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.se_device*, %struct.se_device** %3, align 8
  %60 = getelementptr inbounds %struct.se_device, %struct.se_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %63 = load %struct.se_device*, %struct.se_device** %3, align 8
  %64 = getelementptr inbounds %struct.se_device, %struct.se_device* %63, i32 0, i32 1
  %65 = call i32 @pscsi_set_inquiry_info(%struct.scsi_device* %62, i32* %64)
  %66 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %67 = load %struct.se_device*, %struct.se_device** %3, align 8
  %68 = getelementptr inbounds %struct.se_device, %struct.se_device* %67, i32 0, i32 1
  %69 = call i32 @pscsi_get_inquiry_vpd_serial(%struct.scsi_device* %66, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %36
  %72 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %73 = load %struct.se_device*, %struct.se_device** %3, align 8
  %74 = getelementptr inbounds %struct.se_device, %struct.se_device* %73, i32 0, i32 1
  %75 = call i32 @pscsi_get_inquiry_vpd_device_ident(%struct.scsi_device* %72, i32* %74)
  br label %76

76:                                               ; preds = %71, %36
  %77 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %78 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TYPE_TAPE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.se_device*, %struct.se_device** %3, align 8
  %84 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %85 = call i32 @pscsi_tape_read_blocksize(%struct.se_device* %83, %struct.scsi_device* %84)
  %86 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %87 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.se_device*, %struct.se_device** %3, align 8
  %90 = getelementptr inbounds %struct.se_device, %struct.se_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  br label %92

92:                                               ; preds = %82, %76
  ret i32 0
}

declare dso_local %struct.pscsi_dev_virt* @PSCSI_DEV(%struct.se_device*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i64) #1

declare dso_local i8* @min_not_zero(i32, i32) #1

declare dso_local i32 @queue_max_hw_sectors(%struct.request_queue*) #1

declare dso_local i32 @pscsi_set_inquiry_info(%struct.scsi_device*, i32*) #1

declare dso_local i32 @pscsi_get_inquiry_vpd_serial(%struct.scsi_device*, i32*) #1

declare dso_local i32 @pscsi_get_inquiry_vpd_device_ident(%struct.scsi_device*, i32*) #1

declare dso_local i32 @pscsi_tape_read_blocksize(%struct.se_device*, %struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
