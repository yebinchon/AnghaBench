; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_echo_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_echo_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st95hf_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CMD_ECHO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"err: echo response receive error = 0x%x\0A\00", align 1
@ECHORESPONSE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"err: echo res is 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st95hf_context*)* @st95hf_echo_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_echo_command(%struct.st95hf_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st95hf_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.st95hf_context* %0, %struct.st95hf_context** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %7 = load i32, i32* @CMD_ECHO, align 4
  %8 = call i32 @st95hf_send_recv_cmd(%struct.st95hf_context* %6, i32 %7, i32 0, i32* null, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %15 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %14, i32 0, i32 0
  %16 = call i32 @st95hf_spi_recv_echo_res(%struct.TYPE_4__* %15, i8* %5)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %21 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = trunc i32 %25 to i8
  %27 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8 zeroext %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %46

29:                                               ; preds = %13
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @ECHORESPONSE, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %46

36:                                               ; preds = %29
  %37 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %38 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8, i8* %5, align 1
  %43 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %36, %35, %19, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @st95hf_send_recv_cmd(%struct.st95hf_context*, i32, i32, i32*, i32) #1

declare dso_local i32 @st95hf_spi_recv_echo_res(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
