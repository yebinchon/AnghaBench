; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_power_off_card3v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_power_off_card3v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, i32 }

@SD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@SD_OUTPUT_EN = common dso_local global i32 0, align 4
@FPGA_PULL_CTL = common dso_local global i32 0, align 4
@FPGA_SD_PULL_CTL_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_power_off_card3v3(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = load i32, i32* @SD_CARD, align 4
  %7 = call i32 @disable_card_clock(%struct.rtsx_chip* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @STATUS_SUCCESS, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %12, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %15 = load i32, i32* @CARD_OE, align 4
  %16 = load i32, i32* @SD_OUTPUT_EN, align 4
  %17 = call i32 @rtsx_write_register(%struct.rtsx_chip* %14, i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %66

22:                                               ; preds = %13
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %24 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %29 = load i32, i32* @SD_CARD, align 4
  %30 = call i32 @card_power_off(%struct.rtsx_chip* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %35, i32* %2, align 4
  br label %66

36:                                               ; preds = %27
  %37 = call i32 @mdelay(i32 50)
  br label %38

38:                                               ; preds = %36, %22
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %40 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %45 = call i32 @sd_pull_ctl_disable(%struct.rtsx_chip* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @STATUS_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %50, i32* %2, align 4
  br label %66

51:                                               ; preds = %43
  br label %64

52:                                               ; preds = %38
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %54 = load i32, i32* @FPGA_PULL_CTL, align 4
  %55 = load i32, i32* @FPGA_SD_PULL_CTL_BIT, align 4
  %56 = or i32 %55, 32
  %57 = load i32, i32* @FPGA_SD_PULL_CTL_BIT, align 4
  %58 = call i32 @rtsx_write_register(%struct.rtsx_chip* %53, i32 %54, i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %66

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %61, %49, %34, %20, %11
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @disable_card_clock(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @card_power_off(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @sd_pull_ctl_disable(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
