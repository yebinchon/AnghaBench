; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mvs_info*)* }
%struct.mvs_info = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.sas_ha_struct = type { %struct.sas_ha_struct*, %struct.sas_ha_struct*, i64 }
%struct.mvs_prv_info = type { i16, %struct.mvs_info**, i32 }

@MVS_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mvs_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.mvs_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i16 0, i16* %4, align 2
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.sas_ha_struct* %8, %struct.sas_ha_struct** %5, align 8
  store %struct.mvs_info* null, %struct.mvs_info** %6, align 8
  %9 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %10 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.mvs_prv_info*
  %13 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 8
  store i16 %14, i16* %3, align 2
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %16 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mvs_prv_info*
  %19 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %18, i32 0, i32 1
  %20 = load %struct.mvs_info**, %struct.mvs_info*** %19, align 8
  %21 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %20, i64 0
  %22 = load %struct.mvs_info*, %struct.mvs_info** %21, align 8
  store %struct.mvs_info* %22, %struct.mvs_info** %6, align 8
  %23 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %24 = call i32 @sas_unregister_ha(%struct.sas_ha_struct* %23)
  %25 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %26 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sas_remove_host(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MVS_CHIP_DISP, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.mvs_info*)*, i32 (%struct.mvs_info*)** %30, align 8
  %32 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %33 = call i32 %31(%struct.mvs_info* %32)
  %34 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %35 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %40 = call i32 @free_irq(i32 %38, %struct.sas_ha_struct* %39)
  store i16 0, i16* %4, align 2
  br label %41

41:                                               ; preds = %60, %1
  %42 = load i16, i16* %4, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* %3, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %49 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.mvs_prv_info*
  %52 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %51, i32 0, i32 1
  %53 = load %struct.mvs_info**, %struct.mvs_info*** %52, align 8
  %54 = load i16, i16* %4, align 2
  %55 = zext i16 %54 to i64
  %56 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %53, i64 %55
  %57 = load %struct.mvs_info*, %struct.mvs_info** %56, align 8
  store %struct.mvs_info* %57, %struct.mvs_info** %6, align 8
  %58 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %59 = call i32 @mvs_free(%struct.mvs_info* %58)
  br label %60

60:                                               ; preds = %47
  %61 = load i16, i16* %4, align 2
  %62 = add i16 %61, 1
  store i16 %62, i16* %4, align 2
  br label %41

63:                                               ; preds = %41
  %64 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %65 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %64, i32 0, i32 1
  %66 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %65, align 8
  %67 = call i32 @kfree(%struct.sas_ha_struct* %66)
  %68 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %69 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %68, i32 0, i32 0
  %70 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %69, align 8
  %71 = call i32 @kfree(%struct.sas_ha_struct* %70)
  %72 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %73 = call i32 @kfree(%struct.sas_ha_struct* %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %75 = call i32 @pci_release_regions(%struct.pci_dev* %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %77 = call i32 @pci_disable_device(%struct.pci_dev* %76)
  ret void
}

declare dso_local %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @sas_unregister_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @sas_remove_host(i32) #1

declare dso_local i32 @free_irq(i32, %struct.sas_ha_struct*) #1

declare dso_local i32 @mvs_free(%struct.mvs_info*) #1

declare dso_local i32 @kfree(%struct.sas_ha_struct*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
