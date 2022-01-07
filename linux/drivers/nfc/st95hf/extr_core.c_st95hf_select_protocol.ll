; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_select_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_select_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st95hf_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@CMD_ISO14443A_PROTOCOL_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"protocol sel, err = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"type a secondary config, err = 0x%x\0A\00", align 1
@CMD_ISO14443B_PROTOCOL_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"protocol sel send, err = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"type b secondary config, err = 0x%x\0A\00", align 1
@CMD_ISO15693_PROTOCOL_SELECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st95hf_context*, i32)* @st95hf_select_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_select_protocol(%struct.st95hf_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st95hf_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.st95hf_context* %0, %struct.st95hf_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %9 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %76 [
    i32 130, label %13
    i32 129, label %37
    i32 128, label %62
  ]

13:                                               ; preds = %2
  %14 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %15 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %14, i32 0, i32 0
  store i32 130, i32* %15, align 8
  %16 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %17 = load i32, i32* @CMD_ISO14443A_PROTOCOL_SELECT, align 4
  %18 = call i32 @st95hf_send_recv_cmd(%struct.st95hf_context* %16, i32 %17, i32 0, i32* null, i32 1)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %80

26:                                               ; preds = %13
  %27 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %28 = call i32 @secondary_configuration_type4a(%struct.st95hf_context* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %80

36:                                               ; preds = %26
  br label %79

37:                                               ; preds = %2
  %38 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %39 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %38, i32 0, i32 0
  store i32 129, i32* %39, align 8
  %40 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %41 = load i32, i32* @CMD_ISO14443B_PROTOCOL_SELECT, align 4
  %42 = call i32 @st95hf_send_recv_cmd(%struct.st95hf_context* %40, i32 %41, i32 0, i32* null, i32 1)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %80

50:                                               ; preds = %37
  %51 = call i32 @usleep_range(i32 50000, i32 60000)
  %52 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %53 = call i32 @secondary_configuration_type4b(%struct.st95hf_context* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %80

61:                                               ; preds = %50
  br label %79

62:                                               ; preds = %2
  %63 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %64 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %63, i32 0, i32 0
  store i32 128, i32* %64, align 8
  %65 = load %struct.st95hf_context*, %struct.st95hf_context** %4, align 8
  %66 = load i32, i32* @CMD_ISO15693_PROTOCOL_SELECT, align 4
  %67 = call i32 @st95hf_send_recv_cmd(%struct.st95hf_context* %65, i32 %66, i32 0, i32* null, i32 1)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %80

75:                                               ; preds = %62
  br label %79

76:                                               ; preds = %2
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %75, %61, %36
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %76, %70, %56, %45, %31, %21
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @st95hf_send_recv_cmd(%struct.st95hf_context*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @secondary_configuration_type4a(%struct.st95hf_context*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @secondary_configuration_type4b(%struct.st95hf_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
