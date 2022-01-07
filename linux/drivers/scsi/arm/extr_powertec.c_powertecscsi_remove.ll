; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_powertec.c_powertecscsi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_powertec.c_powertecscsi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { i32, i32 }
%struct.Scsi_Host = type { i64 }
%struct.powertec_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@dev_attr_bus_term = common dso_local global i32 0, align 4
@NO_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expansion_card*)* @powertecscsi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @powertecscsi_remove(%struct.expansion_card* %0) #0 {
  %2 = alloca %struct.expansion_card*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.powertec_info*, align 8
  store %struct.expansion_card* %0, %struct.expansion_card** %2, align 8
  %5 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %6 = call %struct.Scsi_Host* @ecard_get_drvdata(%struct.expansion_card* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.powertec_info*
  store %struct.powertec_info* %10, %struct.powertec_info** %4, align 8
  %11 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %12 = call i32 @ecard_set_drvdata(%struct.expansion_card* %11, i32* null)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call i32 @fas216_remove(%struct.Scsi_Host* %13)
  %15 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %16 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %15, i32 0, i32 1
  %17 = call i32 @device_remove_file(i32* %16, i32* @dev_attr_bus_term)
  %18 = load %struct.powertec_info*, %struct.powertec_info** %4, align 8
  %19 = getelementptr inbounds %struct.powertec_info, %struct.powertec_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NO_DMA, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.powertec_info*, %struct.powertec_info** %4, align 8
  %27 = getelementptr inbounds %struct.powertec_info, %struct.powertec_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @free_dma(i64 %30)
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %34 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.powertec_info*, %struct.powertec_info** %4, align 8
  %37 = call i32 @free_irq(i32 %35, %struct.powertec_info* %36)
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %39 = call i32 @fas216_release(%struct.Scsi_Host* %38)
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %41 = call i32 @scsi_host_put(%struct.Scsi_Host* %40)
  %42 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %43 = call i32 @ecard_release_resources(%struct.expansion_card* %42)
  ret void
}

declare dso_local %struct.Scsi_Host* @ecard_get_drvdata(%struct.expansion_card*) #1

declare dso_local i32 @ecard_set_drvdata(%struct.expansion_card*, i32*) #1

declare dso_local i32 @fas216_remove(%struct.Scsi_Host*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @free_dma(i64) #1

declare dso_local i32 @free_irq(i32, %struct.powertec_info*) #1

declare dso_local i32 @fas216_release(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @ecard_release_resources(%struct.expansion_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
