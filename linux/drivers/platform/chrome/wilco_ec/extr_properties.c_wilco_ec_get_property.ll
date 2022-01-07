; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_properties.c_wilco_ec_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_properties.c_wilco_ec_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilco_ec_device = type { i32 }
%struct.wilco_ec_property_msg = type { i32, i32, i32 }
%struct.ec_property_request = type { i32, i32 }
%struct.ec_property_response = type { i32, i32 }

@EC_OP_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilco_ec_get_property(%struct.wilco_ec_device* %0, %struct.wilco_ec_property_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilco_ec_device*, align 8
  %5 = alloca %struct.wilco_ec_property_msg*, align 8
  %6 = alloca %struct.ec_property_request, align 4
  %7 = alloca %struct.ec_property_response, align 4
  %8 = alloca i32, align 4
  store %struct.wilco_ec_device* %0, %struct.wilco_ec_device** %4, align 8
  store %struct.wilco_ec_property_msg* %1, %struct.wilco_ec_property_msg** %5, align 8
  %9 = call i32 @memset(%struct.ec_property_request* %6, i32 0, i32 8)
  %10 = load i32, i32* @EC_OP_GET, align 4
  %11 = getelementptr inbounds %struct.ec_property_request, %struct.ec_property_request* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.wilco_ec_property_msg*, %struct.wilco_ec_property_msg** %5, align 8
  %13 = getelementptr inbounds %struct.wilco_ec_property_msg, %struct.wilco_ec_property_msg* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ec_property_request, %struct.ec_property_request* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @put_unaligned_le32(i32 %14, i32 %16)
  %18 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %4, align 8
  %19 = call i32 @send_property_msg(%struct.wilco_ec_device* %18, %struct.ec_property_request* %6, %struct.ec_property_response* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.ec_property_response, %struct.ec_property_response* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wilco_ec_property_msg*, %struct.wilco_ec_property_msg** %5, align 8
  %28 = getelementptr inbounds %struct.wilco_ec_property_msg, %struct.wilco_ec_property_msg* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.wilco_ec_property_msg*, %struct.wilco_ec_property_msg** %5, align 8
  %30 = getelementptr inbounds %struct.wilco_ec_property_msg, %struct.wilco_ec_property_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ec_property_response, %struct.ec_property_response* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ec_property_response, %struct.ec_property_response* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32 %31, i32 %33, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %22
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.ec_property_request*, i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @send_property_msg(%struct.wilco_ec_device*, %struct.ec_property_request*, %struct.ec_property_response*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
