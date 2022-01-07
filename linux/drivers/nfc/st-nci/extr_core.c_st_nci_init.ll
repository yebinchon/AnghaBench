; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_core.c_st_nci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_core.c_st_nci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.nci_mode_set_cmd = type { i32, i32 }

@ST_NCI_SET_NFC_MODE = common dso_local global i32 0, align 4
@ST_NCI_CORE_PROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @st_nci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_init(%struct.nci_dev* %0) #0 {
  %2 = alloca %struct.nci_dev*, align 8
  %3 = alloca %struct.nci_mode_set_cmd, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %2, align 8
  %4 = load i32, i32* @ST_NCI_SET_NFC_MODE, align 4
  %5 = getelementptr inbounds %struct.nci_mode_set_cmd, %struct.nci_mode_set_cmd* %3, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.nci_mode_set_cmd, %struct.nci_mode_set_cmd* %3, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %8 = load i32, i32* @ST_NCI_CORE_PROP, align 4
  %9 = bitcast %struct.nci_mode_set_cmd* %3 to i32*
  %10 = call i32 @nci_prop_cmd(%struct.nci_dev* %7, i32 %8, i32 8, i32* %9)
  ret i32 %10
}

declare dso_local i32 @nci_prop_cmd(%struct.nci_dev*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
