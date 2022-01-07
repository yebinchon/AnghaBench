; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_response_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_response_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.st95hf_context = type { i32, i32, i32, %struct.st95_digital_cmd_complete_arg, %struct.TYPE_3__*, %struct.nfc_digital_dev* }
%struct.st95_digital_cmd_complete_arg = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nfc_digital_dev = type { i64 }
%struct.sk_buff = type { i32, i32* }

@NFC_PROTO_ISO14443 = common dso_local global i64 0, align 8
@RATS_TB1_PRESENT_MASK = common dso_local global i32 0, align 4
@RATS_TA1_PRESENT_MASK = common dso_local global i32 0, align 4
@TB1_FWI_MASK = common dso_local global i32 0, align 4
@cmd_array = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_ISO14443A_PROTOCOL_SELECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"error in config_fdt to handle fwi of ATS, error=%d\0A\00", align 1
@TRFLAG_NFCA_STD_FRAME_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st95hf_context*, %struct.sk_buff*, i32)* @st95hf_response_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_response_handler(%struct.st95hf_context* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st95hf_context*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.nfc_digital_dev*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.st95_digital_cmd_complete_arg*, align 8
  store %struct.st95hf_context* %0, %struct.st95hf_context** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %15 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %14, i32 0, i32 5
  %16 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %15, align 8
  store %struct.nfc_digital_dev* %16, %struct.nfc_digital_dev** %11, align 8
  %17 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %18 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %12, align 8
  %21 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %22 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %21, i32 0, i32 3
  store %struct.st95_digital_cmd_complete_arg* %22, %struct.st95_digital_cmd_complete_arg** %13, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @skb_put(%struct.sk_buff* %23, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @skb_pull(%struct.sk_buff* %26, i32 2)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %11, align 8
  %32 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NFC_PROTO_ISO14443, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %3
  %37 = load %struct.st95_digital_cmd_complete_arg*, %struct.st95_digital_cmd_complete_arg** %13, align 8
  %38 = getelementptr inbounds %struct.st95_digital_cmd_complete_arg, %struct.st95_digital_cmd_complete_arg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %100

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RATS_TB1_PRESENT_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %100

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RATS_TA1_PRESENT_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TB1_FWI_MASK, align 4
  %66 = and i32 %64, %65
  %67 = ashr i32 %66, 4
  %68 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %69 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %81

70:                                               ; preds = %50
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TB1_FWI_MASK, align 4
  %77 = and i32 %75, %76
  %78 = ashr i32 %77, 4
  %79 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %80 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %70, %59
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmd_array, align 8
  %83 = load i64, i64* @CMD_ISO14443A_PROTOCOL_SELECT, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %10, align 1
  %89 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %90 = load i8, i8* %10, align 1
  %91 = call i32 @iso14443_config_fdt(%struct.st95hf_context* %89, i8 zeroext %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load %struct.device*, %struct.device** %12, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %130

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %41, %36, %3
  %101 = load %struct.st95_digital_cmd_complete_arg*, %struct.st95_digital_cmd_complete_arg** %13, align 8
  %102 = getelementptr inbounds %struct.st95_digital_cmd_complete_arg, %struct.st95_digital_cmd_complete_arg* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  %103 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %104 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %128 [
    i32 130, label %106
    i32 129, label %123
    i32 128, label %123
  ]

106:                                              ; preds = %100
  %107 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %108 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @TRFLAG_NFCA_STD_FRAME_CRC, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, 5
  %116 = call i32 @skb_trim(%struct.sk_buff* %113, i32 %115)
  br label %122

117:                                              ; preds = %106
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sub nsw i32 %119, 3
  %121 = call i32 @skb_trim(%struct.sk_buff* %118, i32 %120)
  br label %122

122:                                              ; preds = %117, %112
  br label %128

123:                                              ; preds = %100, %100
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, 3
  %127 = call i32 @skb_trim(%struct.sk_buff* %124, i32 %126)
  br label %128

128:                                              ; preds = %100, %123, %122
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %94
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @iso14443_config_fdt(%struct.st95hf_context*, i8 zeroext) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
