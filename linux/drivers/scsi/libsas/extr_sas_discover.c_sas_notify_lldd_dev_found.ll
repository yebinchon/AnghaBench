; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_notify_lldd_dev_found.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_notify_lldd_dev_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.sas_internal = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.domain_device*)* }

@.str = private unnamed_addr constant [55 x i8] c"driver on host %s cannot handle device %llx, error:%d\0A\00", align 1
@SAS_DEV_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_notify_lldd_dev_found(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.sas_internal*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  store %struct.sas_ha_struct* %12, %struct.sas_ha_struct** %5, align 8
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %14 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %6, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sas_internal* @to_sas_internal(i32 %19)
  store %struct.sas_internal* %20, %struct.sas_internal** %7, align 8
  %21 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %22 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %24, align 8
  %26 = icmp ne i32 (%struct.domain_device*)* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

28:                                               ; preds = %1
  %29 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %30 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %32, align 8
  %34 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %35 = call i32 %33(%struct.domain_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %40 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_name(i32 %41)
  %43 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %44 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @SAS_ADDR(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %28
  %50 = load i32, i32* @SAS_DEV_FOUND, align 4
  %51 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %52 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %51, i32 0, i32 1
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %55 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %54, i32 0, i32 0
  %56 = call i32 @kref_get(i32* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %49, %27
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
