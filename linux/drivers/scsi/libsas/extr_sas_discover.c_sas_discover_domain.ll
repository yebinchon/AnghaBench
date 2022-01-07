; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_discover_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_discover_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.domain_device = type { i32, i32, i32, i32 }
%struct.sas_discovery_event = type { %struct.asd_sas_port* }
%struct.asd_sas_port = type { i32, %struct.domain_device*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DISCE_DISCOVER_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"DOING DISCOVERY on port %d, pid:%d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"ATA device seen but CONFIG_SCSI_SAS_ATA=N so cannot attach\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"unhandled device %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"DONE DISCOVERY on port %d, pid:%d, result:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sas_discover_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_discover_domain(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_discovery_event*, align 8
  %6 = alloca %struct.asd_sas_port*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %8 = call %struct.sas_discovery_event* @to_sas_discovery_event(%struct.work_struct* %7)
  store %struct.sas_discovery_event* %8, %struct.sas_discovery_event** %5, align 8
  %9 = load %struct.sas_discovery_event*, %struct.sas_discovery_event** %5, align 8
  %10 = getelementptr inbounds %struct.sas_discovery_event, %struct.sas_discovery_event* %9, i32 0, i32 0
  %11 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  store %struct.asd_sas_port* %11, %struct.asd_sas_port** %6, align 8
  %12 = load i32, i32* @DISCE_DISCOVER_DOMAIN, align 4
  %13 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %14 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 %12, i32* %15)
  %17 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %18 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %17, i32 0, i32 1
  %19 = load %struct.domain_device*, %struct.domain_device** %18, align 8
  %20 = icmp ne %struct.domain_device* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %90

22:                                               ; preds = %1
  %23 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %24 = call i32 @sas_get_port_device(%struct.asd_sas_port* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %90

28:                                               ; preds = %22
  %29 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %30 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %29, i32 0, i32 1
  %31 = load %struct.domain_device*, %struct.domain_device** %30, align 8
  store %struct.domain_device* %31, %struct.domain_device** %3, align 8
  %32 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %33 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @current, align 4
  %36 = call i32 @task_pid_nr(i32 %35)
  %37 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %39 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %49 [
    i32 131, label %41
    i32 132, label %44
    i32 130, label %44
    i32 129, label %47
    i32 128, label %47
  ]

41:                                               ; preds = %28
  %42 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %43 = call i32 @sas_discover_end_dev(%struct.domain_device* %42)
  store i32 %43, i32* %4, align 4
  br label %56

44:                                               ; preds = %28, %28
  %45 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %46 = call i32 @sas_discover_root_expander(%struct.domain_device* %45)
  store i32 %46, i32* %4, align 4
  br label %56

47:                                               ; preds = %28, %28
  %48 = call i32 @pr_notice(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %28, %47
  %50 = load i32, i32* @ENXIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  %52 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %53 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49, %44, %41
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %61 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sas_rphy_free(i32 %62)
  %64 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %65 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %64, i32 0, i32 2
  %66 = call i32 @list_del_init(i32* %65)
  %67 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %68 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %67, i32 0, i32 2
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %71 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %70, i32 0, i32 1
  %72 = call i32 @list_del_init(i32* %71)
  %73 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %74 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %73, i32 0, i32 2
  %75 = call i32 @spin_unlock_irq(i32* %74)
  %76 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %77 = call i32 @sas_put_device(%struct.domain_device* %76)
  %78 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %79 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %78, i32 0, i32 1
  store %struct.domain_device* null, %struct.domain_device** %79, align 8
  br label %80

80:                                               ; preds = %59, %56
  %81 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %82 = call i32 @sas_probe_devices(%struct.asd_sas_port* %81)
  %83 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %84 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @current, align 4
  %87 = call i32 @task_pid_nr(i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %80, %27, %21
  ret void
}

declare dso_local %struct.sas_discovery_event* @to_sas_discovery_event(%struct.work_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sas_get_port_device(%struct.asd_sas_port*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @sas_discover_end_dev(%struct.domain_device*) #1

declare dso_local i32 @sas_discover_root_expander(%struct.domain_device*) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @sas_rphy_free(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @sas_put_device(%struct.domain_device*) #1

declare dso_local i32 @sas_probe_devices(%struct.asd_sas_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
