; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_get_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_get_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.rf_info = type { i64, i32, i32, i32, i32 }
%struct.wid = type { i32, i32*, i8*, i32 }

@WID_LINKSPEED = common dso_local global i32 0, align 4
@WID_CHAR = common dso_local global i8* null, align 8
@WID_RSSI = common dso_local global i32 0, align 4
@WID_SUCCESS_FRAME_COUNT = common dso_local global i32 0, align 4
@WID_INT = common dso_local global i8* null, align 8
@WID_RECEIVED_FRAGMENT_COUNT = common dso_local global i32 0, align 4
@WID_FAILED_COUNT = common dso_local global i32 0, align 4
@WILC_GET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to send scan parameters\0A\00", align 1
@TCP_ACK_FILTER_LINK_SPEED_THRESH = common dso_local global i64 0, align 8
@DEFAULT_LINK_SPEED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_get_statistics(%struct.wilc_vif* %0, %struct.rf_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca %struct.rf_info*, align 8
  %6 = alloca [5 x %struct.wid], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %4, align 8
  store %struct.rf_info* %1, %struct.rf_info** %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* @WID_LINKSPEED, align 4
  %10 = load i64, i64* %7, align 8
  %11 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.wid, %struct.wid* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 8
  %13 = load i8*, i8** @WID_CHAR, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.wid, %struct.wid* %15, i32 0, i32 2
  store i8* %13, i8** %16, align 16
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.wid, %struct.wid* %18, i32 0, i32 0
  store i32 1, i32* %19, align 16
  %20 = load %struct.rf_info*, %struct.rf_info** %5, align 8
  %21 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %20, i32 0, i32 0
  %22 = bitcast i64* %21 to i32*
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.wid, %struct.wid* %24, i32 0, i32 1
  store i32* %22, i32** %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* @WID_RSSI, align 4
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.wid, %struct.wid* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load i8*, i8** @WID_CHAR, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.wid, %struct.wid* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 16
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.wid, %struct.wid* %37, i32 0, i32 0
  store i32 1, i32* %38, align 16
  %39 = load %struct.rf_info*, %struct.rf_info** %5, align 8
  %40 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %39, i32 0, i32 4
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.wid, %struct.wid* %42, i32 0, i32 1
  store i32* %40, i32** %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* @WID_SUCCESS_FRAME_COUNT, align 4
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.wid, %struct.wid* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load i8*, i8** @WID_INT, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.wid, %struct.wid* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 16
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.wid, %struct.wid* %55, i32 0, i32 0
  store i32 8, i32* %56, align 16
  %57 = load %struct.rf_info*, %struct.rf_info** %5, align 8
  %58 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %57, i32 0, i32 3
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.wid, %struct.wid* %60, i32 0, i32 1
  store i32* %58, i32** %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  %64 = load i32, i32* @WID_RECEIVED_FRAGMENT_COUNT, align 4
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.wid, %struct.wid* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 8
  %68 = load i8*, i8** @WID_INT, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.wid, %struct.wid* %70, i32 0, i32 2
  store i8* %68, i8** %71, align 16
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.wid, %struct.wid* %73, i32 0, i32 0
  store i32 8, i32* %74, align 16
  %75 = load %struct.rf_info*, %struct.rf_info** %5, align 8
  %76 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %75, i32 0, i32 2
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.wid, %struct.wid* %78, i32 0, i32 1
  store i32* %76, i32** %79, align 8
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %7, align 8
  %82 = load i32, i32* @WID_FAILED_COUNT, align 4
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.wid, %struct.wid* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 8
  %86 = load i8*, i8** @WID_INT, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.wid, %struct.wid* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 16
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.wid, %struct.wid* %91, i32 0, i32 0
  store i32 8, i32* %92, align 16
  %93 = load %struct.rf_info*, %struct.rf_info** %5, align 8
  %94 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %93, i32 0, i32 1
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.wid, %struct.wid* %96, i32 0, i32 1
  store i32* %94, i32** %97, align 8
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %7, align 8
  %100 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %101 = load i32, i32* @WILC_GET_CFG, align 4
  %102 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %6, i64 0, i64 0
  %103 = load i64, i64* %7, align 8
  %104 = call i64 @wilc_send_config_pkt(%struct.wilc_vif* %100, i32 %101, %struct.wid* %102, i64 %103)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %2
  %108 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %109 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @netdev_err(i32 %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %112 = load i64, i64* %8, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %3, align 4
  br label %142

114:                                              ; preds = %2
  %115 = load %struct.rf_info*, %struct.rf_info** %5, align 8
  %116 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TCP_ACK_FILTER_LINK_SPEED_THRESH, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.rf_info*, %struct.rf_info** %5, align 8
  %122 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DEFAULT_LINK_SPEED, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %128 = call i32 @wilc_enable_tcp_ack_filter(%struct.wilc_vif* %127, i32 1)
  br label %139

129:                                              ; preds = %120, %114
  %130 = load %struct.rf_info*, %struct.rf_info** %5, align 8
  %131 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DEFAULT_LINK_SPEED, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %137 = call i32 @wilc_enable_tcp_ack_filter(%struct.wilc_vif* %136, i32 0)
  br label %138

138:                                              ; preds = %135, %129
  br label %139

139:                                              ; preds = %138, %126
  %140 = load i64, i64* %8, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %107
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i64) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @wilc_enable_tcp_ack_filter(%struct.wilc_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
