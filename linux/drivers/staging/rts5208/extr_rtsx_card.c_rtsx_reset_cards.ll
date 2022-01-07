; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_rtsx_reset_cards.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_rtsx_reset_cards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i64, i64, i64, i64 }

@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SSC_PDCTL = common dso_local global i32 0, align 4
@OC_PDCTL = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@SD_NR = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@MAX_SHOW_CNT = common dso_local global i64 0, align 8
@QFN = common dso_local global i32 0, align 4
@MS_NR = common dso_local global i32 0, align 4
@RBCTL = common dso_local global i32 0, align 4
@RB_FLUSH = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_reset_cards(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %147

8:                                                ; preds = %1
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %10 = load i32, i32* @RTSX_STAT_RUN, align 4
  %11 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %9, i32 %10)
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %13 = load i32, i32* @SSC_PDCTL, align 4
  %14 = load i32, i32* @OC_PDCTL, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @rtsx_force_power_on(%struct.rtsx_chip* %12, i32 %15)
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %18 = call i32 @rtsx_disable_aspm(%struct.rtsx_chip* %17)
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %20 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SD_CARD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %8
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %27 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @SD_NR, align 4
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %33 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %32, i32 0, i32 0
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %30, %25, %8
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %37 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @XD_CARD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %35
  %43 = load i32, i32* @XD_CARD, align 4
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %45 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %49 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MAX_SHOW_CNT, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %55 = call i32 @do_reset_xd_card(%struct.rtsx_chip* %54)
  br label %61

56:                                               ; preds = %42
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %58 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %56, %53
  br label %62

62:                                               ; preds = %61, %35
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %64 = call i64 @CHECK_PID(%struct.rtsx_chip* %63, i32 21128)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %68 = load i32, i32* @QFN, align 4
  %69 = call i64 @CHECK_BARO_PKG(%struct.rtsx_chip* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %73 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XD_CARD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load i32, i32* @SD_NR, align 4
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %81 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %80, i32 0, i32 0
  %82 = call i32 @clear_bit(i32 %79, i32* %81)
  %83 = load i32, i32* @MS_NR, align 4
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %85 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %84, i32 0, i32 0
  %86 = call i32 @clear_bit(i32 %83, i32* %85)
  br label %87

87:                                               ; preds = %78, %71
  br label %88

88:                                               ; preds = %87, %66, %62
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %90 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SD_CARD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %88
  %96 = load i32, i32* @SD_CARD, align 4
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %98 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %102 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MAX_SHOW_CNT, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %95
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %108 = load i32, i32* @RBCTL, align 4
  %109 = load i32, i32* @RB_FLUSH, align 4
  %110 = load i32, i32* @RB_FLUSH, align 4
  %111 = call i32 @rtsx_write_register(%struct.rtsx_chip* %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %113 = call i32 @do_reset_sd_card(%struct.rtsx_chip* %112)
  br label %119

114:                                              ; preds = %95
  %115 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %116 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  br label %119

119:                                              ; preds = %114, %106
  br label %120

120:                                              ; preds = %119, %88
  %121 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %122 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @MS_CARD, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %120
  %128 = load i32, i32* @MS_CARD, align 4
  %129 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %130 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %134 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @MAX_SHOW_CNT, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %140 = call i32 @do_reset_ms_card(%struct.rtsx_chip* %139)
  br label %146

141:                                              ; preds = %127
  %142 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %143 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %141, %138
  br label %147

147:                                              ; preds = %7, %146, %120
  ret void
}

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_force_power_on(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_disable_aspm(%struct.rtsx_chip*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @do_reset_xd_card(%struct.rtsx_chip*) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHECK_BARO_PKG(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @do_reset_sd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @do_reset_ms_card(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
