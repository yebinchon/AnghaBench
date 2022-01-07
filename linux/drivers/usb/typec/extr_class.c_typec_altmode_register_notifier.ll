; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_register_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.device = type { i32 }
%struct.notifier_block = type { i32 }
%struct.typec_device_id = type { i32, i32 }
%struct.altmode = type { %struct.typec_altmode, i32 }

@typec_port_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@altmode_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_altmode* @typec_altmode_register_notifier(%struct.device* %0, i32 %1, i32 %2, %struct.notifier_block* %3) #0 {
  %5 = alloca %struct.typec_altmode*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.notifier_block*, align 8
  %10 = alloca %struct.typec_device_id, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.altmode*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.notifier_block* %3, %struct.notifier_block** %9, align 8
  %15 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %10, i32 0, i32 0
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %10, i32 0, i32 1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i32, i32* @typec_port_match, align 4
  %21 = call %struct.device* @device_connection_find_match(%struct.device* %19, i32* null, i32* null, i32 %20)
  store %struct.device* %21, %struct.device** %12, align 8
  %22 = load %struct.device*, %struct.device** %12, align 8
  %23 = call i64 @IS_ERR_OR_NULL(%struct.device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %12, align 8
  %27 = icmp ne %struct.device* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.device*, %struct.device** %12, align 8
  %30 = call %struct.typec_altmode* @ERR_CAST(%struct.device* %29)
  br label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.typec_altmode* @ERR_PTR(i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi %struct.typec_altmode* [ %30, %28 ], [ %34, %31 ]
  store %struct.typec_altmode* %36, %struct.typec_altmode** %5, align 8
  br label %67

37:                                               ; preds = %4
  %38 = load %struct.device*, %struct.device** %12, align 8
  %39 = load i32, i32* @altmode_match, align 4
  %40 = call %struct.device* @device_find_child(%struct.device* %38, %struct.typec_device_id* %10, i32 %39)
  store %struct.device* %40, %struct.device** %11, align 8
  %41 = load %struct.device*, %struct.device** %12, align 8
  %42 = call i32 @put_device(%struct.device* %41)
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = icmp ne %struct.device* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.typec_altmode* @ERR_PTR(i32 %47)
  store %struct.typec_altmode* %48, %struct.typec_altmode** %5, align 8
  br label %67

49:                                               ; preds = %37
  %50 = load %struct.device*, %struct.device** %11, align 8
  %51 = call i32 @to_typec_altmode(%struct.device* %50)
  %52 = call %struct.altmode* @to_altmode(i32 %51)
  store %struct.altmode* %52, %struct.altmode** %13, align 8
  %53 = load %struct.altmode*, %struct.altmode** %13, align 8
  %54 = getelementptr inbounds %struct.altmode, %struct.altmode* %53, i32 0, i32 1
  %55 = load %struct.notifier_block*, %struct.notifier_block** %9, align 8
  %56 = call i32 @blocking_notifier_chain_register(i32* %54, %struct.notifier_block* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %11, align 8
  %61 = call i32 @put_device(%struct.device* %60)
  %62 = load i32, i32* %14, align 4
  %63 = call %struct.typec_altmode* @ERR_PTR(i32 %62)
  store %struct.typec_altmode* %63, %struct.typec_altmode** %5, align 8
  br label %67

64:                                               ; preds = %49
  %65 = load %struct.altmode*, %struct.altmode** %13, align 8
  %66 = getelementptr inbounds %struct.altmode, %struct.altmode* %65, i32 0, i32 0
  store %struct.typec_altmode* %66, %struct.typec_altmode** %5, align 8
  br label %67

67:                                               ; preds = %64, %59, %45, %35
  %68 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  ret %struct.typec_altmode* %68
}

declare dso_local %struct.device* @device_connection_find_match(%struct.device*, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.device*) #1

declare dso_local %struct.typec_altmode* @ERR_CAST(%struct.device*) #1

declare dso_local %struct.typec_altmode* @ERR_PTR(i32) #1

declare dso_local %struct.device* @device_find_child(%struct.device*, %struct.typec_device_id*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.altmode* @to_altmode(i32) #1

declare dso_local i32 @to_typec_altmode(%struct.device*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
