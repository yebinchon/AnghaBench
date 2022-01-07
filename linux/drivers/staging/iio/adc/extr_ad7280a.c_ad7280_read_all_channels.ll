; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_read_all_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_read_all_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_state = type { i32 }

@AD7280A_DEVADDR_MASTER = common dso_local global i32 0, align 4
@AD7280A_READ = common dso_local global i32 0, align 4
@AD7280A_CELL_VOLTAGE_1 = common dso_local global i32 0, align 4
@AD7280A_CONTROL_HB = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_CONV_INPUT_ALL = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_CONV_RES_READ_ALL = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_CONV_START_CS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AD7280A_CELL_VOLTAGE_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7280_state*, i32, i32*)* @ad7280_read_all_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_read_all_channels(%struct.ad7280_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7280_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ad7280_state* %0, %struct.ad7280_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %13 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %14 = load i32, i32* @AD7280A_READ, align 4
  %15 = load i32, i32* @AD7280A_CELL_VOLTAGE_1, align 4
  %16 = shl i32 %15, 2
  %17 = call i32 @ad7280_write(%struct.ad7280_state* %12, i32 %13, i32 %14, i32 1, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %89

22:                                               ; preds = %3
  %23 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %24 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %25 = load i32, i32* @AD7280A_CONTROL_HB, align 4
  %26 = load i32, i32* @AD7280A_CTRL_HB_CONV_INPUT_ALL, align 4
  %27 = load i32, i32* @AD7280A_CTRL_HB_CONV_RES_READ_ALL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AD7280A_CTRL_HB_CONV_START_CS, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %32 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %30, %33
  %35 = call i32 @ad7280_write(%struct.ad7280_state* %23, i32 %24, i32 %25, i32 1, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %89

40:                                               ; preds = %22
  %41 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %42 = call i32 @ad7280_delay(%struct.ad7280_state* %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %84, %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %49 = call i32 @__ad7280_read32(%struct.ad7280_state* %48, i32* %10)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %89

54:                                               ; preds = %47
  %55 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @ad7280_check_crc(%struct.ad7280_state* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %89

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %10, align 4
  %73 = lshr i32 %72, 23
  %74 = and i32 %73, 15
  %75 = load i32, i32* @AD7280A_CELL_VOLTAGE_6, align 4
  %76 = icmp ule i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  %79 = lshr i32 %78, 11
  %80 = and i32 %79, 4095
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %77, %71
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %43

87:                                               ; preds = %43
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %59, %52, %38, %20
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @ad7280_write(%struct.ad7280_state*, i32, i32, i32, i32) #1

declare dso_local i32 @ad7280_delay(%struct.ad7280_state*) #1

declare dso_local i32 @__ad7280_read32(%struct.ad7280_state*, i32*) #1

declare dso_local i64 @ad7280_check_crc(%struct.ad7280_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
