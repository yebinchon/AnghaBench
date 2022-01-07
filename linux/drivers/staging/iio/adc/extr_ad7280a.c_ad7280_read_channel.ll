; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_read_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_read_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_state = type { i32 }

@AD7280A_READ = common dso_local global i32 0, align 4
@AD7280A_DEVADDR_MASTER = common dso_local global i32 0, align 4
@AD7280A_CONTROL_HB = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_CONV_INPUT_ALL = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_CONV_RES_READ_NO = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_CONV_RES_READ_ALL = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_CONV_START_CS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7280_state*, i32, i32)* @ad7280_read_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_read_channel(%struct.ad7280_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7280_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ad7280_state* %0, %struct.ad7280_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AD7280A_READ, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 2
  %15 = call i32 @ad7280_write(%struct.ad7280_state* %10, i32 %11, i32 %12, i32 0, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %89

20:                                               ; preds = %3
  %21 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %22 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %23 = load i32, i32* @AD7280A_CONTROL_HB, align 4
  %24 = load i32, i32* @AD7280A_CTRL_HB_CONV_INPUT_ALL, align 4
  %25 = load i32, i32* @AD7280A_CTRL_HB_CONV_RES_READ_NO, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %28 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  %31 = call i32 @ad7280_write(%struct.ad7280_state* %21, i32 %22, i32 %23, i32 1, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %89

36:                                               ; preds = %20
  %37 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @AD7280A_CONTROL_HB, align 4
  %40 = load i32, i32* @AD7280A_CTRL_HB_CONV_INPUT_ALL, align 4
  %41 = load i32, i32* @AD7280A_CTRL_HB_CONV_RES_READ_ALL, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @AD7280A_CTRL_HB_CONV_START_CS, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %46 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = call i32 @ad7280_write(%struct.ad7280_state* %37, i32 %38, i32 %39, i32 0, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %89

54:                                               ; preds = %36
  %55 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %56 = call i32 @ad7280_delay(%struct.ad7280_state* %55)
  %57 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %58 = call i32 @__ad7280_read32(%struct.ad7280_state* %57, i32* %9)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %89

63:                                               ; preds = %54
  %64 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @ad7280_check_crc(%struct.ad7280_state* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %89

71:                                               ; preds = %63
  %72 = load i32, i32* %9, align 4
  %73 = lshr i32 %72, 27
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = lshr i32 %77, 23
  %79 = and i32 %78, 15
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %71
  %83 = load i32, i32* @EFAULT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %89

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  %87 = lshr i32 %86, 11
  %88 = and i32 %87, 4095
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %82, %68, %61, %52, %34, %18
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
