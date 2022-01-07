; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rts5208_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rts5208_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, i32, i32, i32, i64 }

@CLK_SEL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Value of phy register 0x1C is 0x%x\0A\00", align 1
@PHY_DEBUG_MODE = common dso_local global i32 0, align 4
@PDINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"PDINFO: 0x%x\0A\00", align 1
@AUX_PWR_DETECTED = common dso_local global i32 0, align 4
@CHANGE_LINK_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @rts5208_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5208_init(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = load i32, i32* @CLK_SEL, align 4
  %9 = call i32 @rtsx_write_register(%struct.rtsx_chip* %7, i32 %8, i32 3, i32 3)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %141

14:                                               ; preds = %1
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %16 = load i32, i32* @CLK_SEL, align 4
  %17 = call i32 @rtsx_read_register(%struct.rtsx_chip* %15, i32 %16, i32* %6)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %141

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %28 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %30 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %22
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %35 = call i32 @rtsx_read_phy_register(%struct.rtsx_chip* %34, i32 28, i32* %5)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @STATUS_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %40, i32* %2, align 4
  br label %141

41:                                               ; preds = %33
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %43 = call i32 @rtsx_dev(%struct.rtsx_chip* %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 4
  %48 = and i32 %47, 7
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %50 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @PHY_DEBUG_MODE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %58 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %72

59:                                               ; preds = %22
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %61 = call i32 @rtsx_read_register(%struct.rtsx_chip* %60, i32 65152, i32* %6)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %141

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %69 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %71 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %66, %41
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %74 = load i32, i32* @PDINFO, align 4
  %75 = call i32 @rtsx_read_register(%struct.rtsx_chip* %73, i32 %74, i32* %6)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %141

80:                                               ; preds = %72
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %82 = call i32 @rtsx_dev(%struct.rtsx_chip* %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @AUX_PWR_DETECTED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %92 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %94 = call i32 @rtsx_read_register(%struct.rtsx_chip* %93, i32 65104, i32* %6)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %80
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %141

99:                                               ; preds = %80
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  %105 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %106 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %108 = call i32 @rtsx_read_config_byte(%struct.rtsx_chip* %107, i32 14, i32* %6)
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 128
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %99
  %113 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %114 = call i32 @SET_SDIO_EXIST(%struct.rtsx_chip* %113)
  br label %118

115:                                              ; preds = %99
  %116 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %117 = call i32 @CLR_SDIO_EXIST(%struct.rtsx_chip* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %120 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %125 = load i32, i32* @CHANGE_LINK_STATE, align 4
  %126 = call i32 @rtsx_read_register(%struct.rtsx_chip* %124, i32 %125, i32* %6)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* %2, align 4
  br label %141

131:                                              ; preds = %123
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, 128
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 1, i32 0
  %137 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %138 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %131, %118
  %140 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %129, %97, %78, %64, %39, %20, %12
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @rtsx_read_phy_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_config_byte(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @SET_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i32 @CLR_SDIO_EXIST(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
