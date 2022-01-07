; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_enable_bus_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_enable_bus_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32*, i64, i32, i64 }

@TRANS_OK_INT_EN = common dso_local global i32 0, align 4
@TRANS_FAIL_INT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"lun2card[%d] = 0x%02x\0A\00", align 1
@XD_CARD = common dso_local global i32 0, align 4
@XD_INT_EN = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@SD_INT_EN = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@MS_INT_EN = common dso_local global i32 0, align 4
@IC_VER_C = common dso_local global i64 0, align 8
@DELINK_INT_EN = common dso_local global i32 0, align 4
@DATA_DONE_INT_EN = common dso_local global i32 0, align 4
@RTSX_BIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"RTSX_BIER: 0x%08x\0A\00", align 1
@OC_INT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_enable_bus_int(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @TRANS_OK_INT_EN, align 4
  %6 = load i32, i32* @TRANS_FAIL_INT_EN, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %71, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %8
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %16 = call i32 @rtsx_dev(%struct.rtsx_chip* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %19 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %24)
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %27 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XD_CARD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %14
  %37 = load i32, i32* @XD_INT_EN, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %14
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %42 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SD_CARD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i32, i32* @SD_INT_EN, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %40
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %57 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MS_CARD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load i32, i32* @MS_INT_EN, align 4
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %8

74:                                               ; preds = %8
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %76 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @SD_INT_EN, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %86 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IC_VER_C, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* @DELINK_INT_EN, align 4
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %96 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @DATA_DONE_INT_EN, align 4
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %105 = load i32, i32* @RTSX_BIER, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @rtsx_writel(%struct.rtsx_chip* %104, i32 %105, i32 %106)
  %108 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %109 = call i32 @rtsx_dev(%struct.rtsx_chip* %108)
  %110 = load i32, i32* %3, align 4
  %111 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_writel(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
