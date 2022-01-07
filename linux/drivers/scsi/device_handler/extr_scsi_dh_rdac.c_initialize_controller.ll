; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_initialize_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_initialize_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.rdac_dh_data = type { %struct.scsi_device*, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.c4_inquiry }
%struct.c4_inquiry = type { i32* }

@SCSI_DH_IO = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@SCSI_DH_RES_TEMP_UNAVAIL = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.rdac_dh_data*, i8*, i32*)* @initialize_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_controller(%struct.scsi_device* %0, %struct.rdac_dh_data* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.rdac_dh_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.c4_inquiry*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store %struct.rdac_dh_data* %1, %struct.rdac_dh_data** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %14 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.c4_inquiry* %15, %struct.c4_inquiry** %11, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %17 = load %struct.c4_inquiry*, %struct.c4_inquiry** %11, align 8
  %18 = bitcast %struct.c4_inquiry* %17 to i8*
  %19 = call i32 @scsi_get_vpd_page(%struct.scsi_device* %16, i32 196, i8* %18, i32 8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %4
  %22 = load %struct.c4_inquiry*, %struct.c4_inquiry** %11, align 8
  %23 = getelementptr inbounds %struct.c4_inquiry, %struct.c4_inquiry* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 49
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %30

29:                                               ; preds = %21
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = call i32 @spin_lock(i32* @list_lock)
  %32 = load i32, i32* %10, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %36 = call %struct.TYPE_4__* @get_controller(i32 %32, i8* %33, i32* %34, %struct.scsi_device* %35)
  %37 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %38 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %37, i32 0, i32 1
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %40 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* @SCSI_DH_RES_TEMP_UNAVAIL, align 4
  store i32 %44, i32* %9, align 4
  br label %56

45:                                               ; preds = %30
  %46 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %47 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %46, i32 0, i32 2
  %48 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %49 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @list_add_rcu(i32* %47, i32* %51)
  %53 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %54 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %55 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %54, i32 0, i32 0
  store %struct.scsi_device* %53, %struct.scsi_device** %55, align 8
  br label %56

56:                                               ; preds = %45, %43
  %57 = call i32 @spin_unlock(i32* @list_lock)
  %58 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %4
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @scsi_get_vpd_page(%struct.scsi_device*, i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @get_controller(i32, i8*, i32*, %struct.scsi_device*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
