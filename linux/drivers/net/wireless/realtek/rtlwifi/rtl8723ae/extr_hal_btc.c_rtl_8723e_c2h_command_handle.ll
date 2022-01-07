; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl_8723e_c2h_command_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl_8723e_c2h_command_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.rtl_priv*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (...)* }
%struct.c2h_evt_hdr = type { i32, i32, i32 }

@REG_C2HEVT_MSG_NORMAL = common dso_local global i32 0, align 4
@COMP_FW = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"&&&&&&: REG_C2HEVT_MSG_NORMAL is 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cmd_id: %d, cmd_len: %d, cmd_seq: %d\0A\00", align 1
@C2H_EVT_HOST_CLOSE = common dso_local global i32 0, align 4
@C2H_EVT_FW_CLOSE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"malloc cmd buf failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"BT info Byte[0] (ID) is 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"BT info Byte[1] (Seq) is 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"BT info Byte[2] (Data)= 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_8723e_c2h_command_handle(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.c2h_evt_hdr, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 @memset(%struct.c2h_evt_hdr* %4, i32 0, i32 12)
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = load i32, i32* @REG_C2HEVT_MSG_NORMAL, align 4
  %13 = call i8* @rtl_read_byte(%struct.rtl_priv* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = load i32, i32* @COMP_FW, align 4
  %17 = load i32, i32* @DBG_DMESG, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 15
  %22 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 240
  %25 = ashr i32 %24, 4
  %26 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = load i32, i32* @REG_C2HEVT_MSG_NORMAL, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i8* @rtl_read_byte(%struct.rtl_priv* %27, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = load i32, i32* @COMP_FW, align 4
  %35 = load i32, i32* @DBG_DMESG, align 4
  %36 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39, i32 %41)
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = call i8* @rtl_read_byte(%struct.rtl_priv* %43, i32 431)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @C2H_EVT_HOST_CLOSE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  br label %147

50:                                               ; preds = %1
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @C2H_EVT_FW_CLOSE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = call i32 @rtl_write_byte(%struct.rtl_priv* %55, i32 431, i32 0)
  br label %147

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32* @kzalloc(i32 %60, i32 %61)
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %67 = load i32, i32* @COMP_FW, align 4
  %68 = load i32, i32* @DBG_TRACE, align 4
  %69 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %147

70:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %88, %70
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = load i32, i32* @REG_C2HEVT_MSG_NORMAL, align 4
  %79 = add nsw i32 %78, 2
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i8* @rtl_read_byte(%struct.rtl_priv* %77, i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %71

91:                                               ; preds = %71
  %92 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %140 [
    i32 128, label %94
    i32 129, label %95
    i32 130, label %96
  ]

94:                                               ; preds = %91
  br label %141

95:                                               ; preds = %91
  br label %141

96:                                               ; preds = %91
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %98 = load i32, i32* @COMP_FW, align 4
  %99 = load i32, i32* @DBG_TRACE, align 4
  %100 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %104 = load i32, i32* @COMP_FW, align 4
  %105 = load i32, i32* @DBG_TRACE, align 4
  %106 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %110 = load i32, i32* @COMP_FW, align 4
  %111 = load i32, i32* @DBG_TRACE, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds %struct.c2h_evt_hdr, %struct.c2h_evt_hdr* %4, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @rtl8723e_dm_bt_parse_bt_info(%struct.ieee80211_hw* %116, i32* %117, i32 %119)
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %122 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32 (...)*, i32 (...)** %126, align 8
  %128 = call i32 (...) %127()
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %96
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %132 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32 (%struct.rtl_priv*)*, i32 (%struct.rtl_priv*)** %135, align 8
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %138 = call i32 %136(%struct.rtl_priv* %137)
  br label %139

139:                                              ; preds = %130, %96
  br label %141

140:                                              ; preds = %91
  br label %141

141:                                              ; preds = %140, %139, %95, %94
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @kfree(i32* %142)
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %145 = load i32, i32* @C2H_EVT_HOST_CLOSE, align 4
  %146 = call i32 @rtl_write_byte(%struct.rtl_priv* %144, i32 431, i32 %145)
  br label %147

147:                                              ; preds = %141, %65, %54, %49
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @memset(%struct.c2h_evt_hdr*, i32, i32) #1

declare dso_local i8* @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_parse_bt_info(%struct.ieee80211_hw*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
