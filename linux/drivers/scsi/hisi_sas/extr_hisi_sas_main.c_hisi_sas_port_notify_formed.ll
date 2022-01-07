; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_port_notify_formed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_port_notify_formed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_phy = type { %struct.asd_sas_port*, %struct.hisi_sas_phy*, %struct.sas_ha_struct* }
%struct.asd_sas_port = type { %struct.hisi_sas_port* }
%struct.hisi_sas_port = type { i32, i32 }
%struct.hisi_sas_phy = type { %struct.hisi_sas_port*, i32 }
%struct.sas_ha_struct = type { %struct.hisi_hba* }
%struct.hisi_hba = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_sas_phy*)* @hisi_sas_port_notify_formed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_port_notify_formed(%struct.asd_sas_phy* %0) #0 {
  %2 = alloca %struct.asd_sas_phy*, align 8
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.asd_sas_port*, align 8
  %7 = alloca %struct.hisi_sas_port*, align 8
  %8 = alloca i64, align 8
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %2, align 8
  %9 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %2, align 8
  %10 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %9, i32 0, i32 2
  %11 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  store %struct.sas_ha_struct* %11, %struct.sas_ha_struct** %3, align 8
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %13 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %12, i32 0, i32 0
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %13, align 8
  store %struct.hisi_hba* %14, %struct.hisi_hba** %4, align 8
  %15 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %2, align 8
  %16 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %15, i32 0, i32 1
  %17 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %16, align 8
  store %struct.hisi_sas_phy* %17, %struct.hisi_sas_phy** %5, align 8
  %18 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %2, align 8
  %19 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %18, i32 0, i32 0
  %20 = load %struct.asd_sas_port*, %struct.asd_sas_port** %19, align 8
  store %struct.asd_sas_port* %20, %struct.asd_sas_port** %6, align 8
  %21 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %22 = call %struct.hisi_sas_port* @to_hisi_sas_port(%struct.asd_sas_port* %21)
  store %struct.hisi_sas_port* %22, %struct.hisi_sas_port** %7, align 8
  %23 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %24 = icmp ne %struct.asd_sas_port* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %28 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %27, i32 0, i32 0
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %7, align 8
  %32 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %34 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %7, align 8
  %37 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %7, align 8
  %39 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %40 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %39, i32 0, i32 0
  store %struct.hisi_sas_port* %38, %struct.hisi_sas_port** %40, align 8
  %41 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %7, align 8
  %42 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %43 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %42, i32 0, i32 0
  store %struct.hisi_sas_port* %41, %struct.hisi_sas_port** %43, align 8
  %44 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %45 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %44, i32 0, i32 0
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.hisi_sas_port* @to_hisi_sas_port(%struct.asd_sas_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
