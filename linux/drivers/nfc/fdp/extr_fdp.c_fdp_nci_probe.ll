; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp_i2c_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nfc_phy_ops = type { i32 }
%struct.nci_dev = type { i32 }
%struct.fdp_nci_info = type { i32, %struct.nci_dev*, i32, i32*, i32, %struct.nfc_phy_ops*, %struct.fdp_i2c_phy* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_PROTO_JEWEL_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_MIFARE_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_B_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO15693_MASK = common dso_local global i32 0, align 4
@nci_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot allocate nfc ndev\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdp_nci_probe(%struct.fdp_i2c_phy* %0, %struct.nfc_phy_ops* %1, %struct.nci_dev** %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.fdp_i2c_phy*, align 8
  %11 = alloca %struct.nfc_phy_ops*, align 8
  %12 = alloca %struct.nci_dev**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.device*, align 8
  %19 = alloca %struct.fdp_nci_info*, align 8
  %20 = alloca %struct.nci_dev*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.fdp_i2c_phy* %0, %struct.fdp_i2c_phy** %10, align 8
  store %struct.nfc_phy_ops* %1, %struct.nfc_phy_ops** %11, align 8
  store %struct.nci_dev** %2, %struct.nci_dev*** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %23 = load %struct.fdp_i2c_phy*, %struct.fdp_i2c_phy** %10, align 8
  %24 = getelementptr inbounds %struct.fdp_i2c_phy, %struct.fdp_i2c_phy* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.device* %26, %struct.device** %18, align 8
  %27 = load %struct.device*, %struct.device** %18, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.fdp_nci_info* @devm_kzalloc(%struct.device* %27, i32 56, i32 %28)
  store %struct.fdp_nci_info* %29, %struct.fdp_nci_info** %19, align 8
  %30 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %19, align 8
  %31 = icmp ne %struct.fdp_nci_info* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %8
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %97

35:                                               ; preds = %8
  %36 = load %struct.fdp_i2c_phy*, %struct.fdp_i2c_phy** %10, align 8
  %37 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %19, align 8
  %38 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %37, i32 0, i32 6
  store %struct.fdp_i2c_phy* %36, %struct.fdp_i2c_phy** %38, align 8
  %39 = load %struct.nfc_phy_ops*, %struct.nfc_phy_ops** %11, align 8
  %40 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %19, align 8
  %41 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %40, i32 0, i32 5
  store %struct.nfc_phy_ops* %39, %struct.nfc_phy_ops** %41, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %19, align 8
  %44 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %19, align 8
  %47 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %19, align 8
  %50 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %19, align 8
  %52 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %51, i32 0, i32 2
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = load i32, i32* @NFC_PROTO_JEWEL_MASK, align 4
  %55 = load i32, i32* @NFC_PROTO_MIFARE_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @NFC_PROTO_ISO14443_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @NFC_PROTO_ISO14443_B_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @NFC_PROTO_ISO15693_MASK, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call %struct.nci_dev* @nci_allocate_device(i32* @nci_ops, i32 %67, i32 %68, i32 %69)
  store %struct.nci_dev* %70, %struct.nci_dev** %20, align 8
  %71 = load %struct.nci_dev*, %struct.nci_dev** %20, align 8
  %72 = icmp ne %struct.nci_dev* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %35
  %74 = load %struct.device*, %struct.device** %18, align 8
  %75 = call i32 @nfc_err(%struct.device* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %97

78:                                               ; preds = %35
  %79 = load %struct.nci_dev*, %struct.nci_dev** %20, align 8
  %80 = call i32 @nci_register_device(%struct.nci_dev* %79)
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %22, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %93

84:                                               ; preds = %78
  %85 = load %struct.nci_dev*, %struct.nci_dev** %20, align 8
  %86 = load %struct.nci_dev**, %struct.nci_dev*** %12, align 8
  store %struct.nci_dev* %85, %struct.nci_dev** %86, align 8
  %87 = load %struct.nci_dev*, %struct.nci_dev** %20, align 8
  %88 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %19, align 8
  %89 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %88, i32 0, i32 1
  store %struct.nci_dev* %87, %struct.nci_dev** %89, align 8
  %90 = load %struct.nci_dev*, %struct.nci_dev** %20, align 8
  %91 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %19, align 8
  %92 = call i32 @nci_set_drvdata(%struct.nci_dev* %90, %struct.fdp_nci_info* %91)
  store i32 0, i32* %9, align 4
  br label %97

93:                                               ; preds = %83
  %94 = load %struct.nci_dev*, %struct.nci_dev** %20, align 8
  %95 = call i32 @nci_free_device(%struct.nci_dev* %94)
  %96 = load i32, i32* %22, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %93, %84, %73, %32
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local %struct.fdp_nci_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.nci_dev* @nci_allocate_device(i32*, i32, i32, i32) #1

declare dso_local i32 @nfc_err(%struct.device*, i8*) #1

declare dso_local i32 @nci_register_device(%struct.nci_dev*) #1

declare dso_local i32 @nci_set_drvdata(%struct.nci_dev*, %struct.fdp_nci_info*) #1

declare dso_local i32 @nci_free_device(%struct.nci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
