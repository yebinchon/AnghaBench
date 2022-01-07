; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32, i32, i32 }
%struct.scsi_device = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"didn't find device for removal.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*)* @hpsa_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_remove_device(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %4, align 8
  store %struct.scsi_device* null, %struct.scsi_device** %5, align 8
  %6 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %7 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %50

11:                                               ; preds = %2
  %12 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %13 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %15 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %16 = call i32 @hpsa_wait_for_outstanding_commands_for_dev(%struct.ctlr_info* %14, %struct.hpsa_scsi_dev_t* %15)
  %17 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %18 = call i64 @is_logical_device(%struct.hpsa_scsi_dev_t* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %11
  %21 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %22 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %25 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %28 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %31 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.scsi_device* @scsi_device_lookup(i32 %23, i32 %26, i32 %29, i32 %32)
  store %struct.scsi_device* %33, %struct.scsi_device** %5, align 8
  %34 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %35 = icmp ne %struct.scsi_device* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %38 = call i32 @scsi_remove_device(%struct.scsi_device* %37)
  %39 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %40 = call i32 @scsi_device_put(%struct.scsi_device* %39)
  br label %46

41:                                               ; preds = %20
  %42 = load i32, i32* @KERN_WARNING, align 4
  %43 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %44 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %45 = call i32 @hpsa_show_dev_msg(i32 %42, %struct.ctlr_info* %43, %struct.hpsa_scsi_dev_t* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %36
  br label %50

47:                                               ; preds = %11
  %48 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %49 = call i32 @hpsa_remove_sas_device(%struct.hpsa_scsi_dev_t* %48)
  br label %50

50:                                               ; preds = %10, %47, %46
  ret void
}

declare dso_local i32 @hpsa_wait_for_outstanding_commands_for_dev(%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*) #1

declare dso_local i64 @is_logical_device(%struct.hpsa_scsi_dev_t*) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(i32, i32, i32, i32) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @hpsa_show_dev_msg(i32, %struct.ctlr_info*, %struct.hpsa_scsi_dev_t*, i8*) #1

declare dso_local i32 @hpsa_remove_sas_device(%struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
