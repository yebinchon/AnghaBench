; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_choose_proper_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_choose_proper_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.sd_info }
%struct.sd_info = type { i32 }

@CLK_50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @sd_choose_proper_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_choose_proper_clock(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca %struct.sd_info*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %4 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %5 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %4, i32 0, i32 11
  store %struct.sd_info* %5, %struct.sd_info** %3, align 8
  %6 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %7 = call i64 @CHK_SD_SDR104(%struct.sd_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %16 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %19 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %26

20:                                               ; preds = %9
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %22 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %25 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %14
  br label %141

27:                                               ; preds = %1
  %28 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %29 = call i64 @CHK_SD_DDR50(%struct.sd_info* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %33 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %38 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %41 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %48

42:                                               ; preds = %31
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %44 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %47 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %36
  br label %140

49:                                               ; preds = %27
  %50 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %51 = call i64 @CHK_SD_SDR50(%struct.sd_info* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %55 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %54, i32 0, i32 10
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %60 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %63 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %70

64:                                               ; preds = %53
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %66 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %69 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %58
  br label %139

71:                                               ; preds = %49
  %72 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %73 = call i64 @CHK_SD_HS(%struct.sd_info* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %77 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %82 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %85 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %92

86:                                               ; preds = %75
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %88 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %91 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %80
  br label %138

93:                                               ; preds = %71
  %94 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %95 = call i64 @CHK_MMC_52M(%struct.sd_info* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %99 = call i64 @CHK_MMC_DDR52(%struct.sd_info* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %97, %93
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %103 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %102, i32 0, i32 10
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %108 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %111 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %118

112:                                              ; preds = %101
  %113 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %114 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %117 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %106
  br label %137

119:                                              ; preds = %97
  %120 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %121 = call i64 @CHK_MMC_26M(%struct.sd_info* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %125 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %124, i32 0, i32 10
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %130 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %129, i32 0, i32 0
  store i32 48, i32* %130, align 4
  br label %135

131:                                              ; preds = %123
  %132 = load i32, i32* @CLK_50, align 4
  %133 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %134 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %119
  br label %137

137:                                              ; preds = %136, %118
  br label %138

138:                                              ; preds = %137, %92
  br label %139

139:                                              ; preds = %138, %70
  br label %140

140:                                              ; preds = %139, %48
  br label %141

141:                                              ; preds = %140, %26
  ret void
}

declare dso_local i64 @CHK_SD_SDR104(%struct.sd_info*) #1

declare dso_local i64 @CHK_SD_DDR50(%struct.sd_info*) #1

declare dso_local i64 @CHK_SD_SDR50(%struct.sd_info*) #1

declare dso_local i64 @CHK_SD_HS(%struct.sd_info*) #1

declare dso_local i64 @CHK_MMC_52M(%struct.sd_info*) #1

declare dso_local i64 @CHK_MMC_DDR52(%struct.sd_info*) #1

declare dso_local i64 @CHK_MMC_26M(%struct.sd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
