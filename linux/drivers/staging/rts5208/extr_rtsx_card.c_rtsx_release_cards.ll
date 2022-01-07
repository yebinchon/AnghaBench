; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_rtsx_release_cards.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_rtsx_release_cards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i64 }

@RTSX_BIPR = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@SD_EXIST = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@XD_EXIST = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@MS_EXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_release_cards(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = load i32, i32* @RTSX_BIPR, align 4
  %5 = call i32 @rtsx_readl(%struct.rtsx_chip* %3, i32 %4)
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SD_CARD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %16 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14, %1
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %21 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SD_EXIST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %28 = call i32 @sd_cleanup_work(%struct.rtsx_chip* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %31 = call i32 @release_sd_card(%struct.rtsx_chip* %30)
  br label %32

32:                                               ; preds = %29, %14
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %34 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XD_CARD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %41 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XD_EXIST, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %48 = call i32 @xd_cleanup_work(%struct.rtsx_chip* %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %51 = call i32 @release_xd_card(%struct.rtsx_chip* %50)
  br label %52

52:                                               ; preds = %49, %32
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %54 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MS_CARD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %61 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MS_EXIST, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %68 = call i32 @ms_cleanup_work(%struct.rtsx_chip* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %71 = call i32 @release_ms_card(%struct.rtsx_chip* %70)
  br label %72

72:                                               ; preds = %69, %52
  ret void
}

declare dso_local i32 @rtsx_readl(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_cleanup_work(%struct.rtsx_chip*) #1

declare dso_local i32 @release_sd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_cleanup_work(%struct.rtsx_chip*) #1

declare dso_local i32 @release_xd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_cleanup_work(%struct.rtsx_chip*) #1

declare dso_local i32 @release_ms_card(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
