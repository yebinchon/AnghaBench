; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_event.c_sas_notify_port_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_event.c_sas_notify_port_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_phy = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32 }
%struct.asd_sas_event = type { i32 }

@PORT_NUM_EVENTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sas_port_event_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_sas_phy*, i32)* @sas_notify_port_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_notify_port_event(%struct.asd_sas_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_sas_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_sas_event*, align 8
  %7 = alloca %struct.sas_ha_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %10 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %9, i32 0, i32 0
  %11 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  store %struct.sas_ha_struct* %11, %struct.sas_ha_struct** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PORT_NUM_EVENTS, align 4
  %14 = icmp uge i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %18 = call %struct.asd_sas_event* @sas_alloc_event(%struct.asd_sas_phy* %17)
  store %struct.asd_sas_event* %18, %struct.asd_sas_event** %6, align 8
  %19 = load %struct.asd_sas_event*, %struct.asd_sas_event** %6, align 8
  %20 = icmp ne %struct.asd_sas_event* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %42

24:                                               ; preds = %2
  %25 = load %struct.asd_sas_event*, %struct.asd_sas_event** %6, align 8
  %26 = load i32, i32* @sas_port_event_worker, align 4
  %27 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @INIT_SAS_EVENT(%struct.asd_sas_event* %25, i32 %26, %struct.asd_sas_phy* %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.asd_sas_event*, %struct.asd_sas_event** %6, align 8
  %32 = getelementptr inbounds %struct.asd_sas_event, %struct.asd_sas_event* %31, i32 0, i32 0
  %33 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %34 = call i32 @sas_queue_event(i32 %30, i32* %32, %struct.sas_ha_struct* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load %struct.asd_sas_event*, %struct.asd_sas_event** %6, align 8
  %39 = call i32 @sas_free_event(%struct.asd_sas_event* %38)
  br label %40

40:                                               ; preds = %37, %24
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %21
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.asd_sas_event* @sas_alloc_event(%struct.asd_sas_phy*) #1

declare dso_local i32 @INIT_SAS_EVENT(%struct.asd_sas_event*, i32, %struct.asd_sas_phy*, i32) #1

declare dso_local i32 @sas_queue_event(i32, i32*, %struct.sas_ha_struct*) #1

declare dso_local i32 @sas_free_event(%struct.asd_sas_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
