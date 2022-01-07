; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_check_maple_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_check_maple_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.maple_device_specify = type { i64, i64 }
%struct.maple_device = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @check_maple_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_maple_device(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.maple_device_specify*, align 8
  %7 = alloca %struct.maple_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.maple_device_specify*
  store %struct.maple_device_specify* %9, %struct.maple_device_specify** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.maple_device* @to_maple_dev(%struct.device* %10)
  store %struct.maple_device* %11, %struct.maple_device** %7, align 8
  %12 = load %struct.maple_device*, %struct.maple_device** %7, align 8
  %13 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.maple_device_specify*, %struct.maple_device_specify** %6, align 8
  %16 = getelementptr inbounds %struct.maple_device_specify, %struct.maple_device_specify* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.maple_device*, %struct.maple_device** %7, align 8
  %21 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.maple_device_specify*, %struct.maple_device_specify** %6, align 8
  %24 = getelementptr inbounds %struct.maple_device_specify, %struct.maple_device_specify* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %29

28:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.maple_device* @to_maple_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
