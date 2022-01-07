; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_init_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_init_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@FPGA_PULL_CTL = common dso_local global i32 0, align 4
@FPGA_SD_PULL_CTL_BIT = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@SD_OUTPUT_EN = common dso_local global i32 0, align 4
@SD_OC_EVER = common dso_local global i32 0, align 4
@SD_OC_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_init_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_power(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = call i32 @sd_power_off_card3v3(%struct.rtsx_chip* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @STATUS_SUCCESS, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %11, i32* %2, align 4
  br label %81

12:                                               ; preds = %1
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %14 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @wait_timeout(i32 250)
  br label %19

19:                                               ; preds = %17, %12
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %21 = load i32, i32* @SD_CARD, align 4
  %22 = call i32 @enable_card_clock(%struct.rtsx_chip* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %27, i32* %2, align 4
  br label %81

28:                                               ; preds = %19
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %30 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %35 = call i32 @sd_pull_ctl_enable(%struct.rtsx_chip* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @STATUS_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %40, i32* %2, align 4
  br label %81

41:                                               ; preds = %33
  br label %53

42:                                               ; preds = %28
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %44 = load i32, i32* @FPGA_PULL_CTL, align 4
  %45 = load i32, i32* @FPGA_SD_PULL_CTL_BIT, align 4
  %46 = or i32 %45, 32
  %47 = call i32 @rtsx_write_register(%struct.rtsx_chip* %43, i32 %44, i32 %46, i32 0)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %81

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %41
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %55 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %60 = load i32, i32* @SD_CARD, align 4
  %61 = call i32 @card_power_on(%struct.rtsx_chip* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %66, i32* %2, align 4
  br label %81

67:                                               ; preds = %58
  %68 = call i32 @wait_timeout(i32 260)
  br label %69

69:                                               ; preds = %67, %53
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %71 = load i32, i32* @CARD_OE, align 4
  %72 = load i32, i32* @SD_OUTPUT_EN, align 4
  %73 = load i32, i32* @SD_OUTPUT_EN, align 4
  %74 = call i32 @rtsx_write_register(%struct.rtsx_chip* %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %77, %65, %50, %39, %26, %10
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @sd_power_off_card3v3(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @enable_card_clock(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_pull_ctl_enable(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @card_power_on(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
