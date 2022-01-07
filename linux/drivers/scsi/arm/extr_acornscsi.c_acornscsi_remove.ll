; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_acornscsi.c_acornscsi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_acornscsi.c_acornscsi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@PAGE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expansion_card*)* @acornscsi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acornscsi_remove(%struct.expansion_card* %0) #0 {
  %2 = alloca %struct.expansion_card*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.expansion_card* %0, %struct.expansion_card** %2, align 8
  %5 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %6 = call %struct.Scsi_Host* @ecard_get_drvdata(%struct.expansion_card* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %12 = call i32 @ecard_set_drvdata(%struct.expansion_card* %11, i32* null)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call i32 @scsi_remove_host(%struct.Scsi_Host* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PAGE_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writeb(i32 128, i64 %19)
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.TYPE_7__* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @msgqueue_free(i32* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = call i32 @queue_free(i32* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @queue_free(i32* %36)
  %38 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ecardm_iounmap(%struct.expansion_card* %38, i64 %41)
  %43 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ecardm_iounmap(%struct.expansion_card* %43, i64 %46)
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %49 = call i32 @scsi_host_put(%struct.Scsi_Host* %48)
  %50 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %51 = call i32 @ecard_release_resources(%struct.expansion_card* %50)
  ret void
}

declare dso_local %struct.Scsi_Host* @ecard_get_drvdata(%struct.expansion_card*) #1

declare dso_local i32 @ecard_set_drvdata(%struct.expansion_card*, i32*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @msgqueue_free(i32*) #1

declare dso_local i32 @queue_free(i32*) #1

declare dso_local i32 @ecardm_iounmap(%struct.expansion_card*, i64) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @ecard_release_resources(%struct.expansion_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
