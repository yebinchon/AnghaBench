; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i64, i64, i32, i64 }
%struct.uas_dev_info = type { i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.usb_device*, %struct.usb_interface* }
%struct.usb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@uas_host_template = common dso_local global i32 0, align 4
@uas_do_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @uas_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.uas_dev_info*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %7, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %9, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %17 = call i32 @uas_use_uas_driver(%struct.usb_interface* %15, %struct.usb_device_id* %16, i64* %10)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %132

22:                                               ; preds = %2
  %23 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = call i64 @uas_switch_interface(%struct.usb_device* %23, %struct.usb_interface* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %132

30:                                               ; preds = %22
  %31 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @uas_host_template, i32 72)
  store %struct.Scsi_Host* %31, %struct.Scsi_Host** %7, align 8
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %33 = icmp ne %struct.Scsi_Host* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %115

35:                                               ; preds = %30
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 0
  store i32 268, i32* %37, align 8
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 2
  store i32 256, i32* %41, align 8
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.uas_dev_info*
  store %struct.uas_dev_info* %54, %struct.uas_dev_info** %8, align 8
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %57 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %56, i32 0, i32 10
  store %struct.usb_interface* %55, %struct.usb_interface** %57, align 8
  %58 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %59 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %60 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %59, i32 0, i32 9
  store %struct.usb_device* %58, %struct.usb_device** %60, align 8
  %61 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %62 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %61, i32 0, i32 8
  store i64 0, i64* %62, align 8
  %63 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %64 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %67 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %69 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %68, i32 0, i32 6
  %70 = call i32 @init_usb_anchor(i32* %69)
  %71 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %72 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %71, i32 0, i32 5
  %73 = call i32 @init_usb_anchor(i32* %72)
  %74 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %75 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %74, i32 0, i32 4
  %76 = call i32 @init_usb_anchor(i32* %75)
  %77 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %78 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %77, i32 0, i32 3
  %79 = call i32 @spin_lock_init(i32* %78)
  %80 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %81 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %80, i32 0, i32 2
  %82 = load i32, i32* @uas_do_work, align 4
  %83 = call i32 @INIT_WORK(i32* %81, i32 %82)
  %84 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %85 = call i32 @uas_configure_endpoints(%struct.uas_dev_info* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %35
  br label %115

89:                                               ; preds = %35
  %90 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %91 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 2
  %94 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %95 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %97 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %98 = call i32 @usb_set_intfdata(%struct.usb_interface* %96, %struct.Scsi_Host* %97)
  %99 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %100 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %101 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %100, i32 0, i32 1
  %102 = call i32 @scsi_add_host(%struct.Scsi_Host* %99, i32* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %110

106:                                              ; preds = %89
  %107 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %108 = call i32 @scsi_scan_host(%struct.Scsi_Host* %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %132

110:                                              ; preds = %105
  %111 = load %struct.uas_dev_info*, %struct.uas_dev_info** %8, align 8
  %112 = call i32 @uas_free_streams(%struct.uas_dev_info* %111)
  %113 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %114 = call i32 @usb_set_intfdata(%struct.usb_interface* %113, %struct.Scsi_Host* null)
  br label %115

115:                                              ; preds = %110, %88, %34
  %116 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %117 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %118 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @usb_set_interface(%struct.usb_device* %116, i32 %123, i32 0)
  %125 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %126 = icmp ne %struct.Scsi_Host* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %129 = call i32 @scsi_host_put(%struct.Scsi_Host* %128)
  br label %130

130:                                              ; preds = %127, %115
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %106, %27, %19
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @uas_use_uas_driver(%struct.usb_interface*, %struct.usb_device_id*, i64*) #1

declare dso_local i64 @uas_switch_interface(%struct.usb_device*, %struct.usb_interface*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @uas_configure_endpoints(%struct.uas_dev_info*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @uas_free_streams(%struct.uas_dev_info*) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
