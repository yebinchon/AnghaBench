; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_cap_get_ims_certificate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_cap_get_ims_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_cap = type { i32, %struct.gb_connection* }
%struct.gb_connection = type { i32 }
%struct.gb_cap_get_ims_certificate_request = type { i8*, i8* }
%struct.gb_cap_get_ims_certificate_response = type { i32, i32 }
%struct.gb_operation = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.gb_cap_get_ims_certificate_response* }
%struct.TYPE_3__ = type { %struct.gb_cap_get_ims_certificate_request* }

@GB_CAP_TYPE_GET_IMS_CERTIFICATE = common dso_local global i32 0, align 4
@GB_OPERATION_FLAG_SHORT_RESPONSE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to get certificate (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_cap*, i64, i64, i32*, i64*, i32*)* @cap_get_ims_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_get_ims_certificate(%struct.gb_cap* %0, i64 %1, i64 %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gb_cap*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.gb_connection*, align 8
  %15 = alloca %struct.gb_cap_get_ims_certificate_request*, align 8
  %16 = alloca %struct.gb_cap_get_ims_certificate_response*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.gb_operation*, align 8
  %19 = alloca i32, align 4
  store %struct.gb_cap* %0, %struct.gb_cap** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.gb_cap*, %struct.gb_cap** %8, align 8
  %21 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %20, i32 0, i32 1
  %22 = load %struct.gb_connection*, %struct.gb_connection** %21, align 8
  store %struct.gb_connection* %22, %struct.gb_connection** %14, align 8
  %23 = load %struct.gb_connection*, %struct.gb_connection** %14, align 8
  %24 = call i64 @gb_operation_get_payload_size_max(%struct.gb_connection* %23)
  store i64 %24, i64* %17, align 8
  %25 = load %struct.gb_connection*, %struct.gb_connection** %14, align 8
  %26 = load i32, i32* @GB_CAP_TYPE_GET_IMS_CERTIFICATE, align 4
  %27 = load i64, i64* %17, align 8
  %28 = load i32, i32* @GB_OPERATION_FLAG_SHORT_RESPONSE, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.gb_operation* @gb_operation_create_flags(%struct.gb_connection* %25, i32 %26, i32 16, i64 %27, i32 %28, i32 %29)
  store %struct.gb_operation* %30, %struct.gb_operation** %18, align 8
  %31 = load %struct.gb_operation*, %struct.gb_operation** %18, align 8
  %32 = icmp ne %struct.gb_operation* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %6
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %88

36:                                               ; preds = %6
  %37 = load %struct.gb_operation*, %struct.gb_operation** %18, align 8
  %38 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.gb_cap_get_ims_certificate_request*, %struct.gb_cap_get_ims_certificate_request** %40, align 8
  store %struct.gb_cap_get_ims_certificate_request* %41, %struct.gb_cap_get_ims_certificate_request** %15, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i8* @cpu_to_le32(i64 %42)
  %44 = load %struct.gb_cap_get_ims_certificate_request*, %struct.gb_cap_get_ims_certificate_request** %15, align 8
  %45 = getelementptr inbounds %struct.gb_cap_get_ims_certificate_request, %struct.gb_cap_get_ims_certificate_request* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i8* @cpu_to_le32(i64 %46)
  %48 = load %struct.gb_cap_get_ims_certificate_request*, %struct.gb_cap_get_ims_certificate_request** %15, align 8
  %49 = getelementptr inbounds %struct.gb_cap_get_ims_certificate_request, %struct.gb_cap_get_ims_certificate_request* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.gb_operation*, %struct.gb_operation** %18, align 8
  %51 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %50)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %36
  %55 = load %struct.gb_cap*, %struct.gb_cap** %8, align 8
  %56 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %84

60:                                               ; preds = %36
  %61 = load %struct.gb_operation*, %struct.gb_operation** %18, align 8
  %62 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.gb_cap_get_ims_certificate_response*, %struct.gb_cap_get_ims_certificate_response** %64, align 8
  store %struct.gb_cap_get_ims_certificate_response* %65, %struct.gb_cap_get_ims_certificate_response** %16, align 8
  %66 = load %struct.gb_cap_get_ims_certificate_response*, %struct.gb_cap_get_ims_certificate_response** %16, align 8
  %67 = getelementptr inbounds %struct.gb_cap_get_ims_certificate_response, %struct.gb_cap_get_ims_certificate_response* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.gb_operation*, %struct.gb_operation** %18, align 8
  %71 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, 8
  %76 = load i64*, i64** %12, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.gb_cap_get_ims_certificate_response*, %struct.gb_cap_get_ims_certificate_response** %16, align 8
  %79 = getelementptr inbounds %struct.gb_cap_get_ims_certificate_response, %struct.gb_cap_get_ims_certificate_response* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64*, i64** %12, align 8
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @memcpy(i32* %77, i32 %80, i64 %82)
  br label %84

84:                                               ; preds = %60, %54
  %85 = load %struct.gb_operation*, %struct.gb_operation** %18, align 8
  %86 = call i32 @gb_operation_put(%struct.gb_operation* %85)
  %87 = load i32, i32* %19, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %33
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i64 @gb_operation_get_payload_size_max(%struct.gb_connection*) #1

declare dso_local %struct.gb_operation* @gb_operation_create_flags(%struct.gb_connection*, i32, i32, i64, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
