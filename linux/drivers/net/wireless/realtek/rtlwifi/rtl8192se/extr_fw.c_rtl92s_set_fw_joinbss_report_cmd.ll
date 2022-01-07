; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c_rtl92s_set_fw_joinbss_report_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c_rtl92s_set_fw_joinbss_report_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_mac = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.h2c_joinbss_rpt_parm = type { i32*, i8*, i8* }

@FW_H2C_JOINBSSRPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92s_set_fw_joinbss_report_cmd(%struct.ieee80211_hw* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  %8 = alloca %struct.h2c_joinbss_rpt_parm, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call i32 @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_mac* @rtl_mac(i32 %10)
  store %struct.rtl_mac* %11, %struct.rtl_mac** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, %struct.h2c_joinbss_rpt_parm* %8, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, %struct.h2c_joinbss_rpt_parm* %8, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %17 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, %struct.h2c_joinbss_rpt_parm* %8, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %25 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, %struct.h2c_joinbss_rpt_parm* %8, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %33 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, %struct.h2c_joinbss_rpt_parm* %8, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %36, i32* %39, align 4
  %40 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %41 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, %struct.h2c_joinbss_rpt_parm* %8, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  store i32 %44, i32* %47, align 4
  %48 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %49 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, %struct.h2c_joinbss_rpt_parm* %8, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %52, i32* %55, align 4
  %56 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %57 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, %struct.h2c_joinbss_rpt_parm* %8, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  store i32 %60, i32* %63, align 4
  %64 = bitcast %struct.h2c_joinbss_rpt_parm* %8 to i8**
  %65 = getelementptr inbounds i8*, i8** %64, i64 8
  %66 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %67 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SET_BITS_TO_LE_2BYTE(i8** %65, i32 0, i32 16, i32 %71)
  %73 = bitcast %struct.h2c_joinbss_rpt_parm* %8 to i8**
  %74 = getelementptr inbounds i8*, i8** %73, i64 10
  %75 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %76 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @SET_BITS_TO_LE_2BYTE(i8** %74, i32 0, i32 16, i32 %77)
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %80 = load i32, i32* @FW_H2C_JOINBSSRPT, align 4
  %81 = bitcast %struct.h2c_joinbss_rpt_parm* %8 to i8**
  %82 = call i32 @_rtl92s_firmware_set_h2c_cmd(%struct.ieee80211_hw* %79, i32 %80, i8** %81)
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @SET_BITS_TO_LE_2BYTE(i8**, i32, i32, i32) #1

declare dso_local i32 @_rtl92s_firmware_set_h2c_cmd(%struct.ieee80211_hw*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
