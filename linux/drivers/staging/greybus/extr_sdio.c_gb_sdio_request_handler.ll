; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i64, %struct.gb_message*, i32 }
%struct.gb_message = type { i32, %struct.gb_sdio_event_request* }
%struct.gb_sdio_event_request = type { i64 }
%struct.gb_sdio_host = type { i64, i32 }

@GB_SDIO_TYPE_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"unsupported unsolicited event: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"wrong event size received (%zu < %zu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_sdio_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_sdio_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_sdio_host*, align 8
  %5 = alloca %struct.gb_message*, align 8
  %6 = alloca %struct.gb_sdio_event_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %10 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %11 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.gb_sdio_host* @gb_connection_get_data(i32 %12)
  store %struct.gb_sdio_host* %13, %struct.gb_sdio_host** %4, align 8
  %14 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %15 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @GB_SDIO_TYPE_EVENT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %22 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mmc_dev(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %71

30:                                               ; preds = %1
  %31 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %32 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %31, i32 0, i32 1
  %33 = load %struct.gb_message*, %struct.gb_message** %32, align 8
  store %struct.gb_message* %33, %struct.gb_message** %5, align 8
  %34 = load %struct.gb_message*, %struct.gb_message** %5, align 8
  %35 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 8
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %41 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mmc_dev(i32 %42)
  %44 = load %struct.gb_message*, %struct.gb_message** %5, align 8
  %45 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 8)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %71

50:                                               ; preds = %30
  %51 = load %struct.gb_message*, %struct.gb_message** %5, align 8
  %52 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %51, i32 0, i32 1
  %53 = load %struct.gb_sdio_event_request*, %struct.gb_sdio_event_request** %52, align 8
  store %struct.gb_sdio_event_request* %53, %struct.gb_sdio_event_request** %6, align 8
  %54 = load %struct.gb_sdio_event_request*, %struct.gb_sdio_event_request** %6, align 8
  %55 = getelementptr inbounds %struct.gb_sdio_event_request, %struct.gb_sdio_event_request* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %9, align 8
  %57 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %58 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @_gb_queue_event(%struct.gb_sdio_host* %62, i64 %63)
  br label %69

65:                                               ; preds = %50
  %66 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @_gb_sdio_process_events(%struct.gb_sdio_host* %66, i64 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %39, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.gb_sdio_host* @gb_connection_get_data(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @_gb_queue_event(%struct.gb_sdio_host*, i64) #1

declare dso_local i32 @_gb_sdio_process_events(%struct.gb_sdio_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
