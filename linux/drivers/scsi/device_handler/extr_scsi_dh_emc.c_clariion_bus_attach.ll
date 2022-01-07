; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_bus_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.clariion_dh_data* }
%struct.clariion_dh_data = type { i64, i8*, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SCSI_DH_NOMEM = common dso_local global i32 0, align 4
@CLARIION_LUN_UNINITIALIZED = common dso_local global i64 0, align 8
@CLARIION_UNBOUND_LU = common dso_local global i8* null, align 8
@SCSI_DH_OK = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: connected to SP %c Port %d (%s, default SP %c)\0A\00", align 1
@CLARIION_NAME = common dso_local global i32 0, align 4
@lun_state = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @clariion_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clariion_bus_attach(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.clariion_dh_data*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.clariion_dh_data* @kzalloc(i32 32, i32 %6)
  store %struct.clariion_dh_data* %7, %struct.clariion_dh_data** %4, align 8
  %8 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %9 = icmp ne %struct.clariion_dh_data* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @SCSI_DH_NOMEM, align 4
  store i32 %11, i32* %2, align 4
  br label %67

12:                                               ; preds = %1
  %13 = load i64, i64* @CLARIION_LUN_UNINITIALIZED, align 8
  %14 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %15 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i8*, i8** @CLARIION_UNBOUND_LU, align 8
  %17 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %18 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @CLARIION_UNBOUND_LU, align 8
  %20 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %21 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %23 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %24 = call i32 @clariion_std_inquiry(%struct.scsi_device* %22, %struct.clariion_dh_data* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SCSI_DH_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  br label %63

29:                                               ; preds = %12
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %32 = call i32 @clariion_send_inquiry(%struct.scsi_device* %30, %struct.clariion_dh_data* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SCSI_DH_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %63

37:                                               ; preds = %29
  %38 = load i32, i32* @KERN_INFO, align 4
  %39 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %40 = load i32, i32* @CLARIION_NAME, align 4
  %41 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %42 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr i8, i8* %43, i64 65
  %45 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %46 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** @lun_state, align 8
  %49 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %50 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %55 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr i8, i8* %56, i64 65
  %58 = call i32 @sdev_printk(i32 %38, %struct.scsi_device* %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %44, i32 %47, i32 %53, i8* %57)
  %59 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %60 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 0
  store %struct.clariion_dh_data* %59, %struct.clariion_dh_data** %61, align 8
  %62 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %62, i32* %2, align 4
  br label %67

63:                                               ; preds = %36, %28
  %64 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %65 = call i32 @kfree(%struct.clariion_dh_data* %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %37, %10
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.clariion_dh_data* @kzalloc(i32, i32) #1

declare dso_local i32 @clariion_std_inquiry(%struct.scsi_device*, %struct.clariion_dh_data*) #1

declare dso_local i32 @clariion_send_inquiry(%struct.scsi_device*, %struct.clariion_dh_data*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.clariion_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
