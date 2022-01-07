; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_laptop.c_chromeos_laptop_i2c_notifier_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_laptop.c_chromeos_laptop_i2c_notifier_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.device = type { i32* }

@i2c_adapter_type = common dso_local global i32 0, align 4
@i2c_client_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @chromeos_laptop_i2c_notifier_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chromeos_laptop_i2c_notifier_call(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.device*
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load i64, i64* %5, align 8
  switch i64 %10, label %41 [
    i64 129, label %11
    i64 128, label %31
  ]

11:                                               ; preds = %3
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, @i2c_adapter_type
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call i32 @to_i2c_adapter(%struct.device* %17)
  %19 = call i32 @chromeos_laptop_check_adapter(i32 %18)
  br label %30

20:                                               ; preds = %11
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, @i2c_client_type
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = call i32 @to_i2c_client(%struct.device* %26)
  %28 = call i32 @chromeos_laptop_adjust_client(i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29, %16
  br label %41

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, @i2c_client_type
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = call i32 @to_i2c_client(%struct.device* %37)
  %39 = call i32 @chromeos_laptop_detach_i2c_client(i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %3, %40, %30
  ret i32 0
}

declare dso_local i32 @chromeos_laptop_check_adapter(i32) #1

declare dso_local i32 @to_i2c_adapter(%struct.device*) #1

declare dso_local i32 @chromeos_laptop_adjust_client(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @chromeos_laptop_detach_i2c_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
