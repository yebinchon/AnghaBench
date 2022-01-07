; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_get_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_get_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@EC_MKBP_EVENT_SENSOR_FIFO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_get_next_event(%struct.cros_ec_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %10 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %15 = call i32 @get_keyboard_state_event(%struct.cros_ec_device* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %13
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %2
  %28 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %29 = call i32 @get_next_event(%struct.cros_ec_device* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %27
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %39 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %43 = call i32 @cros_ec_get_host_event(%struct.cros_ec_device* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @EC_MKBP_EVENT_SENSOR_FIFO, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32*, i32** %5, align 8
  store i32 0, i32* %48, align 4
  br label %64

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %55 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %5, align 8
  store i32 0, i32* %60, align 4
  br label %63

61:                                               ; preds = %52, %49
  %62 = load i32*, i32** %5, align 8
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %64

64:                                               ; preds = %63, %47
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %32, %25, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @get_keyboard_state_event(%struct.cros_ec_device*) #1

declare dso_local i32 @get_next_event(%struct.cros_ec_device*) #1

declare dso_local i32 @cros_ec_get_host_event(%struct.cros_ec_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
