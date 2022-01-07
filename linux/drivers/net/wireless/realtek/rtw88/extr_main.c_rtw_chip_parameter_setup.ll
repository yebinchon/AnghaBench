; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_chip_parameter_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_chip_parameter_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal, %struct.TYPE_2__, %struct.rtw_efuse, %struct.rtw_chip_info* }
%struct.rtw_hal = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rtw_efuse = type { i32, i32, i32 }
%struct.rtw_chip_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"unsupported hci type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_SYS_CFG1 = common dso_local global i32 0, align 4
@BIT_RTL_ID = common dso_local global i32 0, align 4
@BIT_RF_TYPE_ID = common dso_local global i32 0, align 4
@RF_2T2R = common dso_local global i32 0, align 4
@BB_PATH_AB = common dso_local global i8* null, align 8
@RF_1T1R = common dso_local global i32 0, align 4
@BB_PATH_A = common dso_local global i8* null, align 8
@BIT_VHT_DACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_chip_parameter_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_chip_parameter_setup(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_chip_info*, align 8
  %5 = alloca %struct.rtw_hal*, align 8
  %6 = alloca %struct.rtw_efuse*, align 8
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 3
  %10 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  store %struct.rtw_chip_info* %10, %struct.rtw_chip_info** %4, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 0
  store %struct.rtw_hal* %12, %struct.rtw_hal** %5, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 2
  store %struct.rtw_efuse* %14, %struct.rtw_efuse** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %16 = call i32 @rtw_hci_type(%struct.rtw_dev* %15)
  switch i32 %16, label %21 [
    i32 128, label %17
  ]

17:                                               ; preds = %1
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 985, i32* %20, align 8
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %23 = call i32 @rtw_err(%struct.rtw_dev* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %125

26:                                               ; preds = %17
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %28 = load i32, i32* @REG_SYS_CFG1, align 4
  %29 = call i32 @rtw_read32(%struct.rtw_dev* %27, i32 %28)
  %30 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %31 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %33 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @BIT_GET_VENDOR_ID(i32 %34)
  %36 = ashr i32 %35, 2
  %37 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %38 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %40 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @BIT_GET_CHIP_VER(i32 %41)
  %43 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %44 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %46 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BIT_RTL_ID, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 1
  %53 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %54 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %56 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BIT_RF_TYPE_ID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %26
  %62 = load i32, i32* @RF_2T2R, align 4
  %63 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %64 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  %65 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %66 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %65, i32 0, i32 3
  store i32 2, i32* %66, align 4
  %67 = load i8*, i8** @BB_PATH_AB, align 8
  %68 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %69 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @BB_PATH_AB, align 8
  %71 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %72 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  br label %85

73:                                               ; preds = %26
  %74 = load i32, i32* @RF_1T1R, align 4
  %75 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %76 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 8
  %77 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %78 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  %79 = load i8*, i8** @BB_PATH_A, align 8
  %80 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %81 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @BB_PATH_A, align 8
  %83 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %84 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %73, %61
  %86 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %87 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %92 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %102

93:                                               ; preds = %85
  %94 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %95 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %100 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %99, i32 0, i32 1
  store i32 2, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %93
  br label %102

102:                                              ; preds = %101, %90
  %103 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %104 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %107 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %109 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %112 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %114 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %117 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @BIT_VHT_DACK, align 4
  %119 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %120 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %102, %21
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @rtw_hci_type(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @BIT_GET_VENDOR_ID(i32) #1

declare dso_local i32 @BIT_GET_CHIP_VER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
