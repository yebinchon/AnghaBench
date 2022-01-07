; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_bus_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.hp_sw_dh_data* }
%struct.hp_sw_dh_data = type { i64, %struct.scsi_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SCSI_DH_NOMEM = common dso_local global i32 0, align 4
@HP_SW_PATH_UNINITIALIZED = common dso_local global i64 0, align 8
@HP_SW_RETRIES = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@SCSI_DH_NOSYS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: attached to %s path\0A\00", align 1
@HP_SW_NAME = common dso_local global i32 0, align 4
@HP_SW_PATH_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @hp_sw_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sw_bus_attach(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.hp_sw_dh_data*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hp_sw_dh_data* @kzalloc(i32 24, i32 %6)
  store %struct.hp_sw_dh_data* %7, %struct.hp_sw_dh_data** %4, align 8
  %8 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %9 = icmp ne %struct.hp_sw_dh_data* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @SCSI_DH_NOMEM, align 4
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load i64, i64* @HP_SW_PATH_UNINITIALIZED, align 8
  %14 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %15 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* @HP_SW_RETRIES, align 4
  %17 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %18 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %20 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %21 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %20, i32 0, i32 1
  store %struct.scsi_device* %19, %struct.scsi_device** %21, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %23 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %24 = call i32 @hp_sw_tur(%struct.scsi_device* %22, %struct.hp_sw_dh_data* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SCSI_DH_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  br label %53

29:                                               ; preds = %12
  %30 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %31 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HP_SW_PATH_UNINITIALIZED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @SCSI_DH_NOSYS, align 4
  store i32 %36, i32* %5, align 4
  br label %53

37:                                               ; preds = %29
  %38 = load i32, i32* @KERN_INFO, align 4
  %39 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %40 = load i32, i32* @HP_SW_NAME, align 4
  %41 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %42 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HP_SW_PATH_ACTIVE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @sdev_printk(i32 %38, %struct.scsi_device* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %47)
  %49 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %50 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  store %struct.hp_sw_dh_data* %49, %struct.hp_sw_dh_data** %51, align 8
  %52 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %35, %28
  %54 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %55 = call i32 @kfree(%struct.hp_sw_dh_data* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %37, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.hp_sw_dh_data* @kzalloc(i32, i32) #1

declare dso_local i32 @hp_sw_tur(%struct.scsi_device*, %struct.hp_sw_dh_data*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i8*) #1

declare dso_local i32 @kfree(%struct.hp_sw_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
