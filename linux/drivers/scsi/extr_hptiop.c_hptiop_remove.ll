; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_hptiop_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_hptiop_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.hptiop_hba = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i64*, i64*, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.hptiop_hba*)*, i32 (%struct.hptiop_hba*)* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"scsi%d: hptiop_remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @hptiop_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.hptiop_hba*, align 8
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hptiop_hba*
  store %struct.hptiop_hba* %11, %struct.hptiop_hba** %4, align 8
  %12 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %13 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %12, i32 0, i32 6
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = call i32 @scsi_remove_host(%struct.Scsi_Host* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = call i32 @hptiop_shutdown(%struct.pci_dev* %20)
  %22 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %23 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.hptiop_hba* %27)
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %75, %1
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %32 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %29
  %36 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %37 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %36, i32 0, i32 4
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %35
  %44 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %45 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %43
  %52 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %53 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %57 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 32
  %60 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %61 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %60, i32 0, i32 4
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %67 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dma_free_coherent(i32* %55, i64 %59, i64 %65, i64 %71)
  br label %74

73:                                               ; preds = %43, %35
  br label %78

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %5, align 8
  br label %29

78:                                               ; preds = %73, %29
  %79 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %80 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32 (%struct.hptiop_hba*)*, i32 (%struct.hptiop_hba*)** %82, align 8
  %84 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %85 = call i32 %83(%struct.hptiop_hba* %84)
  %86 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %87 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32 (%struct.hptiop_hba*)*, i32 (%struct.hptiop_hba*)** %89, align 8
  %91 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %92 = call i32 %90(%struct.hptiop_hba* %91)
  %93 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %94 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call i32 @pci_release_regions(%struct.TYPE_8__* %95)
  %97 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %98 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = call i32 @pci_set_drvdata(%struct.TYPE_8__* %99, i32* null)
  %101 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %102 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = call i32 @pci_disable_device(%struct.TYPE_8__* %103)
  %105 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %106 = call i32 @scsi_host_put(%struct.Scsi_Host* %105)
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @hptiop_shutdown(%struct.pci_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.hptiop_hba*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i64, i64) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_8__*) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_8__*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
