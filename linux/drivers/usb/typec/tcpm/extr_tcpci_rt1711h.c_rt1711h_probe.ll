; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci_rt1711h.c_rt1711h_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci_rt1711h.c_rt1711h_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rt1711h_chip = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"check vid/pid fail\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rt1711h_regmap_config = common dso_local global i32 0, align 4
@rt1711h_init = common dso_local global i32 0, align 4
@rt1711h_set_vconn = common dso_local global i32 0, align 4
@rt1711h_start_drp_toggling = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt1711h_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1711h_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt1711h_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call i32 @rt1711h_check_revision(%struct.i2c_client* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %99

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.rt1711h_chip* @devm_kzalloc(i32* %19, i32 32, i32 %20)
  store %struct.rt1711h_chip* %21, %struct.rt1711h_chip** %7, align 8
  %22 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %23 = icmp ne %struct.rt1711h_chip* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %99

27:                                               ; preds = %17
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %28, i32* @rt1711h_regmap_config)
  %30 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %31 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %34 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %41 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %99

45:                                               ; preds = %27
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %49 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %52 = call i32 @i2c_set_clientdata(%struct.i2c_client* %50, %struct.rt1711h_chip* %51)
  %53 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %54 = call i32 @rt1711h_sw_reset(%struct.rt1711h_chip* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %99

59:                                               ; preds = %45
  %60 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = call i32 @rt1711h_init_alert(%struct.rt1711h_chip* %60, %struct.i2c_client* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %99

67:                                               ; preds = %59
  %68 = load i32, i32* @rt1711h_init, align 4
  %69 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %70 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @rt1711h_set_vconn, align 4
  %73 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %74 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @rt1711h_start_drp_toggling, align 4
  %77 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %78 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %81 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %84 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %83, i32 0, i32 1
  %85 = call i32 @tcpci_register_port(i32* %82, %struct.TYPE_2__* %84)
  %86 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %87 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %89 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @IS_ERR_OR_NULL(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %67
  %94 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %7, align 8
  %95 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @PTR_ERR(i32 %96)
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %93, %65, %57, %39, %24, %12
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @rt1711h_check_revision(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.rt1711h_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt1711h_chip*) #1

declare dso_local i32 @rt1711h_sw_reset(%struct.rt1711h_chip*) #1

declare dso_local i32 @rt1711h_init_alert(%struct.rt1711h_chip*, %struct.i2c_client*) #1

declare dso_local i32 @tcpci_register_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
