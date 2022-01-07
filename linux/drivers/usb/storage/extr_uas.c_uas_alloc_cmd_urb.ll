; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_alloc_cmd_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_alloc_cmd_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.uas_dev_info = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.scsi_cmnd = type { i32, i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.uas_cmd_info = type { i32 }
%struct.command_iu = type { i32, i32, i32, i32, i32, i32 }

@IU_ID_COMMAND = common dso_local global i32 0, align 4
@UAS_SIMPLE_TAG = common dso_local global i32 0, align 4
@uas_cmd_cmplt = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.uas_dev_info*, i32, %struct.scsi_cmnd*)* @uas_alloc_cmd_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @uas_alloc_cmd_urb(%struct.uas_dev_info* %0, i32 %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.uas_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.uas_cmd_info*, align 8
  %11 = alloca %struct.urb*, align 8
  %12 = alloca %struct.command_iu*, align 8
  %13 = alloca i32, align 4
  store %struct.uas_dev_info* %0, %struct.uas_dev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  %14 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %15 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %14, i32 0, i32 1
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %8, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 3
  %19 = load %struct.scsi_device*, %struct.scsi_device** %18, align 8
  store %struct.scsi_device* %19, %struct.scsi_device** %9, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 2
  %22 = bitcast i32* %21 to i8*
  %23 = bitcast i8* %22 to %struct.uas_cmd_info*
  store %struct.uas_cmd_info* %23, %struct.uas_cmd_info** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %24)
  store %struct.urb* %25, %struct.urb** %11, align 8
  %26 = load %struct.urb*, %struct.urb** %11, align 8
  %27 = icmp ne %struct.urb* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %98

29:                                               ; preds = %3
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 16
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @ALIGN(i32 %38, i32 4)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 24, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.command_iu* @kzalloc(i32 %43, i32 %44)
  store %struct.command_iu* %45, %struct.command_iu** %12, align 8
  %46 = load %struct.command_iu*, %struct.command_iu** %12, align 8
  %47 = icmp ne %struct.command_iu* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %100

49:                                               ; preds = %37
  %50 = load i32, i32* @IU_ID_COMMAND, align 4
  %51 = load %struct.command_iu*, %struct.command_iu** %12, align 8
  %52 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %10, align 8
  %54 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpu_to_be16(i32 %55)
  %57 = load %struct.command_iu*, %struct.command_iu** %12, align 8
  %58 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @UAS_SIMPLE_TAG, align 4
  %60 = load %struct.command_iu*, %struct.command_iu** %12, align 8
  %61 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.command_iu*, %struct.command_iu** %12, align 8
  %64 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.command_iu*, %struct.command_iu** %12, align 8
  %69 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %68, i32 0, i32 2
  %70 = call i32 @int_to_scsilun(i32 %67, i32* %69)
  %71 = load %struct.command_iu*, %struct.command_iu** %12, align 8
  %72 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(i32 %73, i32 %76, i32 %79)
  %81 = load %struct.urb*, %struct.urb** %11, align 8
  %82 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %83 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %84 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.command_iu*, %struct.command_iu** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 24, %88
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @uas_cmd_cmplt, align 4
  %92 = call i32 @usb_fill_bulk_urb(%struct.urb* %81, %struct.usb_device* %82, i32 %85, %struct.command_iu* %86, i32 %90, i32 %91, i32* null)
  %93 = load i32, i32* @URB_FREE_BUFFER, align 4
  %94 = load %struct.urb*, %struct.urb** %11, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %49, %28
  %99 = load %struct.urb*, %struct.urb** %11, align 8
  store %struct.urb* %99, %struct.urb** %4, align 8
  br label %103

100:                                              ; preds = %48
  %101 = load %struct.urb*, %struct.urb** %11, align 8
  %102 = call i32 @usb_free_urb(%struct.urb* %101)
  store %struct.urb* null, %struct.urb** %4, align 8
  br label %103

103:                                              ; preds = %100, %98
  %104 = load %struct.urb*, %struct.urb** %4, align 8
  ret %struct.urb* %104
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.command_iu* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, %struct.command_iu*, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
