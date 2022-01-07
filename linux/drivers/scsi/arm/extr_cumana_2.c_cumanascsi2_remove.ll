; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_cumana_2.c_cumanascsi2_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_cumana_2.c_cumanascsi2_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.cumanascsi2_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NO_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expansion_card*)* @cumanascsi2_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cumanascsi2_remove(%struct.expansion_card* %0) #0 {
  %2 = alloca %struct.expansion_card*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.cumanascsi2_info*, align 8
  store %struct.expansion_card* %0, %struct.expansion_card** %2, align 8
  %5 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %6 = call %struct.Scsi_Host* @ecard_get_drvdata(%struct.expansion_card* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.cumanascsi2_info*
  store %struct.cumanascsi2_info* %10, %struct.cumanascsi2_info** %4, align 8
  %11 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %12 = call i32 @ecard_set_drvdata(%struct.expansion_card* %11, i32* null)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call i32 @fas216_remove(%struct.Scsi_Host* %13)
  %15 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %4, align 8
  %16 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NO_DMA, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %4, align 8
  %24 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @free_dma(i64 %27)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %31 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %4, align 8
  %34 = call i32 @free_irq(i32 %32, %struct.cumanascsi2_info* %33)
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %36 = call i32 @fas216_release(%struct.Scsi_Host* %35)
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %38 = call i32 @scsi_host_put(%struct.Scsi_Host* %37)
  %39 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %40 = call i32 @ecard_release_resources(%struct.expansion_card* %39)
  ret void
}

declare dso_local %struct.Scsi_Host* @ecard_get_drvdata(%struct.expansion_card*) #1

declare dso_local i32 @ecard_set_drvdata(%struct.expansion_card*, i32*) #1

declare dso_local i32 @fas216_remove(%struct.Scsi_Host*) #1

declare dso_local i32 @free_dma(i64) #1

declare dso_local i32 @free_irq(i32, %struct.cumanascsi2_info*) #1

declare dso_local i32 @fas216_release(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @ecard_release_resources(%struct.expansion_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
