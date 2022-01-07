; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_revalidate_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_revalidate_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.sas_discovery_event = type { %struct.asd_sas_port* }
%struct.asd_sas_port = type { i32, %struct.TYPE_2__, %struct.domain_device*, %struct.sas_ha_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.domain_device = type { i32 }
%struct.sas_ha_struct = type { i32, i32 }

@SAS_HA_ATA_EH_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"REVALIDATION DEFERRED on port %d, pid:%d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@DISCE_REVALIDATE_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"REVALIDATING DOMAIN on port %d, pid:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"done REVALIDATING DOMAIN on port %d, pid:%d, res 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sas_revalidate_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_revalidate_domain(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_discovery_event*, align 8
  %5 = alloca %struct.asd_sas_port*, align 8
  %6 = alloca %struct.sas_ha_struct*, align 8
  %7 = alloca %struct.domain_device*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %9 = call %struct.sas_discovery_event* @to_sas_discovery_event(%struct.work_struct* %8)
  store %struct.sas_discovery_event* %9, %struct.sas_discovery_event** %4, align 8
  %10 = load %struct.sas_discovery_event*, %struct.sas_discovery_event** %4, align 8
  %11 = getelementptr inbounds %struct.sas_discovery_event, %struct.sas_discovery_event* %10, i32 0, i32 0
  %12 = load %struct.asd_sas_port*, %struct.asd_sas_port** %11, align 8
  store %struct.asd_sas_port* %12, %struct.asd_sas_port** %5, align 8
  %13 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %14 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %13, i32 0, i32 3
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %14, align 8
  store %struct.sas_ha_struct* %15, %struct.sas_ha_struct** %6, align 8
  %16 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %17 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %16, i32 0, i32 2
  %18 = load %struct.domain_device*, %struct.domain_device** %17, align 8
  store %struct.domain_device* %18, %struct.domain_device** %7, align 8
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %20 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* @SAS_HA_ATA_EH_ACTIVE, align 4
  %23 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %24 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %29 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @current, align 4
  %32 = call i32 @task_pid_nr(i32 %31)
  %33 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  br label %65

34:                                               ; preds = %1
  %35 = load i32, i32* @DISCE_REVALIDATE_DOMAIN, align 4
  %36 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %37 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i32 %35, i32* %38)
  %40 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %41 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @current, align 4
  %44 = call i32 @task_pid_nr(i32 %43)
  %45 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %47 = icmp ne %struct.domain_device* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %34
  %49 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %50 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @dev_is_expander(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %56 = call i32 @sas_ex_revalidate_domain(%struct.domain_device* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %48, %34
  %58 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %59 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @current, align 4
  %62 = call i32 @task_pid_nr(i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %27
  %66 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %67 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %70 = call i32 @sas_destruct_devices(%struct.asd_sas_port* %69)
  %71 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %72 = call i32 @sas_destruct_ports(%struct.asd_sas_port* %71)
  %73 = load %struct.asd_sas_port*, %struct.asd_sas_port** %5, align 8
  %74 = call i32 @sas_probe_devices(%struct.asd_sas_port* %73)
  ret void
}

declare dso_local %struct.sas_discovery_event* @to_sas_discovery_event(%struct.work_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i32 @sas_ex_revalidate_domain(%struct.domain_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sas_destruct_devices(%struct.asd_sas_port*) #1

declare dso_local i32 @sas_destruct_ports(%struct.asd_sas_port*) #1

declare dso_local i32 @sas_probe_devices(%struct.asd_sas_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
