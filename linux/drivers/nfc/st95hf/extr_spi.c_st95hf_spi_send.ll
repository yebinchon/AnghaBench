; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_spi.c_st95hf_spi_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_spi.c_st95hf_spi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st95hf_spi_context = type { i32, i32, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i32 }

@SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"error: sending cmd to st95hf using SPI = %d\0A\00", align 1
@ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"error: response not ready timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st95hf_spi_send(%struct.st95hf_spi_context* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st95hf_spi_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.spi_device*, align 8
  %13 = alloca %struct.spi_transfer, align 8
  store %struct.st95hf_spi_context* %0, %struct.st95hf_spi_context** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %15 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %14, i32 0, i32 3
  %16 = load %struct.spi_device*, %struct.spi_device** %15, align 8
  store %struct.spi_device* %16, %struct.spi_device** %12, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %19, align 8
  %21 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %22 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SYNC, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %29 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %31 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %30, i32 0, i32 2
  %32 = call i32 @reinit_completion(i32* %31)
  br label %36

33:                                               ; preds = %4
  %34 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %35 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %27
  %37 = call i32 @spi_message_init(%struct.spi_message* %10)
  %38 = call i32 @spi_message_add_tail(%struct.spi_transfer* %13, %struct.spi_message* %10)
  %39 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %40 = call i32 @spi_sync(%struct.spi_device* %39, %struct.spi_message* %10)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %49 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %79

52:                                               ; preds = %36
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ASYNC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %58 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  store i32 0, i32* %5, align 4
  br label %79

60:                                               ; preds = %52
  %61 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %62 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %61, i32 0, i32 2
  %63 = call i32 @msecs_to_jiffies(i32 1000)
  %64 = call i32 @wait_for_completion_timeout(i32* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  %68 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %69 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ETIMEDOUT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %74

73:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %67
  %75 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %76 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %56, %43
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
