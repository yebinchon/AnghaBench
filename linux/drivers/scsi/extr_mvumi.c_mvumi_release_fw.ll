; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_release_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_release_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@HSP_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*)* @mvumi_release_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_release_fw(%struct.mvumi_hba* %0) #0 {
  %2 = alloca %struct.mvumi_hba*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %2, align 8
  %3 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %4 = call i32 @mvumi_free_cmds(%struct.mvumi_hba* %3)
  %5 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %6 = call i32 @mvumi_release_mem_resource(%struct.mvumi_hba* %5)
  %7 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mvumi_unmap_pci_addr(%struct.TYPE_3__* %9, i32 %12)
  %14 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %15 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* @HSP_MAX_SIZE, align 4
  %19 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %20 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %23 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_free_coherent(i32* %17, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %27 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @kfree(i32 %28)
  %30 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %31 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @pci_release_regions(%struct.TYPE_3__* %32)
  ret void
}

declare dso_local i32 @mvumi_free_cmds(%struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_release_mem_resource(%struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_unmap_pci_addr(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
