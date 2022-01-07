; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/mux/extr_pi3usb30532.c_pi3usb30532_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/mux/extr_pi3usb30532.c_pi3usb30532_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.typec_switch_desc = type { i32, i32, %struct.pi3usb30532* }
%struct.pi3usb30532 = type { i32, i32, i32, i32, %struct.i2c_client* }
%struct.typec_mux_desc = type { i32, i32, %struct.pi3usb30532* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PI3USB30532_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error reading config register %d\0A\00", align 1
@pi3usb30532_sw_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error registering typec switch: %ld\0A\00", align 1
@pi3usb30532_mux_set = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Error registering typec mux: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @pi3usb30532_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi3usb30532_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.typec_switch_desc, align 8
  %6 = alloca %struct.typec_mux_desc, align 8
  %7 = alloca %struct.pi3usb30532*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pi3usb30532* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.pi3usb30532* %13, %struct.pi3usb30532** %7, align 8
  %14 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %15 = icmp ne %struct.pi3usb30532* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %105

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %22 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %21, i32 0, i32 4
  store %struct.i2c_client* %20, %struct.i2c_client** %22, align 8
  %23 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %24 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %23, i32 0, i32 3
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = load i32, i32* @PI3USB30532_CONF, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %105

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %39 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %41 = getelementptr inbounds %struct.typec_switch_desc, %struct.typec_switch_desc* %5, i32 0, i32 2
  store %struct.pi3usb30532* %40, %struct.pi3usb30532** %41, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.typec_switch_desc, %struct.typec_switch_desc* %5, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @pi3usb30532_sw_set, align 4
  %47 = getelementptr inbounds %struct.typec_switch_desc, %struct.typec_switch_desc* %5, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @typec_switch_register(%struct.device* %48, %struct.typec_switch_desc* %5)
  %50 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %51 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %53 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %36
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %60 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  %63 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %65 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %105

68:                                               ; preds = %36
  %69 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %70 = getelementptr inbounds %struct.typec_mux_desc, %struct.typec_mux_desc* %6, i32 0, i32 2
  store %struct.pi3usb30532* %69, %struct.pi3usb30532** %70, align 8
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.typec_mux_desc, %struct.typec_mux_desc* %6, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @pi3usb30532_mux_set, align 4
  %76 = getelementptr inbounds %struct.typec_mux_desc, %struct.typec_mux_desc* %6, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @typec_mux_register(%struct.device* %77, %struct.typec_mux_desc* %6)
  %79 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %80 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %82 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %68
  %87 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %88 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @typec_switch_unregister(i32 %89)
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %93 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @PTR_ERR(i32 %94)
  %96 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %98 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %2, align 4
  br label %105

101:                                              ; preds = %68
  %102 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %103 = load %struct.pi3usb30532*, %struct.pi3usb30532** %7, align 8
  %104 = call i32 @i2c_set_clientdata(%struct.i2c_client* %102, %struct.pi3usb30532* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %86, %57, %31, %16
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.pi3usb30532* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @typec_switch_register(%struct.device*, %struct.typec_switch_desc*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @typec_mux_register(%struct.device*, %struct.typec_mux_desc*) #1

declare dso_local i32 @typec_switch_unregister(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pi3usb30532*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
