; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_enable_card_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_enable_card_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32*, i64 }

@RTSX_BIER = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@XD_INT_EN = common dso_local global i64 0, align 8
@SD_CARD = common dso_local global i32 0, align 4
@SD_INT_EN = common dso_local global i64 0, align 8
@MS_CARD = common dso_local global i32 0, align 4
@MS_INT_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_enable_card_int(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %6 = load i32, i32* @RTSX_BIER, align 4
  %7 = call i64 @rtsx_readl(%struct.rtsx_chip* %5, i32 %6)
  store i64 %7, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %60, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %8
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %16 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XD_CARD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i64, i64* @XD_INT_EN, align 8
  %27 = load i64, i64* %3, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %25, %14
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %31 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SD_CARD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i64, i64* @SD_INT_EN, align 8
  %42 = load i64, i64* %3, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %46 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MS_CARD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i64, i64* @MS_INT_EN, align 8
  %57 = load i64, i64* %3, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %55, %44
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %8

63:                                               ; preds = %8
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %65 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i64, i64* @SD_INT_EN, align 8
  %70 = xor i64 %69, -1
  %71 = load i64, i64* %3, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %75 = load i32, i32* @RTSX_BIER, align 4
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @rtsx_writel(%struct.rtsx_chip* %74, i32 %75, i64 %76)
  ret void
}

declare dso_local i64 @rtsx_readl(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_writel(%struct.rtsx_chip*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
