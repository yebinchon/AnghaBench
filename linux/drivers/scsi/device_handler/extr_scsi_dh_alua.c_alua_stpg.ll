; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_stpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_stpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.alua_port_group = type { i32, i32, i32, i32, i32 }
%struct.scsi_sense_hdr = type { i32 }

@TPGS_MODE_EXPLICIT = common dso_local global i32 0, align 4
@SCSI_DH_RETRY = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@ALUA_OPTIMIZE_STPG = common dso_local global i32 0, align 4
@TPGS_MODE_IMPLICIT = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: stpg failed, unhandled TPGS state %d\00", align 1
@ALUA_DH_NAME = common dso_local global i32 0, align 4
@SCSI_DH_NOSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: stpg failed, result %d\00", align 1
@DRIVER_ERROR = common dso_local global i64 0, align 8
@SCSI_DH_DEV_TEMP_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: stpg failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.alua_port_group*)* @alua_stpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_stpg(%struct.scsi_device* %0, %struct.alua_port_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.alua_port_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.alua_port_group* %1, %struct.alua_port_group** %5, align 8
  %8 = load %struct.alua_port_group*, %struct.alua_port_group** %5, align 8
  %9 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TPGS_MODE_EXPLICIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %15, i32* %3, align 4
  br label %92

16:                                               ; preds = %2
  %17 = load %struct.alua_port_group*, %struct.alua_port_group** %5, align 8
  %18 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %48 [
    i32 131, label %20
    i32 133, label %22
    i32 130, label %44
    i32 128, label %44
    i32 132, label %45
    i32 129, label %47
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %92

22:                                               ; preds = %16
  %23 = load %struct.alua_port_group*, %struct.alua_port_group** %5, align 8
  %24 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ALUA_OPTIMIZE_STPG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.alua_port_group*, %struct.alua_port_group** %5, align 8
  %31 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load %struct.alua_port_group*, %struct.alua_port_group** %5, align 8
  %36 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TPGS_MODE_IMPLICIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %92

43:                                               ; preds = %34, %29, %22
  br label %57

44:                                               ; preds = %16, %16
  br label %57

45:                                               ; preds = %16
  %46 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %46, i32* %3, align 4
  br label %92

47:                                               ; preds = %16
  br label %57

48:                                               ; preds = %16
  %49 = load i32, i32* @KERN_INFO, align 4
  %50 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %51 = load i32, i32* @ALUA_DH_NAME, align 4
  %52 = load %struct.alua_port_group*, %struct.alua_port_group** %5, align 8
  %53 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %49, %struct.scsi_device* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i32, i32* @SCSI_DH_NOSYS, align 4
  store i32 %56, i32* %3, align 4
  br label %92

57:                                               ; preds = %47, %44, %43
  %58 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %59 = load %struct.alua_port_group*, %struct.alua_port_group** %5, align 8
  %60 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @submit_stpg(%struct.scsi_device* %58, i32 %61, %struct.scsi_sense_hdr* %7)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %57
  %66 = call i32 @scsi_sense_valid(%struct.scsi_sense_hdr* %7)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @KERN_INFO, align 4
  %70 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %71 = load i32, i32* @ALUA_DH_NAME, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %69, %struct.scsi_device* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @driver_byte(i32 %74)
  %76 = load i64, i64* @DRIVER_ERROR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @SCSI_DH_DEV_TEMP_BUSY, align 4
  store i32 %79, i32* %3, align 4
  br label %92

80:                                               ; preds = %68
  br label %89

81:                                               ; preds = %65
  %82 = load i32, i32* @KERN_INFO, align 4
  %83 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %84 = load i32, i32* @ALUA_DH_NAME, align 4
  %85 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %82, %struct.scsi_device* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %87 = load i32, i32* @ALUA_DH_NAME, align 4
  %88 = call i32 @scsi_print_sense_hdr(%struct.scsi_device* %86, i32 %87, %struct.scsi_sense_hdr* %7)
  br label %89

89:                                               ; preds = %81, %80
  br label %90

90:                                               ; preds = %89, %57
  %91 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %78, %48, %45, %41, %20, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

declare dso_local i32 @submit_stpg(%struct.scsi_device*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i32 @scsi_print_sense_hdr(%struct.scsi_device*, i32, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
