; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_mei.c_pn544_mei_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_mei.c_pn544_mei_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32 }
%struct.nfc_mei_phy = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Removing pn544\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl_device*)* @pn544_mei_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_mei_remove(%struct.mei_cl_device* %0) #0 {
  %2 = alloca %struct.mei_cl_device*, align 8
  %3 = alloca %struct.nfc_mei_phy*, align 8
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %2, align 8
  %4 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %5 = call %struct.nfc_mei_phy* @mei_cldev_get_drvdata(%struct.mei_cl_device* %4)
  store %struct.nfc_mei_phy* %5, %struct.nfc_mei_phy** %3, align 8
  %6 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %3, align 8
  %8 = getelementptr inbounds %struct.nfc_mei_phy, %struct.nfc_mei_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pn544_hci_remove(i32 %9)
  %11 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %3, align 8
  %12 = call i32 @nfc_mei_phy_free(%struct.nfc_mei_phy* %11)
  ret i32 0
}

declare dso_local %struct.nfc_mei_phy* @mei_cldev_get_drvdata(%struct.mei_cl_device*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pn544_hci_remove(i32) #1

declare dso_local i32 @nfc_mei_phy_free(%struct.nfc_mei_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
