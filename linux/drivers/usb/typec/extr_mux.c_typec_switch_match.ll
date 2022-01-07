; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_mux.c_typec_switch_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_mux.c_typec_switch_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_connection = type { i64*, i64, i64 }
%struct.device = type { i32 }

@typec_mux_class = common dso_local global i32 0, align 4
@switch_fwnode_match = common dso_local global i32 0, align 4
@name_match = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_connection*, i32, i8*)* @typec_switch_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @typec_switch_match(%struct.device_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.device_connection* %0, %struct.device_connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %10 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %15 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %20 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %23 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @fwnode_property_present(i64 %21, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i8* null, i8** %4, align 8
  br label %56

28:                                               ; preds = %18, %13
  %29 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %30 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @switch_fwnode_match, align 4
  %33 = call %struct.device* @class_find_device(i32* @typec_mux_class, i32* null, i64 %31, i32 %32)
  store %struct.device* %33, %struct.device** %8, align 8
  br label %44

34:                                               ; preds = %3
  %35 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %36 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @name_match, align 4
  %43 = call %struct.device* @class_find_device(i32* @typec_mux_class, i32* null, i64 %41, i32 %42)
  store %struct.device* %43, %struct.device** %8, align 8
  br label %44

44:                                               ; preds = %34, %28
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = icmp ne %struct.device* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.device*, %struct.device** %8, align 8
  %49 = call i8* @to_typec_switch(%struct.device* %48)
  br label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @EPROBE_DEFER, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i8* @ERR_PTR(i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i8* [ %49, %47 ], [ %53, %50 ]
  store i8* %55, i8** %4, align 8
  br label %56

56:                                               ; preds = %54, %27
  %57 = load i8*, i8** %4, align 8
  ret i8* %57
}

declare dso_local i32 @fwnode_property_present(i64, i64) #1

declare dso_local %struct.device* @class_find_device(i32*, i32*, i64, i32) #1

declare dso_local i8* @to_typec_switch(%struct.device*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
