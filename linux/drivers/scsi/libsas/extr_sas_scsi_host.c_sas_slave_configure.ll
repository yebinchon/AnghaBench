; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i64 }
%struct.domain_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SAS_END_DEVICE = common dso_local global i64 0, align 8
@SAS_DEF_QD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"device %llx, LUN %llx doesn't support TCQ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.domain_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = call %struct.domain_device* @sdev_to_domain_dev(%struct.scsi_device* %5)
  store %struct.domain_device* %6, %struct.domain_device** %4, align 8
  %7 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %8 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SAS_END_DEVICE, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %18 = call i64 @dev_is_sata(%struct.domain_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %22 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %23 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ata_sas_slave_configure(%struct.scsi_device* %21, i32 %25)
  store i32 0, i32* %2, align 4
  br label %52

27:                                               ; preds = %1
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = call i32 @sas_read_port_mode_page(%struct.scsi_device* %28)
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %36 = load i32, i32* @SAS_DEF_QD, align 4
  %37 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %35, i32 %36)
  br label %49

38:                                               ; preds = %27
  %39 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %40 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @SAS_ADDR(i32 %41)
  %43 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %44 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_notice(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %48 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %47, i32 1)
  br label %49

49:                                               ; preds = %38, %34
  %50 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.domain_device* @sdev_to_domain_dev(%struct.scsi_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @ata_sas_slave_configure(%struct.scsi_device*, i32) #1

declare dso_local i32 @sas_read_port_mode_page(%struct.scsi_device*) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
