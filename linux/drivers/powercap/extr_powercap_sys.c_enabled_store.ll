; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_enabled_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_enabled_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.device_attribute = type { i32 }
%struct.powercap_zone = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.powercap_zone*, i32)* }
%struct.powercap_control_type = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.powercap_control_type*, i32)* }

@EINVAL = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @enabled_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enabled_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.powercap_zone*, align 8
  %12 = alloca %struct.powercap_control_type*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i64 @strtobool(i8* %13, i32* %10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %78

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call %struct.powercap_zone* @to_powercap_zone(%struct.device* %25)
  store %struct.powercap_zone* %26, %struct.powercap_zone** %11, align 8
  %27 = load %struct.powercap_zone*, %struct.powercap_zone** %11, align 8
  %28 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.powercap_zone*, i32)*, i32 (%struct.powercap_zone*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.powercap_zone*, i32)* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %24
  %34 = load %struct.powercap_zone*, %struct.powercap_zone** %11, align 8
  %35 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.powercap_zone*, i32)*, i32 (%struct.powercap_zone*, i32)** %37, align 8
  %39 = load %struct.powercap_zone*, %struct.powercap_zone** %11, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 %38(%struct.powercap_zone* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %5, align 8
  br label %78

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %24
  br label %75

47:                                               ; preds = %19
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call %struct.powercap_control_type* @to_powercap_control_type(%struct.device* %48)
  store %struct.powercap_control_type* %49, %struct.powercap_control_type** %12, align 8
  %50 = load %struct.powercap_control_type*, %struct.powercap_control_type** %12, align 8
  %51 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %47
  %55 = load %struct.powercap_control_type*, %struct.powercap_control_type** %12, align 8
  %56 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.powercap_control_type*, i32)*, i32 (%struct.powercap_control_type*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.powercap_control_type*, i32)* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.powercap_control_type*, %struct.powercap_control_type** %12, align 8
  %63 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (%struct.powercap_control_type*, i32)*, i32 (%struct.powercap_control_type*, i32)** %65, align 8
  %67 = load %struct.powercap_control_type*, %struct.powercap_control_type** %12, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 %66(%struct.powercap_control_type* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %61
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %5, align 8
  br label %78

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %54, %47
  br label %75

75:                                               ; preds = %74, %46
  %76 = load i64, i64* @ENOSYS, align 8
  %77 = sub i64 0, %76
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %75, %71, %43, %16
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local i64 @strtobool(i8*, i32*) #1

declare dso_local %struct.powercap_zone* @to_powercap_zone(%struct.device*) #1

declare dso_local %struct.powercap_control_type* @to_powercap_control_type(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
