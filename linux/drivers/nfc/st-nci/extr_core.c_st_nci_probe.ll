; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_core.c_st_nci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_core.c_st_nci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llt_ndlc = type { i32, i32 }
%struct.st_nci_se_status = type { i32 }
%struct.st_nci_info = type { %struct.llt_ndlc* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_PROTO_JEWEL_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_MIFARE_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_B_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO15693_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@st_nci_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot allocate nfc ndev\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot register proprietary vendor cmds\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Cannot register nfc device to nci core\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_nci_probe(%struct.llt_ndlc* %0, i32 %1, i32 %2, %struct.st_nci_se_status* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.llt_ndlc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_nci_se_status*, align 8
  %10 = alloca %struct.st_nci_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.llt_ndlc* %0, %struct.llt_ndlc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.st_nci_se_status* %3, %struct.st_nci_se_status** %9, align 8
  %13 = load %struct.llt_ndlc*, %struct.llt_ndlc** %6, align 8
  %14 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.st_nci_info* @devm_kzalloc(i32 %15, i32 8, i32 %16)
  store %struct.st_nci_info* %17, %struct.st_nci_info** %10, align 8
  %18 = load %struct.st_nci_info*, %struct.st_nci_info** %10, align 8
  %19 = icmp ne %struct.st_nci_info* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %89

23:                                               ; preds = %4
  %24 = load i32, i32* @NFC_PROTO_JEWEL_MASK, align 4
  %25 = load i32, i32* @NFC_PROTO_MIFARE_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @NFC_PROTO_ISO14443_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @NFC_PROTO_ISO14443_B_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @NFC_PROTO_ISO15693_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @nci_allocate_device(i32* @st_nci_ops, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.llt_ndlc*, %struct.llt_ndlc** %6, align 8
  %42 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.llt_ndlc*, %struct.llt_ndlc** %6, align 8
  %44 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %23
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %89

51:                                               ; preds = %23
  %52 = load %struct.llt_ndlc*, %struct.llt_ndlc** %6, align 8
  %53 = load %struct.st_nci_info*, %struct.st_nci_info** %10, align 8
  %54 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %53, i32 0, i32 0
  store %struct.llt_ndlc* %52, %struct.llt_ndlc** %54, align 8
  %55 = load %struct.llt_ndlc*, %struct.llt_ndlc** %6, align 8
  %56 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.st_nci_info*, %struct.st_nci_info** %10, align 8
  %59 = call i32 @nci_set_drvdata(i32 %57, %struct.st_nci_info* %58)
  %60 = load %struct.llt_ndlc*, %struct.llt_ndlc** %6, align 8
  %61 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @st_nci_vendor_cmds_init(i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %83

68:                                               ; preds = %51
  %69 = load %struct.llt_ndlc*, %struct.llt_ndlc** %6, align 8
  %70 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nci_register_device(i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %83

77:                                               ; preds = %68
  %78 = load %struct.llt_ndlc*, %struct.llt_ndlc** %6, align 8
  %79 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.st_nci_se_status*, %struct.st_nci_se_status** %9, align 8
  %82 = call i32 @st_nci_se_init(i32 %80, %struct.st_nci_se_status* %81)
  store i32 %82, i32* %5, align 4
  br label %89

83:                                               ; preds = %75, %66
  %84 = load %struct.llt_ndlc*, %struct.llt_ndlc** %6, align 8
  %85 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @nci_free_device(i32 %86)
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %83, %77, %47, %20
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.st_nci_info* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @nci_allocate_device(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nci_set_drvdata(i32, %struct.st_nci_info*) #1

declare dso_local i32 @st_nci_vendor_cmds_init(i32) #1

declare dso_local i32 @nci_register_device(i32) #1

declare dso_local i32 @st_nci_se_init(i32, %struct.st_nci_se_status*) #1

declare dso_local i32 @nci_free_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
