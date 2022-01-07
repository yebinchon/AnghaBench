; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_mei.c_pn544_mei_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_mei.c_pn544_mei_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32 }
%struct.mei_cl_device_id = type { i32 }
%struct.nfc_mei_phy = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Probing NFC pn544\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot allocate memory for pn544 mei phy.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mei_phy_ops = common dso_local global i32 0, align 4
@LLC_NOP_NAME = common dso_local global i32 0, align 4
@MEI_NFC_HEADER_SIZE = common dso_local global i32 0, align 4
@MEI_NFC_MAX_HCI_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl_device*, %struct.mei_cl_device_id*)* @pn544_mei_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_mei_probe(%struct.mei_cl_device* %0, %struct.mei_cl_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_cl_device*, align 8
  %5 = alloca %struct.mei_cl_device_id*, align 8
  %6 = alloca %struct.nfc_mei_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %4, align 8
  store %struct.mei_cl_device_id* %1, %struct.mei_cl_device_id** %5, align 8
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %10 = call %struct.nfc_mei_phy* @nfc_mei_phy_alloc(%struct.mei_cl_device* %9)
  store %struct.nfc_mei_phy* %10, %struct.nfc_mei_phy** %6, align 8
  %11 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %6, align 8
  %12 = icmp ne %struct.nfc_mei_phy* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %6, align 8
  %19 = load i32, i32* @LLC_NOP_NAME, align 4
  %20 = load i32, i32* @MEI_NFC_HEADER_SIZE, align 4
  %21 = load i32, i32* @MEI_NFC_MAX_HCI_PAYLOAD, align 4
  %22 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %6, align 8
  %23 = getelementptr inbounds %struct.nfc_mei_phy, %struct.nfc_mei_phy* %22, i32 0, i32 0
  %24 = call i32 @pn544_hci_probe(%struct.nfc_mei_phy* %18, i32* @mei_phy_ops, i32 %19, i32 %20, i32 0, i32 %21, i32* null, i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %6, align 8
  %29 = call i32 @nfc_mei_phy_free(%struct.nfc_mei_phy* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %27, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.nfc_mei_phy* @nfc_mei_phy_alloc(%struct.mei_cl_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pn544_hci_probe(%struct.nfc_mei_phy*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @nfc_mei_phy_free(%struct.nfc_mei_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
