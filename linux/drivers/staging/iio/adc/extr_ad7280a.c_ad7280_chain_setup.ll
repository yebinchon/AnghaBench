; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_chain_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_chain_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_state = type { i32, i32 }

@AD7280A_DEVADDR_MASTER = common dso_local global i32 0, align 4
@AD7280A_CONTROL_LB = common dso_local global i32 0, align 4
@AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN = common dso_local global i32 0, align 4
@AD7280A_CTRL_LB_LOCK_DEV_ADDR = common dso_local global i32 0, align 4
@AD7280A_CTRL_LB_MUST_SET = common dso_local global i32 0, align 4
@AD7280A_CTRL_LB_SWRST = common dso_local global i32 0, align 4
@AD7280A_READ = common dso_local global i32 0, align 4
@AD7280A_MAX_CHAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@AD7280A_CONTROL_HB = common dso_local global i32 0, align 4
@AD7280A_CTRL_HB_PWRDN_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7280_state*)* @ad7280_chain_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_chain_setup(%struct.ad7280_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7280_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad7280_state* %0, %struct.ad7280_state** %3, align 8
  %7 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %8 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %9 = load i32, i32* @AD7280A_CONTROL_LB, align 4
  %10 = load i32, i32* @AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN, align 4
  %11 = load i32, i32* @AD7280A_CTRL_LB_LOCK_DEV_ADDR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @AD7280A_CTRL_LB_MUST_SET, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AD7280A_CTRL_LB_SWRST, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %18 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = call i32 @ad7280_write(%struct.ad7280_state* %7, i32 %8, i32 %9, i32 1, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %105

26:                                               ; preds = %1
  %27 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %28 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %29 = load i32, i32* @AD7280A_CONTROL_LB, align 4
  %30 = load i32, i32* @AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN, align 4
  %31 = load i32, i32* @AD7280A_CTRL_LB_LOCK_DEV_ADDR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @AD7280A_CTRL_LB_MUST_SET, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %36 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = call i32 @ad7280_write(%struct.ad7280_state* %27, i32 %28, i32 %29, i32 1, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %94

43:                                               ; preds = %26
  %44 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %45 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %46 = load i32, i32* @AD7280A_READ, align 4
  %47 = load i32, i32* @AD7280A_CONTROL_LB, align 4
  %48 = shl i32 %47, 2
  %49 = call i32 @ad7280_write(%struct.ad7280_state* %44, i32 %45, i32 %46, i32 1, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %94

53:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %88, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @AD7280A_MAX_CHAIN, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %60 = call i32 @__ad7280_read32(%struct.ad7280_state* %59, i32* %4)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %94

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = sub i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %105

70:                                               ; preds = %64
  %71 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @ad7280_check_crc(%struct.ad7280_state* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %94

78:                                               ; preds = %70
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %4, align 4
  %81 = lshr i32 %80, 27
  %82 = call i32 @ad7280a_devaddr(i32 %81)
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %94

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %54

91:                                               ; preds = %54
  %92 = load i32, i32* @EFAULT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %91, %84, %75, %63, %52, %42
  %95 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %96 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %97 = load i32, i32* @AD7280A_CONTROL_HB, align 4
  %98 = load i32, i32* @AD7280A_CTRL_HB_PWRDN_SW, align 4
  %99 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %100 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %98, %101
  %103 = call i32 @ad7280_write(%struct.ad7280_state* %95, i32 %96, i32 %97, i32 1, i32 %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %94, %67, %24
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @ad7280_write(%struct.ad7280_state*, i32, i32, i32, i32) #1

declare dso_local i32 @__ad7280_read32(%struct.ad7280_state*, i32*) #1

declare dso_local i64 @ad7280_check_crc(%struct.ad7280_state*, i32) #1

declare dso_local i32 @ad7280a_devaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
