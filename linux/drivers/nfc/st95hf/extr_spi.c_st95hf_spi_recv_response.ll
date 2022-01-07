; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_spi.c_st95hf_spi_recv_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_spi.c_st95hf_spi_recv_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st95hf_spi_context = type { i32, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i8*, i32, i8*, i32 }
%struct.spi_message = type { i32 }

@ST95HF_COMMAND_RECEIVE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [39 x i8] c"spi_recv_resp, data length error = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"spi_recv_resp, data read error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st95hf_spi_recv_response(%struct.st95hf_spi_context* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st95hf_spi_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_transfer, align 8
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.spi_transfer], align 16
  %12 = alloca i32, align 4
  store %struct.st95hf_spi_context* %0, %struct.st95hf_spi_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %4, align 8
  %14 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %13, i32 0, i32 1
  %15 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  store %struct.spi_device* %15, %struct.spi_device** %9, align 8
  %16 = load i8, i8* @ST95HF_COMMAND_RECEIVE, align 1
  store i8 %16, i8* %10, align 1
  %17 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  store i8* %10, i8** %18, align 16
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 2
  store i8* null, i8** %20, align 16
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 3
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i64 1
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  store i8* null, i8** %23, align 16
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  store i32 2, i32* %24, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %25, align 16
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 3
  store i32 1, i32* %27, align 8
  store i32 0, i32* %12, align 4
  %28 = call i32 @memset(%struct.spi_transfer* %7, i32 0, i32 32)
  %29 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %4, align 8
  %30 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = call i32 @spi_message_init(%struct.spi_message* %8)
  %33 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %34 = call i32 @spi_message_add_tail(%struct.spi_transfer* %33, %struct.spi_message* %8)
  %35 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %36 = call i32 @spi_message_add_tail(%struct.spi_transfer* %35, %struct.spi_message* %8)
  %37 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %38 = call i32 @spi_sync(%struct.spi_device* %37, %struct.spi_message* %8)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %2
  %42 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %4, align 8
  %47 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %3, align 4
  br label %103

50:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 96
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 96
  %63 = ashr i32 %62, 5
  %64 = shl i32 %63, 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %64, %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %79

72:                                               ; preds = %50
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %72, %57
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 2
  store i8* %81, i8** %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 2
  %85 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 1
  store i32 %84, i32* %85, align 8
  %86 = call i32 @spi_message_init(%struct.spi_message* %8)
  %87 = call i32 @spi_message_add_tail(%struct.spi_transfer* %7, %struct.spi_message* %8)
  %88 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %89 = call i32 @spi_sync(%struct.spi_device* %88, %struct.spi_message* %8)
  store i32 %89, i32* %12, align 4
  %90 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %4, align 8
  %91 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %79
  %96 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 0
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %3, align 4
  br label %103

101:                                              ; preds = %79
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %95, %41
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
