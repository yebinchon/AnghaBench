; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_vbus_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_vbus_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps80031_regulator = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@TPS80031_VBUS_DISCHRG_EN_PDN = common dso_local global i32 0, align 4
@TPS80031_SLAVE_ID2 = common dso_local global i32 0, align 4
@USB_VBUS_CTRL_SET = common dso_local global i32 0, align 4
@VBUS_DISCHRG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"reg 0x%02x write failed, e = %d\0A\00", align 1
@TPS80031_CHARGERUSB_CTRL1 = common dso_local global i32 0, align 4
@OPA_MODE_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"reg 0x%02x clearbit failed, e = %d\0A\00", align 1
@TPS80031_CHARGERUSB_CTRL3 = common dso_local global i32 0, align 4
@BOOST_HW_PWR_EN = common dso_local global i32 0, align 4
@USB_VBUS_CTRL_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps80031_vbus_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_vbus_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.tps80031_regulator*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.tps80031_regulator* %8, %struct.tps80031_regulator** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.device* @to_tps80031_dev(%struct.regulator_dev* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %12 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TPS80031_VBUS_DISCHRG_EN_PDN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* @TPS80031_SLAVE_ID2, align 4
  %20 = load i32, i32* @USB_VBUS_CTRL_SET, align 4
  %21 = load i32, i32* @VBUS_DISCHRG, align 4
  %22 = call i32 @tps80031_write(%struct.device* %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %27 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_VBUS_CTRL_SET, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %100

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load i32, i32* @TPS80031_SLAVE_ID2, align 4
  %37 = load i32, i32* @TPS80031_CHARGERUSB_CTRL1, align 4
  %38 = load i32, i32* @OPA_MODE_EN, align 4
  %39 = call i32 @tps80031_clr_bits(%struct.device* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %44 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TPS80031_CHARGERUSB_CTRL1, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %100

50:                                               ; preds = %34
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load i32, i32* @TPS80031_SLAVE_ID2, align 4
  %53 = load i32, i32* @TPS80031_CHARGERUSB_CTRL3, align 4
  %54 = load i32, i32* @BOOST_HW_PWR_EN, align 4
  %55 = call i32 @tps80031_clr_bits(%struct.device* %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %60 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TPS80031_CHARGERUSB_CTRL3, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %100

66:                                               ; preds = %50
  %67 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %68 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DIV_ROUND_UP(i32 %72, i32 1000)
  %74 = call i32 @mdelay(i32 %73)
  %75 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %76 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @TPS80031_VBUS_DISCHRG_EN_PDN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %66
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load i32, i32* @TPS80031_SLAVE_ID2, align 4
  %84 = load i32, i32* @USB_VBUS_CTRL_CLR, align 4
  %85 = load i32, i32* @VBUS_DISCHRG, align 4
  %86 = call i32 @tps80031_write(%struct.device* %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %4, align 8
  %91 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @USB_VBUS_CTRL_CLR, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %100

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %66
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %89, %58, %42, %25
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.tps80031_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_tps80031_dev(%struct.regulator_dev*) #1

declare dso_local i32 @tps80031_write(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @tps80031_clr_bits(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
