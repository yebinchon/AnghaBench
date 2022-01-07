; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_i2c.c_gb_i2c_device_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_i2c.c_gb_i2c_device_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_i2c_device = type { i32, i32 }
%struct.gb_i2c_functionality_response = type { i32 }

@GB_I2C_TYPE_FUNCTIONALITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_i2c_device*)* @gb_i2c_device_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_i2c_device_setup(%struct.gb_i2c_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_i2c_device*, align 8
  %4 = alloca %struct.gb_i2c_functionality_response, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gb_i2c_device* %0, %struct.gb_i2c_device** %3, align 8
  %7 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %3, align 8
  %8 = getelementptr inbounds %struct.gb_i2c_device, %struct.gb_i2c_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GB_I2C_TYPE_FUNCTIONALITY, align 4
  %11 = call i32 @gb_operation_sync(i32 %9, i32 %10, i32* null, i32 0, %struct.gb_i2c_functionality_response* %4, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.gb_i2c_functionality_response, %struct.gb_i2c_functionality_response* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @gb_i2c_functionality_map(i32 %20)
  %22 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %3, align 8
  %23 = getelementptr inbounds %struct.gb_i2c_device, %struct.gb_i2c_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %16, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @gb_operation_sync(i32, i32, i32*, i32, %struct.gb_i2c_functionality_response*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @gb_i2c_functionality_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
