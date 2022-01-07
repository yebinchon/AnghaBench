; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_issue_dcmd_fusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_issue_dcmd_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32 }
%struct.megasas_cmd = type { i32 }
%union.MEGASAS_REQUEST_DESCRIPTOR_UNION = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*, %struct.megasas_cmd*)* @megasas_issue_dcmd_fusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_issue_dcmd_fusion(%struct.megasas_instance* %0, %struct.megasas_cmd* %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.megasas_cmd*, align 8
  %5 = alloca %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store %struct.megasas_cmd* %1, %struct.megasas_cmd** %4, align 8
  %6 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %7 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %8 = call %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* @build_mpt_cmd(%struct.megasas_instance* %6, %struct.megasas_cmd* %7)
  store %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %8, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %5, align 8
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %10 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %5, align 8
  %11 = call i32 @megasas_fire_cmd_fusion(%struct.megasas_instance* %9, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %10)
  ret void
}

declare dso_local %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* @build_mpt_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @megasas_fire_cmd_fusion(%struct.megasas_instance*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
