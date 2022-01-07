; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_5390.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_5390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT5390 = common dso_local global i32 0, align 4
@REV_RT5390F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_5390 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_5390(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %3 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %4 = call i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev* %3, i32 2)
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %5, i32 1, i32 15)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %7, i32 2, i32 128)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %9, i32 3, i32 136)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %11, i32 5, i32 16)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = load i32, i32* @RT5390, align 4
  %15 = load i32, i32* @REV_RT5390F, align 4
  %16 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %20 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %19, i32 6, i32 224)
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %22, i32 6, i32 160)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %25, i32 7, i32 0)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %27, i32 10, i32 83)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %29, i32 11, i32 74)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %31, i32 12, i32 70)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %33, i32 13, i32 159)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %36 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %35, i32 14, i32 0)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %37, i32 15, i32 0)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %39, i32 16, i32 0)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %41, i32 18, i32 3)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %43, i32 19, i32 0)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %45, i32 20, i32 0)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %48 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %47, i32 21, i32 0)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %49, i32 22, i32 32)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %52 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %51, i32 23, i32 0)
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %54 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %53, i32 24, i32 0)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %56 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %24
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %60 = load i32, i32* @RT5390, align 4
  %61 = load i32, i32* @REV_RT5390F, align 4
  %62 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %65, i32 25, i32 128)
  br label %70

67:                                               ; preds = %58, %24
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %69 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %68, i32 25, i32 192)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %72 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %71, i32 26, i32 0)
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %74 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %73, i32 27, i32 9)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %76 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %75, i32 28, i32 0)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %78 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %77, i32 29, i32 16)
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %80 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %79, i32 30, i32 16)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %82 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %81, i32 31, i32 128)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %84 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %83, i32 32, i32 128)
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %86 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %85, i32 33, i32 0)
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %88 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %87, i32 34, i32 7)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %90 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %89, i32 35, i32 18)
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %92 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %91, i32 36, i32 0)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %94 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %93, i32 37, i32 8)
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %96 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %95, i32 38, i32 133)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %98 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %97, i32 39, i32 27)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %100 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %99, i32 40, i32 11)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %102 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %101, i32 41, i32 187)
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %104 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %103, i32 42, i32 210)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %106 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %105, i32 43, i32 154)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %108 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %107, i32 44, i32 14)
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %110 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %109, i32 45, i32 162)
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %112 = load i32, i32* @RT5390, align 4
  %113 = load i32, i32* @REV_RT5390F, align 4
  %114 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %111, i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %70
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %118 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %117, i32 46, i32 115)
  br label %122

119:                                              ; preds = %70
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %121 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %120, i32 46, i32 123)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %124 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %123, i32 47, i32 0)
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %126 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %125, i32 48, i32 16)
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %128 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %127, i32 49, i32 148)
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %130 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %129, i32 52, i32 56)
  %131 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %132 = load i32, i32* @RT5390, align 4
  %133 = load i32, i32* @REV_RT5390F, align 4
  %134 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %131, i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %122
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %138 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %137, i32 53, i32 0)
  br label %142

139:                                              ; preds = %122
  %140 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %141 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %140, i32 53, i32 132)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %144 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %143, i32 54, i32 120)
  %145 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %146 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %145, i32 55, i32 68)
  %147 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %148 = load i32, i32* @RT5390, align 4
  %149 = load i32, i32* @REV_RT5390F, align 4
  %150 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %147, i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %154 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %153, i32 56, i32 66)
  br label %158

155:                                              ; preds = %142
  %156 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %157 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %156, i32 56, i32 34)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %160 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %159, i32 57, i32 128)
  %161 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %162 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %161, i32 58, i32 127)
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %164 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %163, i32 59, i32 143)
  %165 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %166 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %165, i32 60, i32 69)
  %167 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %168 = load i32, i32* @RT5390, align 4
  %169 = load i32, i32* @REV_RT5390F, align 4
  %170 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %167, i32 %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %158
  %173 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %174 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %178 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %177, i32 61, i32 209)
  br label %182

179:                                              ; preds = %172
  %180 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %181 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %180, i32 61, i32 213)
  br label %182

182:                                              ; preds = %179, %176
  br label %194

183:                                              ; preds = %158
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %185 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %189 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %188, i32 61, i32 221)
  br label %193

190:                                              ; preds = %183
  %191 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %192 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %191, i32 61, i32 181)
  br label %193

193:                                              ; preds = %190, %187
  br label %194

194:                                              ; preds = %193, %182
  %195 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %196 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %195, i32 62, i32 0)
  %197 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %198 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %197, i32 63, i32 0)
  %199 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %200 = call i32 @rt2800_normal_mode_setup_5xxx(%struct.rt2x00_dev* %199)
  %201 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %202 = call i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev* %201)
  ret void
}

declare dso_local i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_normal_mode_setup_5xxx(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
