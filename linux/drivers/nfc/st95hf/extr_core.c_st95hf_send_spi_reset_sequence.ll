; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_send_spi_reset_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_send_spi_reset_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st95hf_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ST95HF_COMMAND_RESET = common dso_local global i8 0, align 1
@ST95HF_RESET_CMD_LEN = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"spi reset sequence cmd error = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st95hf_context*)* @st95hf_send_spi_reset_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_send_spi_reset_sequence(%struct.st95hf_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st95hf_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.st95hf_context* %0, %struct.st95hf_context** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8, i8* @ST95HF_COMMAND_RESET, align 1
  store i8 %6, i8* %5, align 1
  %7 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %8 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %7, i32 0, i32 0
  %9 = load i32, i32* @ST95HF_RESET_CMD_LEN, align 4
  %10 = load i32, i32* @ASYNC, align 4
  %11 = call i32 @st95hf_spi_send(%struct.TYPE_4__* %8, i8* %5, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %16 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = call i32 @usleep_range(i32 3000, i32 4000)
  %25 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %26 = call i32 @st95hf_send_st95enable_negativepulse(%struct.st95hf_context* %25)
  %27 = call i32 @usleep_range(i32 10000, i32 20000)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %14
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @st95hf_spi_send(%struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @st95hf_send_st95enable_negativepulse(%struct.st95hf_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
