; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_voltage_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_voltage_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@SD_BUS_STAT = common dso_local global i32 0, align 4
@SD_CLK_TOGGLE_EN = common dso_local global i32 0, align 4
@SD_CLK_FORCE_STOP = common dso_local global i32 0, align 4
@VOLTAGE_SWITCH = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_CMD_STATUS = common dso_local global i32 0, align 4
@SD_DAT3_STATUS = common dso_local global i32 0, align 4
@SD_DAT2_STATUS = common dso_local global i32 0, align 4
@SD_DAT1_STATUS = common dso_local global i32 0, align 4
@SD_DAT0_STATUS = common dso_local global i32 0, align 4
@SD_IO_1V8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SD_BUS_STAT: 0x%x\0A\00", align 1
@CARD_CLK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_voltage_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_voltage_switch(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = load i32, i32* @SD_BUS_STAT, align 4
  %8 = load i32, i32* @SD_CLK_TOGGLE_EN, align 4
  %9 = load i32, i32* @SD_CLK_FORCE_STOP, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SD_CLK_TOGGLE_EN, align 4
  %12 = call i32 @rtsx_write_register(%struct.rtsx_chip* %6, i32 %7, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %141

17:                                               ; preds = %1
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %19 = load i32, i32* @VOLTAGE_SWITCH, align 4
  %20 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %21 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %18, i32 %19, i32 0, i32 %20, i32* null, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @STATUS_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %26, i32* %2, align 4
  br label %141

27:                                               ; preds = %17
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %29 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @udelay(i32 %30)
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %33 = load i32, i32* @SD_BUS_STAT, align 4
  %34 = call i32 @rtsx_read_register(%struct.rtsx_chip* %32, i32 %33, i32* %5)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %141

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SD_CMD_STATUS, align 4
  %42 = load i32, i32* @SD_DAT3_STATUS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SD_DAT2_STATUS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SD_DAT1_STATUS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SD_DAT0_STATUS, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %40, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %53, i32* %2, align 4
  br label %141

54:                                               ; preds = %39
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %56 = load i32, i32* @SD_BUS_STAT, align 4
  %57 = load i32, i32* @SD_CLK_FORCE_STOP, align 4
  %58 = call i32 @rtsx_write_register(%struct.rtsx_chip* %55, i32 %56, i32 255, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %141

63:                                               ; preds = %54
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %65 = load i32, i32* @SD_IO_1V8, align 4
  %66 = call i32 @sd_change_bank_voltage(%struct.rtsx_chip* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @STATUS_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %71, i32* %2, align 4
  br label %141

72:                                               ; preds = %63
  %73 = call i32 @wait_timeout(i32 50)
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %75 = load i32, i32* @SD_BUS_STAT, align 4
  %76 = load i32, i32* @SD_CLK_TOGGLE_EN, align 4
  %77 = call i32 @rtsx_write_register(%struct.rtsx_chip* %74, i32 %75, i32 255, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %141

82:                                               ; preds = %72
  %83 = call i32 @wait_timeout(i32 10)
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %85 = load i32, i32* @SD_BUS_STAT, align 4
  %86 = call i32 @rtsx_read_register(%struct.rtsx_chip* %84, i32 %85, i32* %5)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %141

91:                                               ; preds = %82
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @SD_CMD_STATUS, align 4
  %94 = load i32, i32* @SD_DAT3_STATUS, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SD_DAT2_STATUS, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SD_DAT1_STATUS, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SD_DAT0_STATUS, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %92, %101
  %103 = load i32, i32* @SD_CMD_STATUS, align 4
  %104 = load i32, i32* @SD_DAT3_STATUS, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SD_DAT2_STATUS, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SD_DAT1_STATUS, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SD_DAT0_STATUS, align 4
  %111 = or i32 %109, %110
  %112 = icmp ne i32 %102, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %91
  %114 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %115 = call i32 @rtsx_dev(%struct.rtsx_chip* %114)
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @dev_dbg(i32 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %119 = load i32, i32* @SD_BUS_STAT, align 4
  %120 = load i32, i32* @SD_CLK_TOGGLE_EN, align 4
  %121 = load i32, i32* @SD_CLK_FORCE_STOP, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @rtsx_write_register(%struct.rtsx_chip* %118, i32 %119, i32 %122, i32 0)
  %124 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %125 = load i32, i32* @CARD_CLK_EN, align 4
  %126 = call i32 @rtsx_write_register(%struct.rtsx_chip* %124, i32 %125, i32 255, i32 0)
  %127 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %127, i32* %2, align 4
  br label %141

128:                                              ; preds = %91
  %129 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %130 = load i32, i32* @SD_BUS_STAT, align 4
  %131 = load i32, i32* @SD_CLK_TOGGLE_EN, align 4
  %132 = load i32, i32* @SD_CLK_FORCE_STOP, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @rtsx_write_register(%struct.rtsx_chip* %129, i32 %130, i32 %133, i32 0)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* %4, align 4
  store i32 %138, i32* %2, align 4
  br label %141

139:                                              ; preds = %128
  %140 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %137, %113, %89, %80, %70, %61, %52, %37, %25, %15
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @sd_change_bank_voltage(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
