; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.st21nfca_hci_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @st21nfca_hci_remove(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca %struct.nfc_hci_dev*, align 8
  %3 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %2, align 8
  %4 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %5 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %4)
  store %struct.st21nfca_hci_info* %5, %struct.st21nfca_hci_info** %3, align 8
  %6 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %7 = call i32 @st21nfca_dep_deinit(%struct.nfc_hci_dev* %6)
  %8 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %9 = call i32 @st21nfca_se_deinit(%struct.nfc_hci_dev* %8)
  %10 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %11 = call i32 @nfc_hci_unregister_device(%struct.nfc_hci_dev* %10)
  %12 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %13 = call i32 @nfc_hci_free_device(%struct.nfc_hci_dev* %12)
  %14 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %15 = call i32 @kfree(%struct.st21nfca_hci_info* %14)
  ret void
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @st21nfca_dep_deinit(%struct.nfc_hci_dev*) #1

declare dso_local i32 @st21nfca_se_deinit(%struct.nfc_hci_dev*) #1

declare dso_local i32 @nfc_hci_unregister_device(%struct.nfc_hci_dev*) #1

declare dso_local i32 @nfc_hci_free_device(%struct.nfc_hci_dev*) #1

declare dso_local i32 @kfree(%struct.st21nfca_hci_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
