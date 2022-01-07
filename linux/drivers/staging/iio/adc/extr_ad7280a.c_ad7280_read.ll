; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_state = type { i32 }

@AD7280A_DEVADDR_MASTER = common dso_local global i32 0, align 4
@AD7280A_CONTROL_HB = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_CONV_INPUT_ALL = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_CONV_RES_READ_NO = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_CONV_RES_READ_ALL = common dso_local global i32 0, align 4
@AD7280A_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7280_state*, i32, i32)* @ad7280_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_read(%struct.ad7280_state* %0, i32 %1, i32 %2) #0 {
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
  %11 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %12 = load i32, i32* @AD7280A_CONTROL_HB, align 4
  %13 = load i32, i32* @AD7280A_CTRL_HB_CONV_INPUT_ALL, align 4
  %14 = load i32, i32* @AD7280A_CTRL_HB_CONV_RES_READ_NO, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %17 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  %20 = call i32 @ad7280_write(%struct.ad7280_state* %10, i32 %11, i32 %12, i32 1, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %85

25:                                               ; preds = %3
  %26 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AD7280A_CONTROL_HB, align 4
  %29 = load i32, i32* @AD7280A_CTRL_HB_CONV_INPUT_ALL, align 4
  %30 = load i32, i32* @AD7280A_CTRL_HB_CONV_RES_READ_ALL, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %33 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  %36 = call i32 @ad7280_write(%struct.ad7280_state* %26, i32 %27, i32 %28, i32 0, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %85

41:                                               ; preds = %25
  %42 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @AD7280A_READ, align 4
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 2
  %47 = call i32 @ad7280_write(%struct.ad7280_state* %42, i32 %43, i32 %44, i32 0, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %85

52:                                               ; preds = %41
  %53 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %54 = call i32 @__ad7280_read32(%struct.ad7280_state* %53, i32* %9)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %85

59:                                               ; preds = %52
  %60 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @ad7280_check_crc(%struct.ad7280_state* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %85

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = lshr i32 %68, 27
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = lshr i32 %73, 21
  %75 = and i32 %74, 63
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %67
  %79 = load i32, i32* @EFAULT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %85

81:                                               ; preds = %72
  %82 = load i32, i32* %9, align 4
  %83 = lshr i32 %82, 13
  %84 = and i32 %83, 255
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %78, %64, %57, %50, %39, %23
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ad7280_write(%struct.ad7280_state*, i32, i32, i32, i32) #1

declare dso_local i32 @__ad7280_read32(%struct.ad7280_state*, i32*) #1

declare dso_local i64 @ad7280_check_crc(%struct.ad7280_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
