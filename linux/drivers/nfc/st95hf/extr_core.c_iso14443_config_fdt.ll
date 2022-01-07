; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_iso14443_config_fdt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_iso14443_config_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.st95hf_context = type { i32, %struct.nfc_digital_dev*, %struct.TYPE_5__ }
%struct.nfc_digital_dev = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.param_list = type { i32, i32 }

@cmd_array = common dso_local global %struct.TYPE_6__* null, align 8
@CMD_ISO14443B_PROTOCOL_SELECT = common dso_local global i64 0, align 8
@CMD_ISO14443A_PROTOCOL_SELECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"WTX type a sel proto, err = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"WTX type a second. config, err = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"WTX type b sel proto, err = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"WTX type b second. config, err = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st95hf_context*, i32)* @iso14443_config_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso14443_config_fdt(%struct.st95hf_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st95hf_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.nfc_digital_dev*, align 8
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.param_list], align 16
  store %struct.st95hf_context* %0, %struct.st95hf_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %12 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %17 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %16, i32 0, i32 1
  %18 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %17, align 8
  store %struct.nfc_digital_dev* %18, %struct.nfc_digital_dev** %8, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cmd_array, align 8
  %20 = load i64, i64* @CMD_ISO14443B_PROTOCOL_SELECT, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %9, align 1
  %26 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %8, align 8
  %27 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %32 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %37 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %30, %2
  %39 = getelementptr inbounds [2 x %struct.param_list], [2 x %struct.param_list]* %10, i64 0, i64 0
  %40 = getelementptr inbounds %struct.param_list, %struct.param_list* %39, i32 0, i32 0
  store i32 2, i32* %40, align 16
  %41 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %8, align 8
  %42 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 129
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %47 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds [2 x %struct.param_list], [2 x %struct.param_list]* %10, i64 0, i64 0
  %50 = getelementptr inbounds %struct.param_list, %struct.param_list* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %62

51:                                               ; preds = %38
  %52 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %8, align 8
  %53 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8, i8* %9, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds [2 x %struct.param_list], [2 x %struct.param_list]* %10, i64 0, i64 0
  %60 = getelementptr inbounds %struct.param_list, %struct.param_list* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %45
  %63 = getelementptr inbounds [2 x %struct.param_list], [2 x %struct.param_list]* %10, i64 0, i64 1
  %64 = getelementptr inbounds %struct.param_list, %struct.param_list* %63, i32 0, i32 0
  store i32 3, i32* %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = getelementptr inbounds [2 x %struct.param_list], [2 x %struct.param_list]* %10, i64 0, i64 1
  %67 = getelementptr inbounds %struct.param_list, %struct.param_list* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %8, align 8
  %69 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %117 [
    i32 129, label %71
    i32 128, label %94
  ]

71:                                               ; preds = %62
  %72 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %73 = load i64, i64* @CMD_ISO14443A_PROTOCOL_SELECT, align 8
  %74 = getelementptr inbounds [2 x %struct.param_list], [2 x %struct.param_list]* %10, i64 0, i64 0
  %75 = call i32 @st95hf_send_recv_cmd(%struct.st95hf_context* %72, i64 %73, i32 2, %struct.param_list* %74, i32 1)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %121

83:                                               ; preds = %71
  %84 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %85 = call i32 @secondary_configuration_type4a(%struct.st95hf_context* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.device*, %struct.device** %7, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %121

93:                                               ; preds = %83
  br label %120

94:                                               ; preds = %62
  %95 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %96 = load i64, i64* @CMD_ISO14443B_PROTOCOL_SELECT, align 8
  %97 = getelementptr inbounds [2 x %struct.param_list], [2 x %struct.param_list]* %10, i64 0, i64 0
  %98 = call i32 @st95hf_send_recv_cmd(%struct.st95hf_context* %95, i64 %96, i32 2, %struct.param_list* %97, i32 1)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.device*, %struct.device** %7, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %121

106:                                              ; preds = %94
  %107 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %108 = call i32 @secondary_configuration_type4b(%struct.st95hf_context* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.device*, %struct.device** %7, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %121

116:                                              ; preds = %106
  br label %120

117:                                              ; preds = %62
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %121

120:                                              ; preds = %116, %93
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %117, %111, %101, %88, %78
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @st95hf_send_recv_cmd(%struct.st95hf_context*, i64, i32, %struct.param_list*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @secondary_configuration_type4a(%struct.st95hf_context*) #1

declare dso_local i32 @secondary_configuration_type4b(%struct.st95hf_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
