; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_port_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_port_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_connection = type { i32*, i64 }
%struct.device = type opaque

@typec_class = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_connection*, i32, i8*)* @typec_port_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @typec_port_match(%struct.device_connection* %0, i32 %1, i8* %2) #0 {
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
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @typec_class, align 4
  %15 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %16 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i8* @class_find_device_by_fwnode(i32 %14, i64 %17)
  store i8* %18, i8** %4, align 8
  br label %41

19:                                               ; preds = %3
  %20 = load i32, i32* @typec_class, align 4
  %21 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %22 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @class_find_device_by_name(i32 %20, i32 %27)
  %29 = bitcast i8* %28 to %struct.device*
  store %struct.device* %29, %struct.device** %8, align 8
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = icmp ne %struct.device* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = bitcast %struct.device* %33 to i8*
  br label %39

35:                                               ; preds = %19
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i8* @ERR_PTR(i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i8* [ %34, %32 ], [ %38, %35 ]
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %39, %13
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local i8* @class_find_device_by_fwnode(i32, i64) #1

declare dso_local i8* @class_find_device_by_name(i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
