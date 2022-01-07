; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_spi.c_st95hf_spi_recv_echo_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_spi.c_st95hf_spi_recv_echo_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st95hf_spi_context = type { i32, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i8*, i32, i8* }
%struct.spi_message = type { i32 }

@ST95HF_COMMAND_RECEIVE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [37 x i8] c"recv_echo_res, data read error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st95hf_spi_recv_echo_res(%struct.st95hf_spi_context* %0, i8* %1) #0 {
  %3 = alloca %struct.st95hf_spi_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.spi_transfer], align 16
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca i32, align 4
  store %struct.st95hf_spi_context* %0, %struct.st95hf_spi_context** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8, i8* @ST95HF_COMMAND_RECEIVE, align 1
  store i8 %10, i8* %5, align 1
  %11 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 0
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i8* %5, i8** %12, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  store i8* null, i8** %14, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i64 1
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 1
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 2
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %18, align 8
  %20 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %3, align 8
  %21 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %20, i32 0, i32 1
  %22 = load %struct.spi_device*, %struct.spi_device** %21, align 8
  store %struct.spi_device* %22, %struct.spi_device** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %3, align 8
  %24 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = call i32 @spi_message_init(%struct.spi_message* %7)
  %27 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 0
  %28 = call i32 @spi_message_add_tail(%struct.spi_transfer* %27, %struct.spi_message* %7)
  %29 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 1
  %30 = call i32 @spi_message_add_tail(%struct.spi_transfer* %29, %struct.spi_message* %7)
  %31 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %32 = call i32 @spi_sync(%struct.spi_device* %31, %struct.spi_message* %7)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %3, align 8
  %34 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %2
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
