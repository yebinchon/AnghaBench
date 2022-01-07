; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_change_bank_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_change_bank_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64 }

@SD_IO_3V3 = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_PAD_CTL = common dso_local global i32 0, align 4
@SD_IO_USING_1V8 = common dso_local global i32 0, align 4
@SD_IO_1V8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i64)* @sd_change_bank_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_change_bank_voltage(%struct.rtsx_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @SD_IO_3V3, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %12 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %18 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 20416, %19
  %21 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %16, i32 8, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @STATUS_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %26, i32* %3, align 4
  br label %78

27:                                               ; preds = %15
  br label %38

28:                                               ; preds = %10
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %30 = load i32, i32* @SD_PAD_CTL, align 4
  %31 = load i32, i32* @SD_IO_USING_1V8, align 4
  %32 = call i32 @rtsx_write_register(%struct.rtsx_chip* %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %78

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %27
  br label %76

39:                                               ; preds = %2
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @SD_IO_1V8, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %45 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %51 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 19520, %52
  %54 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %49, i32 8, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @STATUS_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %59, i32* %3, align 4
  br label %78

60:                                               ; preds = %48
  br label %72

61:                                               ; preds = %43
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %63 = load i32, i32* @SD_PAD_CTL, align 4
  %64 = load i32, i32* @SD_IO_USING_1V8, align 4
  %65 = load i32, i32* @SD_IO_USING_1V8, align 4
  %66 = call i32 @rtsx_write_register(%struct.rtsx_chip* %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %78

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %60
  br label %75

73:                                               ; preds = %39
  %74 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %74, i32* %3, align 4
  br label %78

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75, %38
  %77 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %73, %69, %58, %35, %25
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @rtsx_write_phy_register(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
