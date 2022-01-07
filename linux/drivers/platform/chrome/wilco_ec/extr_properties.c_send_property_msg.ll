; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_properties.c_send_property_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_properties.c_send_property_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilco_ec_device = type { i32 }
%struct.ec_property_request = type { i64, i32 }
%struct.ec_property_response = type { i64, i32 }
%struct.wilco_ec_message = type { i32, i32, %struct.ec_property_response*, %struct.ec_property_request*, i32 }

@WILCO_EC_MSG_PROPERTY = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilco_ec_device*, %struct.ec_property_request*, %struct.ec_property_response*)* @send_property_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_property_msg(%struct.wilco_ec_device* %0, %struct.ec_property_request* %1, %struct.ec_property_response* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilco_ec_device*, align 8
  %6 = alloca %struct.ec_property_request*, align 8
  %7 = alloca %struct.ec_property_response*, align 8
  %8 = alloca %struct.wilco_ec_message, align 8
  %9 = alloca i32, align 4
  store %struct.wilco_ec_device* %0, %struct.wilco_ec_device** %5, align 8
  store %struct.ec_property_request* %1, %struct.ec_property_request** %6, align 8
  store %struct.ec_property_response* %2, %struct.ec_property_response** %7, align 8
  %10 = call i32 @memset(%struct.wilco_ec_message* %8, i32 0, i32 32)
  %11 = load i32, i32* @WILCO_EC_MSG_PROPERTY, align 4
  %12 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %8, i32 0, i32 4
  store i32 %11, i32* %12, align 8
  %13 = load %struct.ec_property_request*, %struct.ec_property_request** %6, align 8
  %14 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %8, i32 0, i32 3
  store %struct.ec_property_request* %13, %struct.ec_property_request** %14, align 8
  %15 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %8, i32 0, i32 0
  store i32 16, i32* %15, align 8
  %16 = load %struct.ec_property_response*, %struct.ec_property_response** %7, align 8
  %17 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %8, i32 0, i32 2
  store %struct.ec_property_response* %16, %struct.ec_property_response** %17, align 8
  %18 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %8, i32 0, i32 1
  store i32 16, i32* %18, align 4
  %19 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %20 = call i32 @wilco_ec_mailbox(%struct.wilco_ec_device* %19, %struct.wilco_ec_message* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.ec_property_response*, %struct.ec_property_response** %7, align 8
  %27 = getelementptr inbounds %struct.ec_property_response, %struct.ec_property_response* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ec_property_request*, %struct.ec_property_request** %6, align 8
  %30 = getelementptr inbounds %struct.ec_property_request, %struct.ec_property_request* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EBADMSG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %25
  %37 = load %struct.ec_property_request*, %struct.ec_property_request** %6, align 8
  %38 = getelementptr inbounds %struct.ec_property_request, %struct.ec_property_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ec_property_response*, %struct.ec_property_response** %7, align 8
  %41 = getelementptr inbounds %struct.ec_property_response, %struct.ec_property_response* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @memcmp(i32 %39, i32 %42, i32 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EBADMSG, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45, %33, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.wilco_ec_message*, i32, i32) #1

declare dso_local i32 @wilco_ec_mailbox(%struct.wilco_ec_device*, %struct.wilco_ec_message*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
