; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_prepare_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_prepare_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64*, i64, i64*, i64, %struct.sd_info }
%struct.sd_info = type { i32, i64, i64, i64, i64, i64, i64 }

@CLK_30 = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@REG_SD_CFG1 = common dso_local global i32 0, align 4
@CARD_STOP = common dso_local global i32 0, align 4
@SD_STOP = common dso_local global i32 0, align 4
@SD_CLR_ERR = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_prepare_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_prepare_reset(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 4
  store %struct.sd_info* %7, %struct.sd_info** %4, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %14 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %13, i32 0, i32 0
  store i32 29, i32* %14, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @CLK_30, align 4
  %17 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %18 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %12
  %20 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %21 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %23 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %25 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %27 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %29 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %32 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @SD_CARD, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %30, i64 %36
  store i64 0, i64* %37, align 8
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %39 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %41 = call i32 @sd_set_init_para(%struct.rtsx_chip* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @STATUS_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %19
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %80

47:                                               ; preds = %19
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %49 = load i32, i32* @REG_SD_CFG1, align 4
  %50 = call i32 @rtsx_write_register(%struct.rtsx_chip* %48, i32 %49, i32 255, i32 64)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %80

55:                                               ; preds = %47
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %57 = load i32, i32* @CARD_STOP, align 4
  %58 = load i32, i32* @SD_STOP, align 4
  %59 = load i32, i32* @SD_CLR_ERR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SD_STOP, align 4
  %62 = load i32, i32* @SD_CLR_ERR, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @rtsx_write_register(%struct.rtsx_chip* %56, i32 %57, i32 %60, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %80

69:                                               ; preds = %55
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %71 = load i64, i64* @SD_CARD, align 8
  %72 = call i32 @select_card(%struct.rtsx_chip* %70, i64 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @STATUS_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %76, %67, %53, %45
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @sd_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @select_card(%struct.rtsx_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
