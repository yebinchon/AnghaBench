; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_add_rx_gtk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_add_rx_gtk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64* }
%struct.wilc_gtk_key = type { i32, i32*, i64, i32*, i32* }
%struct.wid = type { i32, i64*, i8*, i8* }

@WILC_RX_MIC_KEY_LEN = common dso_local global i64 0, align 8
@WILC_TX_MIC_KEY_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WILC_STATION_MODE = common dso_local global i64 0, align 8
@HOST_IF_CONNECTED = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@WILC_AP_MODE = common dso_local global i64 0, align 8
@WID_11I_MODE = common dso_local global i8* null, align 8
@WID_CHAR = common dso_local global i8* null, align 8
@WID_ADD_RX_GTK = common dso_local global i8* null, align 8
@WID_STR = common dso_local global i8* null, align 8
@WILC_SET_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_add_rx_gtk(%struct.wilc_vif* %0, i64* %1, i64 %2, i64 %3, i32 %4, i64* %5, i64* %6, i64* %7, i64 %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.wilc_vif*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.wilc_gtk_key*, align 8
  %24 = alloca i32, align 4
  %25 = alloca [2 x %struct.wid], align 16
  %26 = alloca %struct.wid, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %12, align 8
  store i64* %1, i64** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i64* %5, i64** %17, align 8
  store i64* %6, i64** %18, align 8
  store i64* %7, i64** %19, align 8
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* @WILC_RX_MIC_KEY_LEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @WILC_TX_MIC_KEY_LEN, align 8
  %31 = add nsw i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %24, align 4
  %33 = load i32, i32* %24, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 40, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.wilc_gtk_key* @kzalloc(i32 %36, i32 %37)
  store %struct.wilc_gtk_key* %38, %struct.wilc_gtk_key** %23, align 8
  %39 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %40 = icmp ne %struct.wilc_gtk_key* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %10
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %177

44:                                               ; preds = %10
  %45 = load i64, i64* %20, align 8
  %46 = load i64, i64* @WILC_STATION_MODE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load %struct.wilc_vif*, %struct.wilc_vif** %12, align 8
  %50 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HOST_IF_CONNECTED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %58 = getelementptr inbounds %struct.wilc_gtk_key, %struct.wilc_gtk_key* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.wilc_vif*, %struct.wilc_vif** %12, align 8
  %61 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @ETH_ALEN, align 8
  %66 = call i32 @memcpy(i32* %59, i64* %64, i64 %65)
  br label %67

67:                                               ; preds = %56, %48, %44
  %68 = load i64*, i64** %17, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %72 = getelementptr inbounds %struct.wilc_gtk_key, %struct.wilc_gtk_key* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i64*, i64** %17, align 8
  %75 = call i32 @memcpy(i32* %73, i64* %74, i64 8)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i64, i64* %15, align 8
  %78 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %79 = getelementptr inbounds %struct.wilc_gtk_key, %struct.wilc_gtk_key* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %24, align 4
  %81 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %82 = getelementptr inbounds %struct.wilc_gtk_key, %struct.wilc_gtk_key* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %84 = getelementptr inbounds %struct.wilc_gtk_key, %struct.wilc_gtk_key* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i64*, i64** %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i32 @memcpy(i32* %86, i64* %87, i64 %88)
  %90 = load i64*, i64** %18, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %76
  %93 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %94 = getelementptr inbounds %struct.wilc_gtk_key, %struct.wilc_gtk_key* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i64*, i64** %18, align 8
  %99 = load i64, i64* @WILC_RX_MIC_KEY_LEN, align 8
  %100 = call i32 @memcpy(i32* %97, i64* %98, i64 %99)
  br label %101

101:                                              ; preds = %92, %76
  %102 = load i64*, i64** %19, align 8
  %103 = icmp ne i64* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %106 = getelementptr inbounds %struct.wilc_gtk_key, %struct.wilc_gtk_key* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* @WILC_RX_MIC_KEY_LEN, align 8
  %110 = add nsw i64 %108, %109
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i64*, i64** %19, align 8
  %113 = load i64, i64* @WILC_TX_MIC_KEY_LEN, align 8
  %114 = call i32 @memcpy(i32* %111, i64* %112, i64 %113)
  br label %115

115:                                              ; preds = %104, %101
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* @WILC_AP_MODE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %152

119:                                              ; preds = %115
  %120 = load i8*, i8** @WID_11I_MODE, align 8
  %121 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %25, i64 0, i64 0
  %122 = getelementptr inbounds %struct.wid, %struct.wid* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** @WID_CHAR, align 8
  %124 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %25, i64 0, i64 0
  %125 = getelementptr inbounds %struct.wid, %struct.wid* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 16
  %126 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %25, i64 0, i64 0
  %127 = getelementptr inbounds %struct.wid, %struct.wid* %126, i32 0, i32 0
  store i32 1, i32* %127, align 16
  %128 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %25, i64 0, i64 0
  %129 = getelementptr inbounds %struct.wid, %struct.wid* %128, i32 0, i32 1
  store i64* %21, i64** %129, align 8
  %130 = load i8*, i8** @WID_ADD_RX_GTK, align 8
  %131 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %25, i64 0, i64 1
  %132 = getelementptr inbounds %struct.wid, %struct.wid* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @WID_STR, align 8
  %134 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %25, i64 0, i64 1
  %135 = getelementptr inbounds %struct.wid, %struct.wid* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 16
  %136 = load i32, i32* %24, align 4
  %137 = sext i32 %136 to i64
  %138 = add i64 40, %137
  %139 = trunc i64 %138 to i32
  %140 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %25, i64 0, i64 1
  %141 = getelementptr inbounds %struct.wid, %struct.wid* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 16
  %142 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %143 = bitcast %struct.wilc_gtk_key* %142 to i64*
  %144 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %25, i64 0, i64 1
  %145 = getelementptr inbounds %struct.wid, %struct.wid* %144, i32 0, i32 1
  store i64* %143, i64** %145, align 8
  %146 = load %struct.wilc_vif*, %struct.wilc_vif** %12, align 8
  %147 = load i32, i32* @WILC_SET_CFG, align 4
  %148 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %25, i64 0, i64 0
  %149 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %25, i64 0, i64 0
  %150 = call i32 @ARRAY_SIZE(%struct.wid* %149)
  %151 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %146, i32 %147, %struct.wid* %148, i32 %150)
  store i32 %151, i32* %22, align 4
  br label %173

152:                                              ; preds = %115
  %153 = load i64, i64* %20, align 8
  %154 = load i64, i64* @WILC_STATION_MODE, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load i8*, i8** @WID_ADD_RX_GTK, align 8
  %158 = getelementptr inbounds %struct.wid, %struct.wid* %26, i32 0, i32 3
  store i8* %157, i8** %158, align 8
  %159 = load i8*, i8** @WID_STR, align 8
  %160 = getelementptr inbounds %struct.wid, %struct.wid* %26, i32 0, i32 2
  store i8* %159, i8** %160, align 8
  %161 = load i32, i32* %24, align 4
  %162 = sext i32 %161 to i64
  %163 = add i64 40, %162
  %164 = trunc i64 %163 to i32
  %165 = getelementptr inbounds %struct.wid, %struct.wid* %26, i32 0, i32 0
  store i32 %164, i32* %165, align 8
  %166 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %167 = bitcast %struct.wilc_gtk_key* %166 to i64*
  %168 = getelementptr inbounds %struct.wid, %struct.wid* %26, i32 0, i32 1
  store i64* %167, i64** %168, align 8
  %169 = load %struct.wilc_vif*, %struct.wilc_vif** %12, align 8
  %170 = load i32, i32* @WILC_SET_CFG, align 4
  %171 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %169, i32 %170, %struct.wid* %26, i32 1)
  store i32 %171, i32* %22, align 4
  br label %172

172:                                              ; preds = %156, %152
  br label %173

173:                                              ; preds = %172, %119
  %174 = load %struct.wilc_gtk_key*, %struct.wilc_gtk_key** %23, align 8
  %175 = call i32 @kfree(%struct.wilc_gtk_key* %174)
  %176 = load i32, i32* %22, align 4
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %173, %41
  %178 = load i32, i32* %11, align 4
  ret i32 %178
}

declare dso_local %struct.wilc_gtk_key* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.wid*) #1

declare dso_local i32 @kfree(%struct.wilc_gtk_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
