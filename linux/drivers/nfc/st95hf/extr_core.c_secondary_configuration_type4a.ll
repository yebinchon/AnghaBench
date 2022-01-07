; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_secondary_configuration_type4a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_secondary_configuration_type4a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st95hf_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@CMD_ISO14443A_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"type a config cmd, err = 0x%x\0A\00", align 1
@CMD_ISO14443A_DEMOGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"type a demogain cmd, err = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st95hf_context*)* @secondary_configuration_type4a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secondary_configuration_type4a(%struct.st95hf_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st95hf_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.st95hf_context* %0, %struct.st95hf_context** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %7 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %11 = load i32, i32* @CMD_ISO14443A_CONFIG, align 4
  %12 = call i32 @st95hf_send_recv_cmd(%struct.st95hf_context* %10, i32 %11, i32 0, i32* null, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %1
  %21 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %22 = load i32, i32* @CMD_ISO14443A_DEMOGAIN, align 4
  %23 = call i32 @st95hf_send_recv_cmd(%struct.st95hf_context* %21, i32 %22, i32 0, i32* null, i32 1)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @st95hf_send_recv_cmd(%struct.st95hf_context*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
