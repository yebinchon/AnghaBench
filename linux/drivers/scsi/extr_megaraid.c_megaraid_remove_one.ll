; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_megaraid_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_megaraid_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@BOARD_MEMMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hba%d\00", align 1
@mega_proc_dir_entry = common dso_local global i32 0, align 4
@MEGA_BUFFER_SIZE = common dso_local global i32 0, align 4
@hba_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @megaraid_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megaraid_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca [12 x i8], align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = bitcast [12 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 12, i1 false)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call i32 @scsi_remove_host(%struct.Scsi_Host* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = call i32 @__megaraid_shutdown(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BOARD_MEMMAP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @iounmap(i8* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 7
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @release_mem_region(i32 %33, i32 128)
  br label %40

35:                                               ; preds = %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @release_region(i64 %38, i32 16)
  br label %40

40:                                               ; preds = %35, %23
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = call i32 @mega_free_sgl(%struct.TYPE_6__* %41)
  %43 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %51 = load i32, i32* @mega_proc_dir_entry, align 4
  %52 = call i32 @remove_proc_subtree(i8* %50, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MEGA_BUFFER_SIZE, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pci_free_consistent(i32 %55, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @kfree(i32 %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pci_free_consistent(i32 %70, i32 4, i32 %73, i32 %76)
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %79 = call i32 @scsi_host_put(%struct.Scsi_Host* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %81 = call i32 @pci_disable_device(%struct.pci_dev* %80)
  %82 = load i32, i32* @hba_count, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* @hba_count, align 4
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @__megaraid_shutdown(%struct.TYPE_6__*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @mega_free_sgl(%struct.TYPE_6__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @remove_proc_subtree(i8*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
