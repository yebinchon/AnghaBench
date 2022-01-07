; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_cap_authenticate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_cap_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_cap = type { i32, %struct.gb_connection* }
%struct.gb_connection = type { i32 }
%struct.gb_cap_authenticate_request = type { i32*, i32*, i32 }
%struct.gb_cap_authenticate_response = type { i32*, i32*, i32 }
%struct.gb_operation = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.gb_cap_authenticate_response* }
%struct.TYPE_3__ = type { %struct.gb_cap_authenticate_request* }

@GB_CAP_TYPE_AUTHENTICATE = common dso_local global i32 0, align 4
@GB_OPERATION_FLAG_SHORT_RESPONSE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to authenticate (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_cap*, i32, i32*, i32*, i32*, i32*, i32*, i32*)* @cap_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_authenticate(%struct.gb_cap* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.gb_cap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.gb_connection*, align 8
  %19 = alloca %struct.gb_cap_authenticate_request*, align 8
  %20 = alloca %struct.gb_cap_authenticate_response*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.gb_operation*, align 8
  %23 = alloca i32, align 4
  store %struct.gb_cap* %0, %struct.gb_cap** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load %struct.gb_cap*, %struct.gb_cap** %10, align 8
  %25 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %24, i32 0, i32 1
  %26 = load %struct.gb_connection*, %struct.gb_connection** %25, align 8
  store %struct.gb_connection* %26, %struct.gb_connection** %18, align 8
  %27 = load %struct.gb_connection*, %struct.gb_connection** %18, align 8
  %28 = call i64 @gb_operation_get_payload_size_max(%struct.gb_connection* %27)
  store i64 %28, i64* %21, align 8
  %29 = load %struct.gb_connection*, %struct.gb_connection** %18, align 8
  %30 = load i32, i32* @GB_CAP_TYPE_AUTHENTICATE, align 4
  %31 = load i64, i64* %21, align 8
  %32 = load i32, i32* @GB_OPERATION_FLAG_SHORT_RESPONSE, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.gb_operation* @gb_operation_create_flags(%struct.gb_connection* %29, i32 %30, i32 24, i64 %31, i32 %32, i32 %33)
  store %struct.gb_operation* %34, %struct.gb_operation** %22, align 8
  %35 = load %struct.gb_operation*, %struct.gb_operation** %22, align 8
  %36 = icmp ne %struct.gb_operation* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %105

40:                                               ; preds = %8
  %41 = load %struct.gb_operation*, %struct.gb_operation** %22, align 8
  %42 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.gb_cap_authenticate_request*, %struct.gb_cap_authenticate_request** %44, align 8
  store %struct.gb_cap_authenticate_request* %45, %struct.gb_cap_authenticate_request** %19, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load %struct.gb_cap_authenticate_request*, %struct.gb_cap_authenticate_request** %19, align 8
  %49 = getelementptr inbounds %struct.gb_cap_authenticate_request, %struct.gb_cap_authenticate_request* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.gb_cap_authenticate_request*, %struct.gb_cap_authenticate_request** %19, align 8
  %51 = getelementptr inbounds %struct.gb_cap_authenticate_request, %struct.gb_cap_authenticate_request* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @memcpy(i32* %52, i32* %53, i32 8)
  %55 = load %struct.gb_cap_authenticate_request*, %struct.gb_cap_authenticate_request** %19, align 8
  %56 = getelementptr inbounds %struct.gb_cap_authenticate_request, %struct.gb_cap_authenticate_request* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @memcpy(i32* %57, i32* %58, i32 8)
  %60 = load %struct.gb_operation*, %struct.gb_operation** %22, align 8
  %61 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %60)
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %23, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %40
  %65 = load %struct.gb_cap*, %struct.gb_cap** %10, align 8
  %66 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %23, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %101

70:                                               ; preds = %40
  %71 = load %struct.gb_operation*, %struct.gb_operation** %22, align 8
  %72 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.gb_cap_authenticate_response*, %struct.gb_cap_authenticate_response** %74, align 8
  store %struct.gb_cap_authenticate_response* %75, %struct.gb_cap_authenticate_response** %20, align 8
  %76 = load %struct.gb_cap_authenticate_response*, %struct.gb_cap_authenticate_response** %20, align 8
  %77 = getelementptr inbounds %struct.gb_cap_authenticate_response, %struct.gb_cap_authenticate_response* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %14, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.gb_operation*, %struct.gb_operation** %22, align 8
  %81 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = sub i64 %85, 24
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** %16, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = load %struct.gb_cap_authenticate_response*, %struct.gb_cap_authenticate_response** %20, align 8
  %91 = getelementptr inbounds %struct.gb_cap_authenticate_response, %struct.gb_cap_authenticate_response* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @memcpy(i32* %89, i32* %92, i32 8)
  %94 = load i32*, i32** %17, align 8
  %95 = load %struct.gb_cap_authenticate_response*, %struct.gb_cap_authenticate_response** %20, align 8
  %96 = getelementptr inbounds %struct.gb_cap_authenticate_response, %struct.gb_cap_authenticate_response* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(i32* %94, i32* %97, i32 %99)
  br label %101

101:                                              ; preds = %70, %64
  %102 = load %struct.gb_operation*, %struct.gb_operation** %22, align 8
  %103 = call i32 @gb_operation_put(%struct.gb_operation* %102)
  %104 = load i32, i32* %23, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %37
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local i64 @gb_operation_get_payload_size_max(%struct.gb_connection*) #1

declare dso_local %struct.gb_operation* @gb_operation_create_flags(%struct.gb_connection*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
