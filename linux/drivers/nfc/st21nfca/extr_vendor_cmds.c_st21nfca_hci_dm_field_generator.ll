; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_vendor_cmds.c_st21nfca_hci_dm_field_generator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_vendor_cmds.c_st21nfca_hci_dm_field_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_hci_dev = type { i32 }

@ST21NFCA_DEVICE_MGNT_GATE = common dso_local global i32 0, align 4
@ST21NFCA_HCI_DM_FIELD_GENERATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i8*, i64)* @st21nfca_hci_dm_field_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_dm_field_generator(%struct.nfc_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfc_hci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %9 = call %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev* %8)
  store %struct.nfc_hci_dev* %9, %struct.nfc_hci_dev** %7, align 8
  %10 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %11 = load i32, i32* @ST21NFCA_DEVICE_MGNT_GATE, align 4
  %12 = load i32, i32* @ST21NFCA_HCI_DM_FIELD_GENERATOR, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %10, i32 %11, i32 %12, i8* %13, i64 %14, i32* null)
  ret i32 %15
}

declare dso_local %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev*, i32, i32, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
