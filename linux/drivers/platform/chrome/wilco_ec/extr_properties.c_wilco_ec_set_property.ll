; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_properties.c_wilco_ec_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_properties.c_wilco_ec_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilco_ec_device = type { i32 }
%struct.wilco_ec_property_msg = type { i32, i32, i32 }
%struct.ec_property_request = type { i32, i32, i32, i32 }
%struct.ec_property_response = type { i32 }

@EC_OP_SET = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilco_ec_set_property(%struct.wilco_ec_device* %0, %struct.wilco_ec_property_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilco_ec_device*, align 8
  %5 = alloca %struct.wilco_ec_property_msg*, align 8
  %6 = alloca %struct.ec_property_request, align 4
  %7 = alloca %struct.ec_property_response, align 4
  %8 = alloca i32, align 4
  store %struct.wilco_ec_device* %0, %struct.wilco_ec_device** %4, align 8
  store %struct.wilco_ec_property_msg* %1, %struct.wilco_ec_property_msg** %5, align 8
  %9 = call i32 @memset(%struct.ec_property_request* %6, i32 0, i32 16)
  %10 = load i32, i32* @EC_OP_SET, align 4
  %11 = getelementptr inbounds %struct.ec_property_request, %struct.ec_property_request* %6, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load %struct.wilco_ec_property_msg*, %struct.wilco_ec_property_msg** %5, align 8
  %13 = getelementptr inbounds %struct.wilco_ec_property_msg, %struct.wilco_ec_property_msg* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ec_property_request, %struct.ec_property_request* %6, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @put_unaligned_le32(i32 %14, i32 %16)
  %18 = load %struct.wilco_ec_property_msg*, %struct.wilco_ec_property_msg** %5, align 8
  %19 = getelementptr inbounds %struct.wilco_ec_property_msg, %struct.wilco_ec_property_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ec_property_request, %struct.ec_property_request* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ec_property_request, %struct.ec_property_request* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wilco_ec_property_msg*, %struct.wilco_ec_property_msg** %5, align 8
  %25 = getelementptr inbounds %struct.wilco_ec_property_msg, %struct.wilco_ec_property_msg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wilco_ec_property_msg*, %struct.wilco_ec_property_msg** %5, align 8
  %28 = getelementptr inbounds %struct.wilco_ec_property_msg, %struct.wilco_ec_property_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %23, i32 %26, i32 %29)
  %31 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %4, align 8
  %32 = call i32 @send_property_msg(%struct.wilco_ec_device* %31, %struct.ec_property_request* %6, %struct.ec_property_response* %7)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %48

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.ec_property_response, %struct.ec_property_response* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wilco_ec_property_msg*, %struct.wilco_ec_property_msg** %5, align 8
  %41 = getelementptr inbounds %struct.wilco_ec_property_msg, %struct.wilco_ec_property_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EBADMSG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %35
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.ec_property_request*, i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @send_property_msg(%struct.wilco_ec_device*, %struct.ec_property_request*, %struct.ec_property_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
