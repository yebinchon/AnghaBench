; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.gb_sdio_host = type { i32 }
%struct.gb_sdio_set_ios_request = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }

@GB_SDIO_VDD_SHIFT = common dso_local global i32 0, align 4
@MMC_BUSMODE_OPENDRAIN = common dso_local global i64 0, align 8
@GB_SDIO_BUSMODE_OPENDRAIN = common dso_local global i32 0, align 4
@GB_SDIO_BUSMODE_PUSHPULL = common dso_local global i32 0, align 4
@GB_SDIO_POWER_OFF = common dso_local global i8* null, align 8
@GB_SDIO_POWER_UP = common dso_local global i8* null, align 8
@GB_SDIO_POWER_ON = common dso_local global i8* null, align 8
@GB_SDIO_POWER_UNDEFINED = common dso_local global i8* null, align 8
@GB_SDIO_BUS_WIDTH_1 = common dso_local global i8* null, align 8
@GB_SDIO_BUS_WIDTH_4 = common dso_local global i8* null, align 8
@GB_SDIO_BUS_WIDTH_8 = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_LEGACY = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_MMC_HS = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_SD_HS = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_UHS_SDR12 = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_UHS_SDR25 = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_UHS_SDR50 = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_UHS_SDR104 = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_UHS_DDR50 = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_MMC_DDR52 = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_MMC_HS200 = common dso_local global i8* null, align 8
@GB_SDIO_TIMING_MMC_HS400 = common dso_local global i8* null, align 8
@GB_SDIO_SIGNAL_VOLTAGE_330 = common dso_local global i8* null, align 8
@GB_SDIO_SIGNAL_VOLTAGE_180 = common dso_local global i8* null, align 8
@GB_SDIO_SIGNAL_VOLTAGE_120 = common dso_local global i8* null, align 8
@GB_SDIO_SET_DRIVER_TYPE_A = common dso_local global i8* null, align 8
@GB_SDIO_SET_DRIVER_TYPE_C = common dso_local global i8* null, align 8
@GB_SDIO_SET_DRIVER_TYPE_D = common dso_local global i8* null, align 8
@GB_SDIO_SET_DRIVER_TYPE_B = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @gb_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.gb_sdio_host*, align 8
  %6 = alloca %struct.gb_sdio_set_ios_request, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %14 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %15 = call %struct.gb_sdio_host* @mmc_priv(%struct.mmc_host* %14)
  store %struct.gb_sdio_host* %15, %struct.gb_sdio_host** %5, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %17 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.gb_sdio_set_ios_request, %struct.gb_sdio_set_ios_request* %6, i32 0, i32 7
  store i8* %22, i8** %23, align 8
  %24 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GB_SDIO_VDD_SHIFT, align 4
  %33 = sub nsw i32 %31, %32
  %34 = shl i32 1, %33
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %28, %2
  %36 = load i32, i32* %13, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = getelementptr inbounds %struct.gb_sdio_set_ios_request, %struct.gb_sdio_set_ios_request* %6, i32 0, i32 6
  store i8* %37, i8** %38, align 8
  %39 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MMC_BUSMODE_OPENDRAIN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @GB_SDIO_BUSMODE_OPENDRAIN, align 4
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @GB_SDIO_BUSMODE_PUSHPULL, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.gb_sdio_set_ios_request, %struct.gb_sdio_set_ios_request* %6, i32 0, i32 5
  store i32 %49, i32* %50, align 8
  %51 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %55 [
    i32 149, label %54
    i32 146, label %57
    i32 148, label %59
    i32 147, label %61
  ]

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %48, %54
  %56 = load i8*, i8** @GB_SDIO_POWER_OFF, align 8
  store i8* %56, i8** %8, align 8
  br label %63

57:                                               ; preds = %48
  %58 = load i8*, i8** @GB_SDIO_POWER_UP, align 8
  store i8* %58, i8** %8, align 8
  br label %63

59:                                               ; preds = %48
  %60 = load i8*, i8** @GB_SDIO_POWER_ON, align 8
  store i8* %60, i8** %8, align 8
  br label %63

61:                                               ; preds = %48
  %62 = load i8*, i8** @GB_SDIO_POWER_UNDEFINED, align 8
  store i8* %62, i8** %8, align 8
  br label %63

63:                                               ; preds = %61, %59, %57, %55
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds %struct.gb_sdio_set_ios_request, %struct.gb_sdio_set_ios_request* %6, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %67 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %72 [
    i32 152, label %69
    i32 151, label %71
    i32 150, label %74
  ]

69:                                               ; preds = %63
  %70 = load i8*, i8** @GB_SDIO_BUS_WIDTH_1, align 8
  store i8* %70, i8** %9, align 8
  br label %76

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %63, %71
  %73 = load i8*, i8** @GB_SDIO_BUS_WIDTH_4, align 8
  store i8* %73, i8** %9, align 8
  br label %76

74:                                               ; preds = %63
  %75 = load i8*, i8** @GB_SDIO_BUS_WIDTH_8, align 8
  store i8* %75, i8** %9, align 8
  br label %76

76:                                               ; preds = %74, %72, %69
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds %struct.gb_sdio_set_ios_request, %struct.gb_sdio_set_ios_request* %6, i32 0, i32 3
  store i8* %77, i8** %78, align 8
  %79 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %80 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %83 [
    i32 138, label %82
    i32 136, label %85
    i32 133, label %87
    i32 130, label %89
    i32 129, label %91
    i32 128, label %93
    i32 131, label %95
    i32 132, label %97
    i32 137, label %99
    i32 135, label %101
    i32 134, label %103
  ]

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %76, %82
  %84 = load i8*, i8** @GB_SDIO_TIMING_LEGACY, align 8
  store i8* %84, i8** %10, align 8
  br label %105

85:                                               ; preds = %76
  %86 = load i8*, i8** @GB_SDIO_TIMING_MMC_HS, align 8
  store i8* %86, i8** %10, align 8
  br label %105

87:                                               ; preds = %76
  %88 = load i8*, i8** @GB_SDIO_TIMING_SD_HS, align 8
  store i8* %88, i8** %10, align 8
  br label %105

89:                                               ; preds = %76
  %90 = load i8*, i8** @GB_SDIO_TIMING_UHS_SDR12, align 8
  store i8* %90, i8** %10, align 8
  br label %105

91:                                               ; preds = %76
  %92 = load i8*, i8** @GB_SDIO_TIMING_UHS_SDR25, align 8
  store i8* %92, i8** %10, align 8
  br label %105

93:                                               ; preds = %76
  %94 = load i8*, i8** @GB_SDIO_TIMING_UHS_SDR50, align 8
  store i8* %94, i8** %10, align 8
  br label %105

95:                                               ; preds = %76
  %96 = load i8*, i8** @GB_SDIO_TIMING_UHS_SDR104, align 8
  store i8* %96, i8** %10, align 8
  br label %105

97:                                               ; preds = %76
  %98 = load i8*, i8** @GB_SDIO_TIMING_UHS_DDR50, align 8
  store i8* %98, i8** %10, align 8
  br label %105

99:                                               ; preds = %76
  %100 = load i8*, i8** @GB_SDIO_TIMING_MMC_DDR52, align 8
  store i8* %100, i8** %10, align 8
  br label %105

101:                                              ; preds = %76
  %102 = load i8*, i8** @GB_SDIO_TIMING_MMC_HS200, align 8
  store i8* %102, i8** %10, align 8
  br label %105

103:                                              ; preds = %76
  %104 = load i8*, i8** @GB_SDIO_TIMING_MMC_HS400, align 8
  store i8* %104, i8** %10, align 8
  br label %105

105:                                              ; preds = %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %83
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds %struct.gb_sdio_set_ios_request, %struct.gb_sdio_set_ios_request* %6, i32 0, i32 2
  store i8* %106, i8** %107, align 8
  %108 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %109 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %114 [
    i32 139, label %111
    i32 140, label %113
    i32 141, label %116
  ]

111:                                              ; preds = %105
  %112 = load i8*, i8** @GB_SDIO_SIGNAL_VOLTAGE_330, align 8
  store i8* %112, i8** %11, align 8
  br label %118

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %105, %113
  %115 = load i8*, i8** @GB_SDIO_SIGNAL_VOLTAGE_180, align 8
  store i8* %115, i8** %11, align 8
  br label %118

116:                                              ; preds = %105
  %117 = load i8*, i8** @GB_SDIO_SIGNAL_VOLTAGE_120, align 8
  store i8* %117, i8** %11, align 8
  br label %118

118:                                              ; preds = %116, %114, %111
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds %struct.gb_sdio_set_ios_request, %struct.gb_sdio_set_ios_request* %6, i32 0, i32 1
  store i8* %119, i8** %120, align 8
  %121 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %122 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %131 [
    i32 145, label %124
    i32 143, label %126
    i32 142, label %128
    i32 144, label %130
  ]

124:                                              ; preds = %118
  %125 = load i8*, i8** @GB_SDIO_SET_DRIVER_TYPE_A, align 8
  store i8* %125, i8** %12, align 8
  br label %133

126:                                              ; preds = %118
  %127 = load i8*, i8** @GB_SDIO_SET_DRIVER_TYPE_C, align 8
  store i8* %127, i8** %12, align 8
  br label %133

128:                                              ; preds = %118
  %129 = load i8*, i8** @GB_SDIO_SET_DRIVER_TYPE_D, align 8
  store i8* %129, i8** %12, align 8
  br label %133

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %118, %130
  %132 = load i8*, i8** @GB_SDIO_SET_DRIVER_TYPE_B, align 8
  store i8* %132, i8** %12, align 8
  br label %133

133:                                              ; preds = %131, %128, %126, %124
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds %struct.gb_sdio_set_ios_request, %struct.gb_sdio_set_ios_request* %6, i32 0, i32 0
  store i8* %134, i8** %135, align 8
  %136 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %137 = call i32 @gb_sdio_set_ios(%struct.gb_sdio_host* %136, %struct.gb_sdio_set_ios_request* %6)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %146

141:                                              ; preds = %133
  %142 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %143 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %142, i32 0, i32 0
  %144 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %145 = call i32 @memcpy(i32* %143, %struct.mmc_ios* %144, i32 4)
  br label %146

146:                                              ; preds = %141, %140
  %147 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %148 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %147, i32 0, i32 0
  %149 = call i32 @mutex_unlock(i32* %148)
  ret void
}

declare dso_local %struct.gb_sdio_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @gb_sdio_set_ios(%struct.gb_sdio_host*, %struct.gb_sdio_set_ios_request*) #1

declare dso_local i32 @memcpy(i32*, %struct.mmc_ios*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
