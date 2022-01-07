; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli4_log_fcf_record_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli4_log_fcf_record_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.fcf_record = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [311 x i8] c"2764 READ_FCF_RECORD:\0A\09FCF_Index     : x%x\0A\09FCF_Avail     : x%x\0A\09FCF_Valid     : x%x\0A\09FCF_SOL       : x%x\0A\09FIP_Priority  : x%x\0A\09MAC_Provider  : x%x\0A\09Lowest VLANID : x%x\0A\09FCF_MAC Addr  : x%x:%x:%x:%x:%x:%x\0A\09Fabric_Name   : x%x:%x:%x:%x:%x:%x:%x:%x\0A\09Switch_Name   : x%x:%x:%x:%x:%x:%x:%x:%x\0A\09Next_FCF_Index: x%x\0A\00", align 1
@lpfc_fcf_record_fcf_index = common dso_local global i32 0, align 4
@lpfc_fcf_record_fcf_avail = common dso_local global i32 0, align 4
@lpfc_fcf_record_fcf_valid = common dso_local global i32 0, align 4
@lpfc_fcf_record_fcf_sol = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_addr_prov = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_0 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_1 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_2 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_3 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_4 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_5 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_0 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_1 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_2 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_3 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_4 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_5 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_6 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_7 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_0 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_1 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_2 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_3 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_4 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_5 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_6 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.fcf_record*, i32, i32)* @lpfc_sli4_log_fcf_record_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_log_fcf_record_info(%struct.lpfc_hba* %0, %struct.fcf_record* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.fcf_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.fcf_record* %1, %struct.fcf_record** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %10 = load i32, i32* @KERN_INFO, align 4
  %11 = load i32, i32* @LOG_FIP, align 4
  %12 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %13 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %14 = call i32 @bf_get(i32 %12, %struct.fcf_record* %13)
  %15 = load i32, i32* @lpfc_fcf_record_fcf_avail, align 4
  %16 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %17 = call i32 @bf_get(i32 %15, %struct.fcf_record* %16)
  %18 = load i32, i32* @lpfc_fcf_record_fcf_valid, align 4
  %19 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %20 = call i32 @bf_get(i32 %18, %struct.fcf_record* %19)
  %21 = load i32, i32* @lpfc_fcf_record_fcf_sol, align 4
  %22 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %23 = call i32 @bf_get(i32 %21, %struct.fcf_record* %22)
  %24 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %25 = getelementptr inbounds %struct.fcf_record, %struct.fcf_record* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @lpfc_fcf_record_mac_addr_prov, align 4
  %28 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %29 = call i32 @bf_get(i32 %27, %struct.fcf_record* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @lpfc_fcf_record_mac_0, align 4
  %32 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %33 = call i32 @bf_get(i32 %31, %struct.fcf_record* %32)
  %34 = load i32, i32* @lpfc_fcf_record_mac_1, align 4
  %35 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %36 = call i32 @bf_get(i32 %34, %struct.fcf_record* %35)
  %37 = load i32, i32* @lpfc_fcf_record_mac_2, align 4
  %38 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %39 = call i32 @bf_get(i32 %37, %struct.fcf_record* %38)
  %40 = load i32, i32* @lpfc_fcf_record_mac_3, align 4
  %41 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %42 = call i32 @bf_get(i32 %40, %struct.fcf_record* %41)
  %43 = load i32, i32* @lpfc_fcf_record_mac_4, align 4
  %44 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %45 = call i32 @bf_get(i32 %43, %struct.fcf_record* %44)
  %46 = load i32, i32* @lpfc_fcf_record_mac_5, align 4
  %47 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %48 = call i32 @bf_get(i32 %46, %struct.fcf_record* %47)
  %49 = load i32, i32* @lpfc_fcf_record_fab_name_0, align 4
  %50 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %51 = call i32 @bf_get(i32 %49, %struct.fcf_record* %50)
  %52 = load i32, i32* @lpfc_fcf_record_fab_name_1, align 4
  %53 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %54 = call i32 @bf_get(i32 %52, %struct.fcf_record* %53)
  %55 = load i32, i32* @lpfc_fcf_record_fab_name_2, align 4
  %56 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %57 = call i32 @bf_get(i32 %55, %struct.fcf_record* %56)
  %58 = load i32, i32* @lpfc_fcf_record_fab_name_3, align 4
  %59 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %60 = call i32 @bf_get(i32 %58, %struct.fcf_record* %59)
  %61 = load i32, i32* @lpfc_fcf_record_fab_name_4, align 4
  %62 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %63 = call i32 @bf_get(i32 %61, %struct.fcf_record* %62)
  %64 = load i32, i32* @lpfc_fcf_record_fab_name_5, align 4
  %65 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %66 = call i32 @bf_get(i32 %64, %struct.fcf_record* %65)
  %67 = load i32, i32* @lpfc_fcf_record_fab_name_6, align 4
  %68 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %69 = call i32 @bf_get(i32 %67, %struct.fcf_record* %68)
  %70 = load i32, i32* @lpfc_fcf_record_fab_name_7, align 4
  %71 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %72 = call i32 @bf_get(i32 %70, %struct.fcf_record* %71)
  %73 = load i32, i32* @lpfc_fcf_record_switch_name_0, align 4
  %74 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %75 = call i32 @bf_get(i32 %73, %struct.fcf_record* %74)
  %76 = load i32, i32* @lpfc_fcf_record_switch_name_1, align 4
  %77 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %78 = call i32 @bf_get(i32 %76, %struct.fcf_record* %77)
  %79 = load i32, i32* @lpfc_fcf_record_switch_name_2, align 4
  %80 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %81 = call i32 @bf_get(i32 %79, %struct.fcf_record* %80)
  %82 = load i32, i32* @lpfc_fcf_record_switch_name_3, align 4
  %83 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %84 = call i32 @bf_get(i32 %82, %struct.fcf_record* %83)
  %85 = load i32, i32* @lpfc_fcf_record_switch_name_4, align 4
  %86 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %87 = call i32 @bf_get(i32 %85, %struct.fcf_record* %86)
  %88 = load i32, i32* @lpfc_fcf_record_switch_name_5, align 4
  %89 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %90 = call i32 @bf_get(i32 %88, %struct.fcf_record* %89)
  %91 = load i32, i32* @lpfc_fcf_record_switch_name_6, align 4
  %92 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %93 = call i32 @bf_get(i32 %91, %struct.fcf_record* %92)
  %94 = load i32, i32* @lpfc_fcf_record_switch_name_7, align 4
  %95 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %96 = call i32 @bf_get(i32 %94, %struct.fcf_record* %95)
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([311 x i8], [311 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 %84, i32 %87, i32 %90, i32 %93, i32 %96, i32 %97)
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bf_get(i32, %struct.fcf_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
