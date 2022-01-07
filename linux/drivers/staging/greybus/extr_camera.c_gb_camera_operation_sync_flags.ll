; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_operation_sync_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_operation_sync_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.gb_operation = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_4__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%s: synchronous operation of type 0x%02x failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_connection*, i32, i32, i8*, i64, i8*, i64*)* @gb_camera_operation_sync_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_operation_sync_flags(%struct.gb_connection* %0, i32 %1, i32 %2, i8* %3, i64 %4, i8* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gb_connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.gb_operation*, align 8
  %17 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64* %6, i64** %15, align 8
  %18 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i64, i64* %13, align 8
  %21 = load i64*, i64** %15, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.gb_operation* @gb_operation_create_flags(%struct.gb_connection* %18, i32 %19, i64 %20, i64 %22, i32 %23, i32 %24)
  store %struct.gb_operation* %25, %struct.gb_operation** %16, align 8
  %26 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %27 = icmp ne %struct.gb_operation* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %90

31:                                               ; preds = %7
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %36 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @memcpy(i8* %39, i8* %40, i64 %41)
  br label %43

43:                                               ; preds = %34, %31
  %44 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %45 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %50 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %54 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  br label %86

59:                                               ; preds = %43
  %60 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %61 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %15, align 8
  store i64 %64, i64* %65, align 8
  %66 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %67 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %59
  %73 = load i8*, i8** %14, align 8
  %74 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %75 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %80 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @memcpy(i8* %73, i8* %78, i64 %83)
  br label %85

85:                                               ; preds = %72, %59
  br label %86

86:                                               ; preds = %85, %48
  %87 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %88 = call i32 @gb_operation_put(%struct.gb_operation* %87)
  %89 = load i32, i32* %17, align 4
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86, %28
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local %struct.gb_operation* @gb_operation_create_flags(%struct.gb_connection*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
