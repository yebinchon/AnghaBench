; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i64, i64, i32, i32, i32, i32* }

@DPR_ADC_BUFFER = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@DPR_PARAM5_AD_TRIG_INT_RETRIG = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i32 0, align 4
@DPR_PARAM6_AD_DIFF = common dso_local global i32 0, align 4
@DPR_AI_FIFO_DEPTH = common dso_local global i32 0, align 4
@DPR_SUBSYS_AI = common dso_local global i32 0, align 4
@DPR_SUBSYS = common dso_local global i64 0, align 8
@DPR_CMD_CONFIG = common dso_local global i32 0, align 4
@DPR_INTR_ADFULL = common dso_local global i32 0, align 4
@DPR_INTR_ADSWERR = common dso_local global i32 0, align 4
@DPR_INTR_ADHWERR = common dso_local global i32 0, align 4
@DPR_INT_MASK = common dso_local global i64 0, align 8
@debug_n_ints = common dso_local global i64 0, align 8
@DPR_CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt3k_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3k_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.comedi_cmd* %15, %struct.comedi_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %52, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %16
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CR_CHAN(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CR_RANGE(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 6
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DPR_ADC_BUFFER, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @writew(i32 %42, i64 %50)
  br label %52

52:                                               ; preds = %22
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %16

55:                                               ; preds = %16
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @CR_AREF(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @DPR_PARAMS(i32 0)
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writew(i32 %64, i64 %69)
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TRIG_TIMER, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %55
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 6
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dt3k_ns_to_timer(i32 50, i32* %78, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = lshr i32 %83, 16
  %85 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @DPR_PARAMS(i32 1)
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writew(i32 %84, i64 %89)
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, 65535
  %93 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @DPR_PARAMS(i32 2)
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writew(i32 %92, i64 %97)
  br label %99

99:                                               ; preds = %76, %55
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TRIG_TIMER, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %99
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 5
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dt3k_ns_to_timer(i32 100, i32* %107, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = lshr i32 %112, 16
  %114 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @DPR_PARAMS(i32 3)
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writew(i32 %113, i64 %118)
  %120 = load i32, i32* %11, align 4
  %121 = and i32 %120, 65535
  %122 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @DPR_PARAMS(i32 4)
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writew(i32 %121, i64 %126)
  br label %128

128:                                              ; preds = %105, %99
  %129 = load i32, i32* @DPR_PARAM5_AD_TRIG_INT_RETRIG, align 4
  %130 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %131 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @DPR_PARAMS(i32 5)
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writew(i32 %129, i64 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @AREF_DIFF, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %128
  %140 = load i32, i32* @DPR_PARAM6_AD_DIFF, align 4
  br label %142

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %139
  %143 = phi i32 [ %140, %139 ], [ 0, %141 ]
  %144 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %145 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @DPR_PARAMS(i32 6)
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writew(i32 %143, i64 %148)
  %150 = load i32, i32* @DPR_AI_FIFO_DEPTH, align 4
  %151 = sdiv i32 %150, 2
  %152 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %153 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @DPR_PARAMS(i32 7)
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writew(i32 %151, i64 %156)
  %158 = load i32, i32* @DPR_SUBSYS_AI, align 4
  %159 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %160 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @DPR_SUBSYS, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writew(i32 %158, i64 %163)
  %165 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %166 = load i32, i32* @DPR_CMD_CONFIG, align 4
  %167 = call i32 @dt3k_send_cmd(%struct.comedi_device* %165, i32 %166)
  %168 = load i32, i32* @DPR_INTR_ADFULL, align 4
  %169 = load i32, i32* @DPR_INTR_ADSWERR, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @DPR_INTR_ADHWERR, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %174 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @DPR_INT_MASK, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writew(i32 %172, i64 %177)
  store i64 0, i64* @debug_n_ints, align 8
  %179 = load i32, i32* @DPR_SUBSYS_AI, align 4
  %180 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %181 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @DPR_SUBSYS, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writew(i32 %179, i64 %184)
  %186 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %187 = load i32, i32* @DPR_CMD_START, align 4
  %188 = call i32 @dt3k_send_cmd(%struct.comedi_device* %186, i32 %187)
  ret i32 0
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i64 @DPR_PARAMS(i32) #1

declare dso_local i32 @dt3k_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @dt3k_send_cmd(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
