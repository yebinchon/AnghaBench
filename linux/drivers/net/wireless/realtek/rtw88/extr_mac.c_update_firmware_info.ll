; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_update_firmware_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_update_firmware_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_fw_state = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8** }

@FW_HDR_H2C_FMT_VER = common dso_local global i32 0, align 4
@FW_HDR_VERSION = common dso_local global i32 0, align 4
@FW_HDR_SUBVERSION = common dso_local global i32 0, align 4
@FW_HDR_SUBINDEX = common dso_local global i32 0, align 4
@RTW_DBG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"fw h2c version: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"fw version:     %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"fw sub version: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"fw sub index:   %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_fw_state*)* @update_firmware_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_firmware_info(%struct.rtw_dev* %0, %struct.rtw_fw_state* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_fw_state*, align 8
  %5 = alloca i8**, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_fw_state* %1, %struct.rtw_fw_state** %4, align 8
  %6 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %7 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  store i8** %10, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i32, i32* @FW_HDR_H2C_FMT_VER, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = bitcast i8** %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @le16_to_cpu(i32 %16)
  %18 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %19 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* @FW_HDR_VERSION, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = bitcast i8** %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @le16_to_cpu(i32 %25)
  %27 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %28 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* @FW_HDR_SUBVERSION, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %35 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* @FW_HDR_SUBINDEX, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %42 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %44 = load i32, i32* @RTW_DBG_FW, align 4
  %45 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %46 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @rtw_dbg(%struct.rtw_dev* %43, i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %50 = load i32, i32* @RTW_DBG_FW, align 4
  %51 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %52 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @rtw_dbg(%struct.rtw_dev* %49, i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %56 = load i32, i32* @RTW_DBG_FW, align 4
  %57 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %58 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @rtw_dbg(%struct.rtw_dev* %55, i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %62 = load i32, i32* @RTW_DBG_FW, align 4
  %63 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %64 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @rtw_dbg(%struct.rtw_dev* %61, i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
