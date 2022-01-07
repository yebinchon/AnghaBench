; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_set_sample_push_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_set_sample_push_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64, %struct.sd_info }
%struct.sd_info = type { i32 }

@SD_PUSH_POINT_CTL_MASK = common dso_local global i32 0, align 4
@SD_PUSH_POINT_DELAY = common dso_local global i32 0, align 4
@SD_SAMPLE_POINT_CTL_MASK = common dso_local global i32 0, align 4
@SD_SAMPLE_POINT_AUTO = common dso_local global i32 0, align 4
@SD_SAMPLE_POINT_DELAY = common dso_local global i32 0, align 4
@REG_SD_CFG1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_set_sample_push_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_set_sample_push_timing(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd_info*, align 8
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 2
  store %struct.sd_info* %8, %struct.sd_info** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SD_PUSH_POINT_CTL_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @SD_PUSH_POINT_DELAY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, 16
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %21 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SD_SAMPLE_POINT_CTL_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @SD_SAMPLE_POINT_AUTO, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %19
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %29 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load %struct.sd_info*, %struct.sd_info** %5, align 8
  %34 = call i64 @CHK_SD_HS(%struct.sd_info* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.sd_info*, %struct.sd_info** %5, align 8
  %38 = call i64 @CHK_MMC_52M(%struct.sd_info* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 16
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, 4
  store i32 %46, i32* %6, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, 8
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %36
  br label %63

52:                                               ; preds = %27
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 16
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, 4
  store i32 %58, i32* %6, align 4
  br label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, 8
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %51
  br label %84

64:                                               ; preds = %19
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %66 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SD_SAMPLE_POINT_CTL_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @SD_SAMPLE_POINT_DELAY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 16
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, 4
  store i32 %78, i32* %6, align 4
  br label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, 8
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %86 = load i32, i32* @REG_SD_CFG1, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @rtsx_write_register(%struct.rtsx_chip* %85, i32 %86, i32 28, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @CHK_SD_HS(%struct.sd_info*) #1

declare dso_local i64 @CHK_MMC_52M(%struct.sd_info*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
