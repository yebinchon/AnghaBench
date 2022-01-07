; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rts5288_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rts5288_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, i32, i32, i64, i32, i64, i64 }

@CLK_SEL = common dso_local global i32 0, align 4
@PDINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PDINFO: 0x%x\0A\00", align 1
@AUX_PWR_DETECTED = common dso_local global i32 0, align 4
@CARD_SHARE_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CARD_SHARE_MODE: 0x%x\0A\00", align 1
@QFN = common dso_local global i32 0, align 4
@LQFP = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Max function number: %d\0A\00", align 1
@CHANGE_LINK_STATE = common dso_local global i32 0, align 4
@SD_MS_1LUN = common dso_local global i32 0, align 4
@DEFAULT_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @rts5288_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5288_init(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = load i32, i32* @CLK_SEL, align 4
  %10 = call i32 @rtsx_write_register(%struct.rtsx_chip* %8, i32 %9, i32 3, i32 3)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %150

15:                                               ; preds = %1
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %17 = load i32, i32* @CLK_SEL, align 4
  %18 = call i32 @rtsx_read_register(%struct.rtsx_chip* %16, i32 %17, i32* %5)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %150

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %29 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %31 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %30, i32 0, i32 8
  store i64 0, i64* %31, align 8
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %33 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %35 = load i32, i32* @PDINFO, align 4
  %36 = call i32 @rtsx_read_register(%struct.rtsx_chip* %34, i32 %35, i32* %5)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %150

41:                                               ; preds = %23
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %43 = call i32 @rtsx_dev(%struct.rtsx_chip* %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @AUX_PWR_DETECTED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %53 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %55 = load i32, i32* @CARD_SHARE_MODE, align 4
  %56 = call i32 @rtsx_read_register(%struct.rtsx_chip* %54, i32 %55, i32* %5)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %41
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %150

61:                                               ; preds = %41
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %63 = call i32 @rtsx_dev(%struct.rtsx_chip* %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @QFN, align 4
  br label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @LQFP, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %76 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %78 = call i32 @rtsx_read_register(%struct.rtsx_chip* %77, i32 65114, i32* %5)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %150

83:                                               ; preds = %73
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 16
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %90 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %92 = call i32 @rtsx_read_cfg_dw(%struct.rtsx_chip* %91, i32 0, i32 1816, i32* %7)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %97, i32* %2, align 4
  br label %150

98:                                               ; preds = %83
  %99 = load i32, i32* %7, align 4
  %100 = ashr i32 %99, 29
  %101 = and i32 %100, 7
  store i32 %101, i32* %6, align 4
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %103 = call i32 @rtsx_dev(%struct.rtsx_chip* %102)
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @dev_dbg(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %110 = call i32 @SET_SDIO_EXIST(%struct.rtsx_chip* %109)
  br label %114

111:                                              ; preds = %98
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %113 = call i32 @CLR_SDIO_EXIST(%struct.rtsx_chip* %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %116 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %114
  %120 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %121 = load i32, i32* @CHANGE_LINK_STATE, align 4
  %122 = call i32 @rtsx_read_register(%struct.rtsx_chip* %120, i32 %121, i32* %5)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %150

127:                                              ; preds = %119
  %128 = load i32, i32* %5, align 4
  %129 = and i32 %128, 128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 1, i32 0
  %133 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %134 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %136 = load i32, i32* @LQFP, align 4
  %137 = call i64 @CHECK_BARO_PKG(%struct.rtsx_chip* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %127
  %140 = load i32, i32* @SD_MS_1LUN, align 4
  %141 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %142 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  br label %147

143:                                              ; preds = %127
  %144 = load i32, i32* @DEFAULT_SINGLE, align 4
  %145 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %146 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147, %114
  %149 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %125, %96, %81, %59, %39, %21, %13
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_cfg_dw(%struct.rtsx_chip*, i32, i32, i32*) #1

declare dso_local i32 @SET_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i32 @CLR_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i64 @CHECK_BARO_PKG(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
