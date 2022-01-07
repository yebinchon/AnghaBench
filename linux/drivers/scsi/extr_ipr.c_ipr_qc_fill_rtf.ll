; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_qc_fill_rtf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_qc_fill_rtf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_taskfile, %struct.TYPE_2__* }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ipr_sata_port* }
%struct.ipr_sata_port = type { %struct.ipr_ioasa_gata }
%struct.ipr_ioasa_gata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ipr_qc_fill_rtf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_qc_fill_rtf(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ipr_sata_port*, align 8
  %4 = alloca %struct.ipr_ioasa_gata*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %9, align 8
  store %struct.ipr_sata_port* %10, %struct.ipr_sata_port** %3, align 8
  %11 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %11, i32 0, i32 0
  store %struct.ipr_ioasa_gata* %12, %struct.ipr_ioasa_gata** %4, align 8
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 0
  store %struct.ata_taskfile* %14, %struct.ata_taskfile** %5, align 8
  %15 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %16 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %19 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %21 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %24 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %26 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %29 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %31 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %34 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %36 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %39 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %41 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %44 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %46 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %49 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %51 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %54 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %56 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %59 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %61 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %64 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ipr_ioasa_gata*, %struct.ipr_ioasa_gata** %4, align 8
  %66 = getelementptr inbounds %struct.ipr_ioasa_gata, %struct.ipr_ioasa_gata* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %69 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
