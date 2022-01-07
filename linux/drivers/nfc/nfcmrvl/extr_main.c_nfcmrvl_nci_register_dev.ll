; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_nci_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_nci_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { i32, %struct.TYPE_2__, i32, %struct.device*, %struct.nfcmrvl_if_ops*, i8* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.nfcmrvl_if_ops = type { i32 }
%struct.device = type { i32 }
%struct.nfcmrvl_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nfcmrvl_reset_n\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to request reset_n io\0A\00", align 1
@NFCMRVL_PHY_SPI = common dso_local global i32 0, align 4
@NCI_SPI_HDR_LEN = common dso_local global i32 0, align 4
@NFCMRVL_HCI_EVENT_HEADER_SIZE = common dso_local global i64 0, align 8
@NFC_PROTO_JEWEL_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_MIFARE_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_B_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO15693_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@nfcmrvl_nci_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"nci_allocate_device failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to initialize FW download %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"nci_register_device failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"registered with nci successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfcmrvl_private* @nfcmrvl_nci_register_dev(i32 %0, i8* %1, %struct.nfcmrvl_if_ops* %2, %struct.device* %3, %struct.nfcmrvl_platform_data* %4) #0 {
  %6 = alloca %struct.nfcmrvl_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nfcmrvl_if_ops*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.nfcmrvl_platform_data*, align 8
  %12 = alloca %struct.nfcmrvl_private*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.nfcmrvl_if_ops* %2, %struct.nfcmrvl_if_ops** %9, align 8
  store %struct.device* %3, %struct.device** %10, align 8
  store %struct.nfcmrvl_platform_data* %4, %struct.nfcmrvl_platform_data** %11, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.nfcmrvl_private* @kzalloc(i32 56, i32 %17)
  store %struct.nfcmrvl_private* %18, %struct.nfcmrvl_private** %12, align 8
  %19 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %20 = icmp ne %struct.nfcmrvl_private* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.nfcmrvl_private* @ERR_PTR(i32 %23)
  store %struct.nfcmrvl_private* %24, %struct.nfcmrvl_private** %6, align 8
  br label %171

25:                                               ; preds = %5
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %28 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load %struct.nfcmrvl_if_ops*, %struct.nfcmrvl_if_ops** %9, align 8
  %30 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %31 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %30, i32 0, i32 4
  store %struct.nfcmrvl_if_ops* %29, %struct.nfcmrvl_if_ops** %31, align 8
  %32 = load %struct.device*, %struct.device** %10, align 8
  %33 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %34 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %33, i32 0, i32 3
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %37 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %39 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %38, i32 0, i32 1
  %40 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %11, align 8
  %41 = call i32 @memcpy(%struct.TYPE_2__* %39, %struct.nfcmrvl_platform_data* %40, i32 4)
  %42 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %43 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @gpio_is_valid(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %25
  %49 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %50 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %54 = call i32 @gpio_request_one(i32 %52, i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %48
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  %60 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %61 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.device*, %struct.device** %10, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @nfc_err(%struct.device* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %57, %48
  br label %66

66:                                               ; preds = %65, %25
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @NFCMRVL_PHY_SPI, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @NCI_SPI_HDR_LEN, align 4
  store i32 %71, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %73

72:                                               ; preds = %66
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %72, %70
  %74 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %75 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i64, i64* @NFCMRVL_HCI_EVENT_HEADER_SIZE, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %79, %73
  %86 = load i32, i32* @NFC_PROTO_JEWEL_MASK, align 4
  %87 = load i32, i32* @NFC_PROTO_MIFARE_MASK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @NFC_PROTO_ISO14443_MASK, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @NFC_PROTO_ISO14443_B_MASK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @NFC_PROTO_ISO15693_MASK, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @nci_allocate_device(i32* @nfcmrvl_nci_ops, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %104 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %106 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %85
  %110 = load %struct.device*, %struct.device** %10, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @nfc_err(%struct.device* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %13, align 4
  br label %153

114:                                              ; preds = %85
  %115 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %116 = call i32 @nfcmrvl_fw_dnld_init(%struct.nfcmrvl_private* %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.device*, %struct.device** %10, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 (%struct.device*, i8*, ...) @nfc_err(%struct.device* %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %148

123:                                              ; preds = %114
  %124 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %125 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %128 = call i32 @nci_set_drvdata(i32 %126, %struct.nfcmrvl_private* %127)
  %129 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %130 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @nci_register_device(i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %123
  %136 = load %struct.device*, %struct.device** %10, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 (%struct.device*, i8*, ...) @nfc_err(%struct.device* %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  br label %145

139:                                              ; preds = %123
  %140 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %141 = call i32 @nfcmrvl_chip_halt(%struct.nfcmrvl_private* %140)
  %142 = load %struct.device*, %struct.device** %10, align 8
  %143 = call i32 @nfc_info(%struct.device* %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %144 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  store %struct.nfcmrvl_private* %144, %struct.nfcmrvl_private** %6, align 8
  br label %171

145:                                              ; preds = %135
  %146 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %147 = call i32 @nfcmrvl_fw_dnld_deinit(%struct.nfcmrvl_private* %146)
  br label %148

148:                                              ; preds = %145, %119
  %149 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %150 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @nci_free_device(i32 %151)
  br label %153

153:                                              ; preds = %148, %109
  %154 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %155 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @gpio_is_valid(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %162 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @gpio_free(i32 %164)
  br label %166

166:                                              ; preds = %160, %153
  %167 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %12, align 8
  %168 = call i32 @kfree(%struct.nfcmrvl_private* %167)
  %169 = load i32, i32* %13, align 4
  %170 = call %struct.nfcmrvl_private* @ERR_PTR(i32 %169)
  store %struct.nfcmrvl_private* %170, %struct.nfcmrvl_private** %6, align 8
  br label %171

171:                                              ; preds = %166, %139, %21
  %172 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  ret %struct.nfcmrvl_private* %172
}

declare dso_local %struct.nfcmrvl_private* @kzalloc(i32, i32) #1

declare dso_local %struct.nfcmrvl_private* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.nfcmrvl_platform_data*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request_one(i32, i32, i8*) #1

declare dso_local i32 @nfc_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @nci_allocate_device(i32*, i32, i32, i32) #1

declare dso_local i32 @nfcmrvl_fw_dnld_init(%struct.nfcmrvl_private*) #1

declare dso_local i32 @nci_set_drvdata(i32, %struct.nfcmrvl_private*) #1

declare dso_local i32 @nci_register_device(i32) #1

declare dso_local i32 @nfcmrvl_chip_halt(%struct.nfcmrvl_private*) #1

declare dso_local i32 @nfc_info(%struct.device*, i8*) #1

declare dso_local i32 @nfcmrvl_fw_dnld_deinit(%struct.nfcmrvl_private*) #1

declare dso_local i32 @nci_free_device(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.nfcmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
