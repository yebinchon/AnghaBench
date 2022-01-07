; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_handle_wtx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_handle_wtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.st95hf_context = type { %struct.TYPE_3__*, %struct.nfc_digital_dev* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nfc_digital_dev = type { i64 }
%struct.param_list = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Config. setting error on WTX req, err = 0x%x\0A\00", align 1
@CMD_WTX_RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WTX response send, err = 0x%x\0A\00", align 1
@NFC_PROTO_ISO14443 = common dso_local global i64 0, align 8
@cmd_array = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_ISO14443A_PROTOCOL_SELECT = common dso_local global i64 0, align 8
@NFC_PROTO_ISO14443_B = common dso_local global i64 0, align 8
@CMD_ISO14443B_PROTOCOL_SELECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"Default config. setting error after WTX processing, err = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st95hf_context*, i32, i32)* @st95hf_handle_wtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_handle_wtx(%struct.st95hf_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st95hf_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [1 x %struct.param_list], align 4
  %11 = alloca %struct.nfc_digital_dev*, align 8
  %12 = alloca %struct.device*, align 8
  store %struct.st95hf_context* %0, %struct.st95hf_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8 0, i8* %9, align 1
  %13 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %14 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %13, i32 0, i32 1
  %15 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %14, align 8
  store %struct.nfc_digital_dev* %15, %struct.nfc_digital_dev** %11, align 8
  %16 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %17 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %12, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %3
  %23 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 63
  %26 = trunc i32 %25 to i8
  %27 = call i32 @iso14443_config_fdt(%struct.st95hf_context* %23, i8 zeroext %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.device*, %struct.device** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %94

35:                                               ; preds = %22
  %36 = getelementptr inbounds [1 x %struct.param_list], [1 x %struct.param_list]* %10, i64 0, i64 0
  %37 = getelementptr inbounds %struct.param_list, %struct.param_list* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds [1 x %struct.param_list], [1 x %struct.param_list]* %10, i64 0, i64 0
  %40 = getelementptr inbounds %struct.param_list, %struct.param_list* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %42 = load i32, i32* @CMD_WTX_RESPONSE, align 4
  %43 = getelementptr inbounds [1 x %struct.param_list], [1 x %struct.param_list]* %10, i64 0, i64 0
  %44 = call i32 @st95hf_send_recv_cmd(%struct.st95hf_context* %41, i32 %42, i32 1, %struct.param_list* %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.device*, %struct.device** %12, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %35
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %94

53:                                               ; preds = %3
  %54 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %11, align 8
  %55 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NFC_PROTO_ISO14443, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmd_array, align 8
  %61 = load i64, i64* @CMD_ISO14443A_PROTOCOL_SELECT, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %9, align 1
  br label %82

67:                                               ; preds = %53
  %68 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %11, align 8
  %69 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NFC_PROTO_ISO14443_B, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmd_array, align 8
  %75 = load i64, i64* @CMD_ISO14443B_PROTOCOL_SELECT, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %9, align 1
  br label %81

81:                                               ; preds = %73, %67
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %84 = load i8, i8* %9, align 1
  %85 = call i32 @iso14443_config_fdt(%struct.st95hf_context* %83, i8 zeroext %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.device*, %struct.device** %12, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %82
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %51, %30
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @iso14443_config_fdt(%struct.st95hf_context*, i8 zeroext) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @st95hf_send_recv_cmd(%struct.st95hf_context*, i32, i32, %struct.param_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
