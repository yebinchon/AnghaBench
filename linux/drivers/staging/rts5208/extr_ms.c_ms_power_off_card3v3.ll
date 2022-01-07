; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_power_off_card3v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_power_off_card3v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64 }

@MS_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@FPGA_PULL_CTL = common dso_local global i32 0, align 4
@FPGA_MS_PULL_CTL_BIT = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@MS_OUTPUT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ms_power_off_card3v3(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = load i32, i32* @MS_CARD, align 4
  %7 = call i32 @disable_card_clock(%struct.rtsx_chip* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @STATUS_SUCCESS, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %12, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %15 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %20 = call i32 @ms_pull_ctl_disable(%struct.rtsx_chip* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @STATUS_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %18
  br label %39

27:                                               ; preds = %13
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %29 = load i32, i32* @FPGA_PULL_CTL, align 4
  %30 = load i32, i32* @FPGA_MS_PULL_CTL_BIT, align 4
  %31 = or i32 %30, 32
  %32 = load i32, i32* @FPGA_MS_PULL_CTL_BIT, align 4
  %33 = call i32 @rtsx_write_register(%struct.rtsx_chip* %28, i32 %29, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %65

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %41 = load i32, i32* @CARD_OE, align 4
  %42 = load i32, i32* @MS_OUTPUT_EN, align 4
  %43 = call i32 @rtsx_write_register(%struct.rtsx_chip* %40, i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %65

48:                                               ; preds = %39
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %50 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %55 = load i32, i32* @MS_CARD, align 4
  %56 = call i32 @card_power_off(%struct.rtsx_chip* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @STATUS_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %61, i32* %2, align 4
  br label %65

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %60, %46, %36, %24, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @disable_card_clock(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_pull_ctl_disable(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @card_power_off(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
