; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_bus_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.rdac_dh_data* }
%struct.rdac_dh_data = type { %struct.TYPE_2__*, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ARRAY_LABEL_LEN = common dso_local global i32 0, align 4
@UNIQUE_ID_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SCSI_DH_NOMEM = common dso_local global i32 0, align 4
@UNINITIALIZED_LUN = common dso_local global i32 0, align 4
@RDAC_STATE_ACTIVE = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: LUN %d (%s) (%s)\0A\00", align 1
@RDAC_NAME = common dso_local global i32 0, align 4
@mode = common dso_local global i32* null, align 8
@lun_state = common dso_local global i32* null, align 8
@list_lock = common dso_local global i32 0, align 4
@release_controller = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @rdac_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdac_bus_attach(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.rdac_dh_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %10 = load i32, i32* @ARRAY_LABEL_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @UNIQUE_ID_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.rdac_dh_data* @kzalloc(i32 32, i32 %17)
  store %struct.rdac_dh_data* %18, %struct.rdac_dh_data** %4, align 8
  %19 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %20 = icmp ne %struct.rdac_dh_data* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @SCSI_DH_NOMEM, align 4
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

23:                                               ; preds = %1
  %24 = load i32, i32* @UNINITIALIZED_LUN, align 4
  %25 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %26 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @RDAC_STATE_ACTIVE, align 4
  %28 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %29 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %32 = call i32 @get_lun_info(%struct.scsi_device* %30, %struct.rdac_dh_data* %31, i8* %13, i8* %16)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SCSI_DH_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %98

37:                                               ; preds = %23
  %38 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %39 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %40 = call i32 @initialize_controller(%struct.scsi_device* %38, %struct.rdac_dh_data* %39, i8* %13, i8* %16)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SCSI_DH_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %98

45:                                               ; preds = %37
  %46 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %47 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %48 = call i32 @check_ownership(%struct.scsi_device* %46, %struct.rdac_dh_data* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SCSI_DH_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %89

53:                                               ; preds = %45
  %54 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %55 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %56 = call i32 @set_mode_select(%struct.scsi_device* %54, %struct.rdac_dh_data* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SCSI_DH_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %89

61:                                               ; preds = %53
  %62 = load i32, i32* @KERN_NOTICE, align 4
  %63 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %64 = load i32, i32* @RDAC_NAME, align 4
  %65 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %66 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** @mode, align 8
  %69 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %70 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** @lun_state, align 8
  %77 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %78 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sdev_printk(i32 %62, %struct.scsi_device* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67, i32 %75, i32 %83)
  %85 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %86 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %87 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %86, i32 0, i32 0
  store %struct.rdac_dh_data* %85, %struct.rdac_dh_data** %87, align 8
  %88 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %88, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

89:                                               ; preds = %60, %52
  %90 = call i32 @spin_lock(i32* @list_lock)
  %91 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %92 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* @release_controller, align 4
  %96 = call i32 @kref_put(i32* %94, i32 %95)
  %97 = call i32 @spin_unlock(i32* @list_lock)
  br label %98

98:                                               ; preds = %89, %44, %36
  %99 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %100 = call i32 @kfree(%struct.rdac_dh_data* %99)
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %98, %61, %21
  %103 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.rdac_dh_data* @kzalloc(i32, i32) #2

declare dso_local i32 @get_lun_info(%struct.scsi_device*, %struct.rdac_dh_data*, i8*, i8*) #2

declare dso_local i32 @initialize_controller(%struct.scsi_device*, %struct.rdac_dh_data*, i8*, i8*) #2

declare dso_local i32 @check_ownership(%struct.scsi_device*, %struct.rdac_dh_data*) #2

declare dso_local i32 @set_mode_select(%struct.scsi_device*, %struct.rdac_dh_data*) #2

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @kref_put(i32*, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @kfree(%struct.rdac_dh_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
