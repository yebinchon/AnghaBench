; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_unit.c_zfcp_unit_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_unit.c_zfcp_unit_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32 }
%struct.zfcp_unit = type { i32, i32 }
%struct.scsi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_unit_remove(%struct.zfcp_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_unit*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %9 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %8, i32 0, i32 0
  %10 = call i32 @write_lock_irq(i32* %9)
  %11 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.zfcp_unit* @_zfcp_unit_find(%struct.zfcp_port* %11, i32 %12)
  store %struct.zfcp_unit* %13, %struct.zfcp_unit** %6, align 8
  %14 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %15 = icmp ne %struct.zfcp_unit* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %18 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %22 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %21, i32 0, i32 0
  %23 = call i32 @write_unlock_irq(i32* %22)
  %24 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %25 = icmp ne %struct.zfcp_unit* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %46

29:                                               ; preds = %20
  %30 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %31 = call %struct.scsi_device* @zfcp_unit_sdev(%struct.zfcp_unit* %30)
  store %struct.scsi_device* %31, %struct.scsi_device** %7, align 8
  %32 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %33 = icmp ne %struct.scsi_device* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %36 = call i32 @scsi_remove_device(%struct.scsi_device* %35)
  %37 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %38 = call i32 @scsi_device_put(%struct.scsi_device* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %41 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %40, i32 0, i32 0
  %42 = call i32 @put_device(i32* %41)
  %43 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %44 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %43, i32 0, i32 0
  %45 = call i32 @device_unregister(i32* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %39, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local %struct.zfcp_unit* @_zfcp_unit_find(%struct.zfcp_port*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local %struct.scsi_device* @zfcp_unit_sdev(%struct.zfcp_unit*) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
