; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_intf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_intf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.class_interface = type { i32 }
%struct.scsi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.class_interface*)* @ses_intf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_intf_remove(%struct.device* %0, %struct.class_interface* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.class_interface*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.class_interface* %1, %struct.class_interface** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.scsi_device* @to_scsi_device(i32 %8)
  store %struct.scsi_device* %9, %struct.scsi_device** %5, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %11 = call i32 @scsi_device_enclosure(%struct.scsi_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %15 = call i32 @ses_intf_remove_component(%struct.scsi_device* %14)
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %18 = call i32 @ses_intf_remove_enclosure(%struct.scsi_device* %17)
  br label %19

19:                                               ; preds = %16, %13
  ret void
}

declare dso_local %struct.scsi_device* @to_scsi_device(i32) #1

declare dso_local i32 @scsi_device_enclosure(%struct.scsi_device*) #1

declare dso_local i32 @ses_intf_remove_component(%struct.scsi_device*) #1

declare dso_local i32 @ses_intf_remove_enclosure(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
