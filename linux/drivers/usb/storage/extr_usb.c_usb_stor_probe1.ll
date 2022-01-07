; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_usb_stor_probe1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_usb_stor_probe1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i32, i32, i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.us_unusual_dev = type { i32 }
%struct.scsi_host_template = type { i32 }
%struct.Scsi_Host = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"USB Mass Storage device detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to allocate the scsi host\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@usb_stor_scan_dwork = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"storage_probe() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_probe1(%struct.us_data** %0, %struct.usb_interface* %1, %struct.usb_device_id* %2, %struct.us_unusual_dev* %3, %struct.scsi_host_template* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.us_data**, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.usb_device_id*, align 8
  %10 = alloca %struct.us_unusual_dev*, align 8
  %11 = alloca %struct.scsi_host_template*, align 8
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.us_data*, align 8
  %14 = alloca i32, align 4
  store %struct.us_data** %0, %struct.us_data*** %7, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %8, align 8
  store %struct.usb_device_id* %2, %struct.usb_device_id** %9, align 8
  store %struct.us_unusual_dev* %3, %struct.us_unusual_dev** %10, align 8
  store %struct.scsi_host_template* %4, %struct.scsi_host_template** %11, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = call i32 @dev_info(i32* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.scsi_host_template*, %struct.scsi_host_template** %11, align 8
  %19 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %18, i32 20)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %12, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %21 = icmp ne %struct.Scsi_Host* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 0
  %25 = call i32 @dev_warn(i32* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %83

28:                                               ; preds = %5
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  store i32 16, i32* %30, align 4
  %31 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %32 = call i32 @usb_stor_sg_tablesize(%struct.usb_interface* %31)
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %36 = call %struct.us_data* @host_to_us(%struct.Scsi_Host* %35)
  store %struct.us_data* %36, %struct.us_data** %13, align 8
  %37 = load %struct.us_data**, %struct.us_data*** %7, align 8
  store %struct.us_data* %36, %struct.us_data** %37, align 8
  %38 = load %struct.us_data*, %struct.us_data** %13, align 8
  %39 = getelementptr inbounds %struct.us_data, %struct.us_data* %38, i32 0, i32 4
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.us_data*, %struct.us_data** %13, align 8
  %42 = getelementptr inbounds %struct.us_data, %struct.us_data* %41, i32 0, i32 4
  %43 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %44 = call i32 @us_set_lock_class(i32* %42, %struct.usb_interface* %43)
  %45 = load %struct.us_data*, %struct.us_data** %13, align 8
  %46 = getelementptr inbounds %struct.us_data, %struct.us_data* %45, i32 0, i32 3
  %47 = call i32 @init_completion(i32* %46)
  %48 = load %struct.us_data*, %struct.us_data** %13, align 8
  %49 = getelementptr inbounds %struct.us_data, %struct.us_data* %48, i32 0, i32 2
  %50 = call i32 @init_completion(i32* %49)
  %51 = load %struct.us_data*, %struct.us_data** %13, align 8
  %52 = getelementptr inbounds %struct.us_data, %struct.us_data* %51, i32 0, i32 1
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = load %struct.us_data*, %struct.us_data** %13, align 8
  %55 = getelementptr inbounds %struct.us_data, %struct.us_data* %54, i32 0, i32 0
  %56 = load i32, i32* @usb_stor_scan_dwork, align 4
  %57 = call i32 @INIT_DELAYED_WORK(i32* %55, i32 %56)
  %58 = load %struct.us_data*, %struct.us_data** %13, align 8
  %59 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %60 = call i32 @associate_dev(%struct.us_data* %58, %struct.usb_interface* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %28
  br label %77

64:                                               ; preds = %28
  %65 = load %struct.us_data*, %struct.us_data** %13, align 8
  %66 = load %struct.usb_device_id*, %struct.usb_device_id** %9, align 8
  %67 = load %struct.us_unusual_dev*, %struct.us_unusual_dev** %10, align 8
  %68 = call i32 @get_device_info(%struct.us_data* %65, %struct.usb_device_id* %66, %struct.us_unusual_dev* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %77

72:                                               ; preds = %64
  %73 = load %struct.us_data*, %struct.us_data** %13, align 8
  %74 = call i32 @get_transport(%struct.us_data* %73)
  %75 = load %struct.us_data*, %struct.us_data** %13, align 8
  %76 = call i32 @get_protocol(%struct.us_data* %75)
  store i32 0, i32* %6, align 4
  br label %83

77:                                               ; preds = %71, %63
  %78 = load %struct.us_data*, %struct.us_data** %13, align 8
  %79 = call i32 @usb_stor_dbg(%struct.us_data* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.us_data*, %struct.us_data** %13, align 8
  %81 = call i32 @release_everything(%struct.us_data* %80)
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %77, %72, %22
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @usb_stor_sg_tablesize(%struct.usb_interface*) #1

declare dso_local %struct.us_data* @host_to_us(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @us_set_lock_class(i32*, %struct.usb_interface*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @associate_dev(%struct.us_data*, %struct.usb_interface*) #1

declare dso_local i32 @get_device_info(%struct.us_data*, %struct.usb_device_id*, %struct.us_unusual_dev*) #1

declare dso_local i32 @get_transport(%struct.us_data*) #1

declare dso_local i32 @get_protocol(%struct.us_data*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @release_everything(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
