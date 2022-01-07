; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_check_wp_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_check_wp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, %struct.sd_info }
%struct.sd_info = type { i32 }

@APP_CMD = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_STATUS = common dso_local global i32 0, align 4
@SD_TM_NORMAL_READ = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ACMD13:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%*ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"sd_card_type = 0x%04x\0A\00", align 1
@SD_CARD = common dso_local global i32 0, align 4
@RTSX_BIPR = common dso_local global i32 0, align 4
@SD_WRITE_PROTECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_check_wp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_check_wp_state(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  %9 = alloca [64 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 1
  store %struct.sd_info* %11, %struct.sd_info** %4, align 8
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %13 = load i32, i32* @APP_CMD, align 4
  %14 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %15 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %18 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %12, i32 %13, i32 %16, i32 %17, i32* null, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %23, i32* %2, align 4
  br label %97

24:                                               ; preds = %1
  %25 = load i32, i32* @SD_STATUS, align 4
  %26 = or i32 64, %25
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 0, i32* %31, align 16
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %33 = load i32, i32* @SD_TM_NORMAL_READ, align 4
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %35 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %37 = call i32 @sd_read_data(%struct.rtsx_chip* %32, i32 %33, i32* %34, i32 5, i32 64, i32 1, i32 %35, i32* %36, i32 64, i32 250)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @STATUS_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %24
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %43 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %42)
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %45 = load i32, i32* @SEND_STATUS, align 4
  %46 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %47 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %50 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %44, i32 %45, i32 %48, i32 %49, i32* null, i32 0)
  %51 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %51, i32* %2, align 4
  br label %97

52:                                               ; preds = %24
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %54 = call i32 @rtsx_dev(%struct.rtsx_chip* %53)
  %55 = call i32 (i32, i8*, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %57 = call i32 @rtsx_dev(%struct.rtsx_chip* %56)
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %59 = call i32 (i32, i8*, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 64, i32* %58)
  %60 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 2
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 8
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %62, %64
  store i32 %65, i32* %7, align 4
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %67 = call i32 @rtsx_dev(%struct.rtsx_chip* %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32, i8*, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %75, label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %81

75:                                               ; preds = %72, %52
  %76 = load i32, i32* @SD_CARD, align 4
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %78 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %72
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %83 = load i32, i32* @RTSX_BIPR, align 4
  %84 = call i32 @rtsx_readl(%struct.rtsx_chip* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @SD_WRITE_PROTECT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i32, i32* @SD_CARD, align 4
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %92 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %81
  %96 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %41, %22
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sd_read_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_readl(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
