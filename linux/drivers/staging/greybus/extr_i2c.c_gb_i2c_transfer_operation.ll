; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_i2c.c_gb_i2c_transfer_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_i2c.c_gb_i2c_transfer_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_i2c_device = type { %struct.TYPE_5__*, %struct.gb_connection* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_connection = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.gb_operation = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.gb_i2c_transfer_response* }
%struct.gb_i2c_transfer_response = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"transfer operation failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_i2c_device*, %struct.i2c_msg*, i32)* @gb_i2c_transfer_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_i2c_transfer_operation(%struct.gb_i2c_device* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_i2c_device*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gb_connection*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.gb_operation*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gb_i2c_transfer_response*, align 8
  store %struct.gb_i2c_device* %0, %struct.gb_i2c_device** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %5, align 8
  %14 = getelementptr inbounds %struct.gb_i2c_device, %struct.gb_i2c_device* %13, i32 0, i32 1
  %15 = load %struct.gb_connection*, %struct.gb_connection** %14, align 8
  store %struct.gb_connection* %15, %struct.gb_connection** %8, align 8
  %16 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %5, align 8
  %17 = getelementptr inbounds %struct.gb_i2c_device, %struct.gb_i2c_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %9, align 8
  %20 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.gb_operation* @gb_i2c_operation_create(%struct.gb_connection* %20, %struct.i2c_msg* %21, i32 %22)
  store %struct.gb_operation* %23, %struct.gb_operation** %10, align 8
  %24 = load %struct.gb_operation*, %struct.gb_operation** %10, align 8
  %25 = icmp ne %struct.gb_operation* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %71

29:                                               ; preds = %3
  %30 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %5, align 8
  %31 = getelementptr inbounds %struct.gb_i2c_device, %struct.gb_i2c_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @gbphy_runtime_get_sync(%struct.TYPE_5__* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %67

37:                                               ; preds = %29
  %38 = load %struct.gb_operation*, %struct.gb_operation** %10, align 8
  %39 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load %struct.gb_operation*, %struct.gb_operation** %10, align 8
  %44 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.gb_i2c_transfer_response*, %struct.gb_i2c_transfer_response** %46, align 8
  store %struct.gb_i2c_transfer_response* %47, %struct.gb_i2c_transfer_response** %12, align 8
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.gb_i2c_transfer_response*, %struct.gb_i2c_transfer_response** %12, align 8
  %51 = call i32 @gb_i2c_decode_response(%struct.i2c_msg* %48, i32 %49, %struct.gb_i2c_transfer_response* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %11, align 4
  br label %62

53:                                               ; preds = %37
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @gb_i2c_expected_transfer_error(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.device*, %struct.device** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %5, align 8
  %64 = getelementptr inbounds %struct.gb_i2c_device, %struct.gb_i2c_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @gbphy_runtime_put_autosuspend(%struct.TYPE_5__* %65)
  br label %67

67:                                               ; preds = %62, %36
  %68 = load %struct.gb_operation*, %struct.gb_operation** %10, align 8
  %69 = call i32 @gb_operation_put(%struct.gb_operation* %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %26
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.gb_operation* @gb_i2c_operation_create(%struct.gb_connection*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @gbphy_runtime_get_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @gb_i2c_decode_response(%struct.i2c_msg*, i32, %struct.gb_i2c_transfer_response*) #1

declare dso_local i32 @gb_i2c_expected_transfer_error(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.TYPE_5__*) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
