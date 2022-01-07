; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_async_transfer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_async_transfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback_async_operation = type { %struct.gb_operation*, %struct.gb_loopback* }
%struct.gb_operation = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.gb_loopback_transfer_response* }
%struct.gb_loopback_transfer_response = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.gb_loopback_transfer_request* }
%struct.gb_loopback_transfer_request = type { i32, i32 }
%struct.gb_loopback = type { i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Loopback Data doesn't match operation id %d\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_loopback_async_operation*)* @gb_loopback_async_transfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_loopback_async_transfer_complete(%struct.gb_loopback_async_operation* %0) #0 {
  %2 = alloca %struct.gb_loopback_async_operation*, align 8
  %3 = alloca %struct.gb_loopback*, align 8
  %4 = alloca %struct.gb_operation*, align 8
  %5 = alloca %struct.gb_loopback_transfer_request*, align 8
  %6 = alloca %struct.gb_loopback_transfer_response*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gb_loopback_async_operation* %0, %struct.gb_loopback_async_operation** %2, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %2, align 8
  %10 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %9, i32 0, i32 1
  %11 = load %struct.gb_loopback*, %struct.gb_loopback** %10, align 8
  store %struct.gb_loopback* %11, %struct.gb_loopback** %3, align 8
  %12 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %2, align 8
  %13 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %12, i32 0, i32 0
  %14 = load %struct.gb_operation*, %struct.gb_operation** %13, align 8
  store %struct.gb_operation* %14, %struct.gb_operation** %4, align 8
  %15 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %16 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %18, align 8
  store %struct.gb_loopback_transfer_request* %19, %struct.gb_loopback_transfer_request** %5, align 8
  %20 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %21 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %23, align 8
  store %struct.gb_loopback_transfer_response* %24, %struct.gb_loopback_transfer_response** %6, align 8
  %25 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %5, align 8
  %26 = getelementptr inbounds %struct.gb_loopback_transfer_request, %struct.gb_loopback_transfer_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le32_to_cpu(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %5, align 8
  %30 = getelementptr inbounds %struct.gb_loopback_transfer_request, %struct.gb_loopback_transfer_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %6, align 8
  %33 = getelementptr inbounds %struct.gb_loopback_transfer_response, %struct.gb_loopback_transfer_response* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @memcmp(i32 %31, i32 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %1
  %39 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %40 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %46 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EREMOTEIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %66

51:                                               ; preds = %1
  %52 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %6, align 8
  %53 = getelementptr inbounds %struct.gb_loopback_transfer_response, %struct.gb_loopback_transfer_response* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @__le32_to_cpu(i32 %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %58 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %6, align 8
  %60 = getelementptr inbounds %struct.gb_loopback_transfer_response, %struct.gb_loopback_transfer_response* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @__le32_to_cpu(i32 %61)
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %65 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %51, %38
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @__le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
