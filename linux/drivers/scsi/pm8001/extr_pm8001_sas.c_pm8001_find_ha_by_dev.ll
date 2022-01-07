; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_find_ha_by_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_find_ha_by_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }
%struct.domain_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pm8001_hba_info* (%struct.domain_device*)* @pm8001_find_ha_by_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.pm8001_hba_info*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %5 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %6 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  store %struct.sas_ha_struct* %9, %struct.sas_ha_struct** %3, align 8
  %10 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %11 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %10, i32 0, i32 0
  %12 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  store %struct.pm8001_hba_info* %12, %struct.pm8001_hba_info** %4, align 8
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  ret %struct.pm8001_hba_info* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
