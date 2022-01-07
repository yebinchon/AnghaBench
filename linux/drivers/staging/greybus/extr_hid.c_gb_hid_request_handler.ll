; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i64, %struct.TYPE_3__*, %struct.gb_connection* }
%struct.TYPE_3__ = type { i32, %struct.gb_hid_input_report_request* }
%struct.gb_hid_input_report_request = type { i32 }
%struct.gb_connection = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.gb_hid = type { i32, i32 }

@GB_HID_TYPE_IRQ_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"unsupported unsolicited request\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GB_HID_STARTED = common dso_local global i32 0, align 4
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_hid_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_hid_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_hid*, align 8
  %6 = alloca %struct.gb_hid_input_report_request*, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %7 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %8 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %7, i32 0, i32 2
  %9 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  store %struct.gb_connection* %9, %struct.gb_connection** %4, align 8
  %10 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %11 = call %struct.gb_hid* @gb_connection_get_data(%struct.gb_connection* %10)
  store %struct.gb_hid* %11, %struct.gb_hid** %5, align 8
  %12 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %13 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.gb_hid_input_report_request*, %struct.gb_hid_input_report_request** %15, align 8
  store %struct.gb_hid_input_report_request* %16, %struct.gb_hid_input_report_request** %6, align 8
  %17 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %18 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @GB_HID_TYPE_IRQ_EVENT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %24 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %51

30:                                               ; preds = %1
  %31 = load i32, i32* @GB_HID_STARTED, align 4
  %32 = load %struct.gb_hid*, %struct.gb_hid** %5, align 8
  %33 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.gb_hid*, %struct.gb_hid** %5, align 8
  %38 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HID_INPUT_REPORT, align 4
  %41 = load %struct.gb_hid_input_report_request*, %struct.gb_hid_input_report_request** %6, align 8
  %42 = getelementptr inbounds %struct.gb_hid_input_report_request, %struct.gb_hid_input_report_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %45 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @hid_input_report(i32 %39, i32 %40, i32 %43, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %36, %30
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.gb_hid* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hid_input_report(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
