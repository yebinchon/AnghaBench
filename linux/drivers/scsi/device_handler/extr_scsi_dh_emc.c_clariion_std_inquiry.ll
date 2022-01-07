; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_std_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_std_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.clariion_dh_data = type { i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@SCSI_DH_DEV_UNSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"FC\00", align 1
@CLARIION_SHORT_TRESPASS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: detected Clariion %s, flags %x\0A\00", align 1
@CLARIION_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.clariion_dh_data*)* @clariion_std_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clariion_std_inquiry(%struct.scsi_device* %0, %struct.clariion_dh_data* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.clariion_dh_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.clariion_dh_data* %1, %struct.clariion_dh_data** %4, align 8
  %7 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @parse_sp_model(%struct.scsi_device* %8, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @SCSI_DH_DEV_UNSUPP, align 4
  store i32 %16, i32* %5, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @CLARIION_SHORT_TRESPASS, align 4
  %27 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %28 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* @KERN_INFO, align 4
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = load i32, i32* @CLARIION_NAME, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %37 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sdev_printk(i32 %32, %struct.scsi_device* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %15
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i8* @parse_sp_model(%struct.scsi_device*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
