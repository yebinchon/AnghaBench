; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_release_fusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_release_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_release_fusion(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %3 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %4 = call i32 @megasas_free_ioc_init_cmd(%struct.megasas_instance* %3)
  %5 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %6 = call i32 @megasas_free_cmds(%struct.megasas_instance* %5)
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %8 = call i32 @megasas_free_cmds_fusion(%struct.megasas_instance* %7)
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %10 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iounmap(i32 %11)
  %13 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %14 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %17 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 1, %18
  %20 = call i32 @pci_release_selected_regions(i32 %15, i32 %19)
  ret void
}

declare dso_local i32 @megasas_free_ioc_init_cmd(%struct.megasas_instance*) #1

declare dso_local i32 @megasas_free_cmds(%struct.megasas_instance*) #1

declare dso_local i32 @megasas_free_cmds_fusion(%struct.megasas_instance*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_selected_regions(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
