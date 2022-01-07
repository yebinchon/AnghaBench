; ModuleID = '/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3av.c_ps3av_get_hw_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3av.c_ps3av_get_hw_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3av = type { i32, i8**, i8**, i64*, %struct.ps3av_pkt_av_get_hw_conf }
%struct.ps3av_pkt_av_get_hw_conf = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"av_h_conf: num of hdmi: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"av_h_conf: num of avmulti: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"av_h_conf: num of spdif: %u\0A\00", align 1
@PS3AV_HEAD_MAX = common dso_local global i32 0, align 4
@PS3AV_CMD_VIDEO_HEAD_A = common dso_local global i64 0, align 8
@PS3AV_OPT_PORT_MAX = common dso_local global i32 0, align 4
@PS3AV_CMD_AVPORT_SPDIF_0 = common dso_local global i8* null, align 8
@PS3AV_CMD_AVPORT_HDMI_0 = common dso_local global i8* null, align 8
@PS3AV_CMD_AVPORT_AVMULTI_0 = common dso_local global i8* null, align 8
@PS3AV_CMD_AUDIO_PORT_HDMI_0 = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_PORT_HDMI_1 = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_PORT_AVMULTI_0 = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_PORT_SPDIF_0 = common dso_local global i32 0, align 4
@PS3AV_CMD_AUDIO_PORT_SPDIF_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3av*)* @ps3av_get_hw_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3av_get_hw_conf(%struct.ps3av* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ps3av*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ps3av_pkt_av_get_hw_conf*, align 8
  store %struct.ps3av* %0, %struct.ps3av** %3, align 8
  %9 = load %struct.ps3av*, %struct.ps3av** %3, align 8
  %10 = getelementptr inbounds %struct.ps3av, %struct.ps3av* %9, i32 0, i32 4
  %11 = call i32 @ps3av_cmd_av_get_hw_conf(%struct.ps3av_pkt_av_get_hw_conf* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %148

15:                                               ; preds = %1
  %16 = load %struct.ps3av*, %struct.ps3av** %3, align 8
  %17 = getelementptr inbounds %struct.ps3av, %struct.ps3av* %16, i32 0, i32 4
  store %struct.ps3av_pkt_av_get_hw_conf* %17, %struct.ps3av_pkt_av_get_hw_conf** %8, align 8
  %18 = load %struct.ps3av_pkt_av_get_hw_conf*, %struct.ps3av_pkt_av_get_hw_conf** %8, align 8
  %19 = getelementptr inbounds %struct.ps3av_pkt_av_get_hw_conf, %struct.ps3av_pkt_av_get_hw_conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ps3av_pkt_av_get_hw_conf*, %struct.ps3av_pkt_av_get_hw_conf** %8, align 8
  %23 = getelementptr inbounds %struct.ps3av_pkt_av_get_hw_conf, %struct.ps3av_pkt_av_get_hw_conf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.ps3av_pkt_av_get_hw_conf*, %struct.ps3av_pkt_av_get_hw_conf** %8, align 8
  %27 = getelementptr inbounds %struct.ps3av_pkt_av_get_hw_conf, %struct.ps3av_pkt_av_get_hw_conf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %45, %15
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PS3AV_HEAD_MAX, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i64, i64* @PS3AV_CMD_VIDEO_HEAD_A, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.ps3av*, %struct.ps3av** %3, align 8
  %40 = getelementptr inbounds %struct.ps3av, %struct.ps3av* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 %38, i64* %44, align 8
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %30

48:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @PS3AV_OPT_PORT_MAX, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i8*, i8** @PS3AV_CMD_AVPORT_SPDIF_0, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = load %struct.ps3av*, %struct.ps3av** %3, align 8
  %59 = getelementptr inbounds %struct.ps3av, %struct.ps3av* %58, i32 0, i32 2
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %57, i8** %63, align 8
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %49

67:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.ps3av_pkt_av_get_hw_conf*, %struct.ps3av_pkt_av_get_hw_conf** %8, align 8
  %71 = getelementptr inbounds %struct.ps3av_pkt_av_get_hw_conf, %struct.ps3av_pkt_av_get_hw_conf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load i8*, i8** @PS3AV_CMD_AVPORT_HDMI_0, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr i8, i8* %75, i64 %77
  %79 = load %struct.ps3av*, %struct.ps3av** %3, align 8
  %80 = getelementptr inbounds %struct.ps3av, %struct.ps3av* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %78, i8** %84, align 8
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %68

88:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %108, %88
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.ps3av_pkt_av_get_hw_conf*, %struct.ps3av_pkt_av_get_hw_conf** %8, align 8
  %92 = getelementptr inbounds %struct.ps3av_pkt_av_get_hw_conf, %struct.ps3av_pkt_av_get_hw_conf* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load i8*, i8** @PS3AV_CMD_AVPORT_AVMULTI_0, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr i8, i8* %96, i64 %98
  %100 = load %struct.ps3av*, %struct.ps3av** %3, align 8
  %101 = getelementptr inbounds %struct.ps3av, %struct.ps3av* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %102, i64 %106
  store i8* %99, i8** %107, align 8
  br label %108

108:                                              ; preds = %95
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %89

111:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %133, %111
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.ps3av_pkt_av_get_hw_conf*, %struct.ps3av_pkt_av_get_hw_conf** %8, align 8
  %115 = getelementptr inbounds %struct.ps3av_pkt_av_get_hw_conf, %struct.ps3av_pkt_av_get_hw_conf* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %112
  %119 = load i8*, i8** @PS3AV_CMD_AVPORT_SPDIF_0, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr i8, i8* %119, i64 %121
  %123 = load %struct.ps3av*, %struct.ps3av** %3, align 8
  %124 = getelementptr inbounds %struct.ps3av, %struct.ps3av* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %125, i64 %131
  store i8* %122, i8** %132, align 8
  br label %133

133:                                              ; preds = %118
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %112

136:                                              ; preds = %112
  %137 = load i32, i32* @PS3AV_CMD_AUDIO_PORT_HDMI_0, align 4
  %138 = load i32, i32* @PS3AV_CMD_AUDIO_PORT_HDMI_1, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @PS3AV_CMD_AUDIO_PORT_AVMULTI_0, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @PS3AV_CMD_AUDIO_PORT_SPDIF_0, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @PS3AV_CMD_AUDIO_PORT_SPDIF_1, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.ps3av*, %struct.ps3av** %3, align 8
  %147 = getelementptr inbounds %struct.ps3av, %struct.ps3av* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %136, %14
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @ps3av_cmd_av_get_hw_conf(%struct.ps3av_pkt_av_get_hw_conf*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
