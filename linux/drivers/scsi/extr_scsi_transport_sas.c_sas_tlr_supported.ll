; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_tlr_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_tlr_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.sas_end_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_tlr_supported(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_end_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  store i32 32, i32* %3, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = call %struct.sas_end_device* @sas_sdev_to_rdev(%struct.scsi_device* %7)
  store %struct.sas_end_device* %8, %struct.sas_end_device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 32, i32 %9)
  store i8* %10, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @scsi_get_vpd_page(%struct.scsi_device* %15, i32 144, i8* %16, i32 32)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %26

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 12
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %19, %13
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @kfree(i8* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.sas_end_device*, %struct.sas_end_device** %4, align 8
  %31 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.sas_end_device* @sas_sdev_to_rdev(%struct.scsi_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @scsi_get_vpd_page(%struct.scsi_device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
