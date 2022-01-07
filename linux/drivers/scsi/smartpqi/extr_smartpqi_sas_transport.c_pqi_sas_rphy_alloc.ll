; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_sas_rphy_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_sas_rphy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_rphy = type { i32 }
%struct.pqi_sas_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SAS_FANOUT_EXPANDER_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sas_rphy* (%struct.pqi_sas_port*)* @pqi_sas_rphy_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sas_rphy* @pqi_sas_rphy_alloc(%struct.pqi_sas_port* %0) #0 {
  %2 = alloca %struct.sas_rphy*, align 8
  %3 = alloca %struct.pqi_sas_port*, align 8
  store %struct.pqi_sas_port* %0, %struct.pqi_sas_port** %3, align 8
  %4 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %3, align 8
  %5 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %3, align 8
  %10 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %3, align 8
  %17 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SAS_FANOUT_EXPANDER_DEVICE, align 4
  %20 = call %struct.sas_rphy* @sas_expander_alloc(i32 %18, i32 %19)
  store %struct.sas_rphy* %20, %struct.sas_rphy** %2, align 8
  br label %26

21:                                               ; preds = %8, %1
  %22 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %3, align 8
  %23 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.sas_rphy* @sas_end_device_alloc(i32 %24)
  store %struct.sas_rphy* %25, %struct.sas_rphy** %2, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.sas_rphy*, %struct.sas_rphy** %2, align 8
  ret %struct.sas_rphy* %27
}

declare dso_local %struct.sas_rphy* @sas_expander_alloc(i32, i32) #1

declare dso_local %struct.sas_rphy* @sas_end_device_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
