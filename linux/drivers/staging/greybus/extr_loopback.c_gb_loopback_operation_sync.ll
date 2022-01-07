; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_operation_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_operation_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gb_operation = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_5__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"synchronous operation failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"response size %zu expected %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_loopback*, i32, i8*, i32, i8*, i32)* @gb_loopback_operation_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_loopback_operation_sync(%struct.gb_loopback* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gb_loopback*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gb_operation*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.gb_loopback* %0, %struct.gb_loopback** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = call i32 (...) @ktime_get()
  store i32 %18, i32* %15, align 4
  %19 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %20 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.gb_operation* @gb_operation_create(%struct.TYPE_8__* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store %struct.gb_operation* %26, %struct.gb_operation** %14, align 8
  %27 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %28 = icmp ne %struct.gb_operation* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %103

32:                                               ; preds = %6
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %37 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @memcpy(i8* %40, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %32
  %45 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %46 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %51 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %17, align 4
  %57 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %99

58:                                               ; preds = %44
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %61 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load i8*, i8** %12, align 8
  %68 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %69 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @memcpy(i8* %67, i8* %72, i32 %73)
  br label %91

75:                                               ; preds = %58
  %76 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %77 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %83 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %17, align 4
  br label %99

91:                                               ; preds = %66
  br label %92

92:                                               ; preds = %91
  %93 = call i32 (...) @ktime_get()
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @gb_loopback_calc_latency(i32 %94, i32 %95)
  %97 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %98 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %92, %75, %49
  %100 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %101 = call i32 @gb_operation_put(%struct.gb_operation* %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %99, %29
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local %struct.gb_operation* @gb_operation_create(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @gb_loopback_calc_latency(i32, i32) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
