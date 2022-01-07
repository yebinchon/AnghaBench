; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_rtsx_reinit_cards.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_rtsx_reinit_cards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32 }

@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SSC_PDCTL = common dso_local global i32 0, align 4
@OC_PDCTL = common dso_local global i32 0, align 4
@RTSX_BIPR = common dso_local global i32 0, align 4
@SD_EXIST = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@XD_EXIST = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@MS_EXIST = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_reinit_cards(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = load i32, i32* @RTSX_STAT_RUN, align 4
  %7 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %5, i32 %6)
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = load i32, i32* @SSC_PDCTL, align 4
  %10 = load i32, i32* @OC_PDCTL, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @rtsx_force_power_on(%struct.rtsx_chip* %8, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %17 = call i32 @rtsx_reset_chip(%struct.rtsx_chip* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %20 = load i32, i32* @RTSX_BIPR, align 4
  %21 = call i32 @rtsx_readl(%struct.rtsx_chip* %19, i32 %20)
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %23 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %25 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SD_EXIST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %18
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %32 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SD_CARD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %39 = call i32 @release_sdio(%struct.rtsx_chip* %38)
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %41 = call i32 @release_sd_card(%struct.rtsx_chip* %40)
  %42 = call i32 @wait_timeout(i32 100)
  %43 = load i32, i32* @SD_CARD, align 4
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %45 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %49 = call i32 @do_reset_sd_card(%struct.rtsx_chip* %48)
  br label %50

50:                                               ; preds = %37, %30, %18
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %52 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @XD_EXIST, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %50
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %59 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @XD_CARD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %66 = call i32 @release_xd_card(%struct.rtsx_chip* %65)
  %67 = call i32 @wait_timeout(i32 100)
  %68 = load i32, i32* @XD_CARD, align 4
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %70 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %74 = call i32 @do_reset_xd_card(%struct.rtsx_chip* %73)
  br label %75

75:                                               ; preds = %64, %57, %50
  %76 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %77 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MS_EXIST, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %84 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MS_CARD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %91 = call i32 @release_ms_card(%struct.rtsx_chip* %90)
  %92 = call i32 @wait_timeout(i32 100)
  %93 = load i32, i32* @MS_CARD, align 4
  %94 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %95 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %99 = call i32 @do_reset_ms_card(%struct.rtsx_chip* %98)
  br label %100

100:                                              ; preds = %89, %82, %75
  %101 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %102 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  ret void
}

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_force_power_on(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_reset_chip(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_readl(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @release_sdio(%struct.rtsx_chip*) #1

declare dso_local i32 @release_sd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @do_reset_sd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @release_xd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @do_reset_xd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @release_ms_card(%struct.rtsx_chip*) #1

declare dso_local i32 @do_reset_ms_card(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
