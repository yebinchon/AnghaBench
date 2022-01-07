; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9v022 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MT9V022_CHIP_CONTROL = common dso_local global i32 0, align 4
@MT9V022_READ_MODE = common dso_local global i32 0, align 4
@MT9V022_AEC_AGC_ENABLE = common dso_local global i32 0, align 4
@MT9V022_ANALOG_GAIN = common dso_local global i32 0, align 4
@MT9V022_TOTAL_SHUTTER_WIDTH = common dso_local global i32 0, align 4
@MT9V022_BLACK_LEVEL_CALIB_CTRL = common dso_local global i32 0, align 4
@MT9V022_DIGITAL_TEST_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9v022_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_init(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9v022*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call %struct.mt9v022* @to_mt9v022(%struct.i2c_client* %6)
  store %struct.mt9v022* %7, %struct.mt9v022** %4, align 8
  %8 = load %struct.mt9v022*, %struct.mt9v022** %4, align 8
  %9 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, 16
  store i32 %11, i32* %9, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = load i32, i32* @MT9V022_CHIP_CONTROL, align 4
  %14 = load %struct.mt9v022*, %struct.mt9v022** %4, align 8
  %15 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @reg_write(%struct.i2c_client* %12, i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = load i32, i32* @MT9V022_READ_MODE, align 4
  %23 = call i32 @reg_write(%struct.i2c_client* %21, i32 %22, i32 768)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %30 = call i32 @reg_set(%struct.i2c_client* %28, i32 %29, i32 3)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = load i32, i32* @MT9V022_ANALOG_GAIN, align 4
  %37 = call i32 @reg_write(%struct.i2c_client* %35, i32 %36, i32 16)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = load i32, i32* @MT9V022_TOTAL_SHUTTER_WIDTH, align 4
  %44 = call i32 @reg_write(%struct.i2c_client* %42, i32 %43, i32 480)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %50 = load %struct.mt9v022*, %struct.mt9v022** %4, align 8
  %51 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @reg_write(%struct.i2c_client* %49, i32 %54, i32 480)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %48, %45
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %61 = load i32, i32* @MT9V022_BLACK_LEVEL_CALIB_CTRL, align 4
  %62 = call i32 @reg_clear(%struct.i2c_client* %60, i32 %61, i32 1)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = load i32, i32* @MT9V022_DIGITAL_TEST_PATTERN, align 4
  %69 = call i32 @reg_write(%struct.i2c_client* %67, i32 %68, i32 0)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct.mt9v022*, %struct.mt9v022** %4, align 8
  %75 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %74, i32 0, i32 1
  %76 = call i32 @v4l2_ctrl_handler_setup(i32* %75)
  store i32 %76, i32* %2, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.mt9v022* @to_mt9v022(%struct.i2c_client*) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_set(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_clear(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
