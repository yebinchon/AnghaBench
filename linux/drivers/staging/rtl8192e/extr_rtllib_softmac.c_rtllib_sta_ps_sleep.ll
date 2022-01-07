; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_sta_ps_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_sta_ps_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, i64, i64, %struct.TYPE_4__, i64, i64, i32, i64, %struct.rt_pwr_save_ctrl }
%struct.TYPE_4__ = type { i32, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rt_pwr_save_ctrl = type { i32, i32 }

@RTLLIB_DTIM_VALID = common dso_local global i32 0, align 4
@RTLLIB_DTIM_INVALID = common dso_local global i32 0, align 4
@RTLLIB_DTIM_UCAST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IEEE_SOFTMAC_SINGLE_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.rtllib_device*, i64*)* @rtllib_sta_ps_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @rtllib_sta_ps_sleep(%struct.rtllib_device* %0, i64* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt_pwr_save_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %14 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %13, i32 0, i32 9
  store %struct.rt_pwr_save_ctrl* %14, %struct.rt_pwr_save_ctrl** %8, align 8
  %15 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %16 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %21 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  store i16 0, i16* %3, align 2
  br label %233

24:                                               ; preds = %2
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %26 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RTLLIB_DTIM_VALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store i16 0, i16* %3, align 2
  br label %233

34:                                               ; preds = %24
  %35 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %36 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @RTLLIB_DTIM_INVALID, align 4
  %40 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %41 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @RTLLIB_DTIM_UCAST, align 4
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %46 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %44, %47
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  store i16 2, i16* %3, align 2
  br label %233

52:                                               ; preds = %34
  %53 = load i32, i32* @jiffies, align 4
  %54 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %55 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @dev_trans_start(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @msecs_to_jiffies(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = call i32 @time_after(i32 %53, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  store i16 0, i16* %3, align 2
  br label %233

64:                                               ; preds = %52
  %65 = load i32, i32* @jiffies, align 4
  %66 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %67 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @msecs_to_jiffies(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @time_after(i32 %65, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  store i16 0, i16* %3, align 2
  br label %233

75:                                               ; preds = %64
  %76 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %77 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IEEE_SOFTMAC_SINGLE_QUEUE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %84 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %87 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i16 0, i16* %3, align 2
  br label %233

91:                                               ; preds = %82, %75
  %92 = load i64*, i64** %5, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %94, label %232

94:                                               ; preds = %91
  %95 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %96 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %101 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  br label %148

102:                                              ; preds = %94
  store i32 1, i32* %9, align 4
  %103 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %104 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %109 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %112 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 1, i32* %9, align 4
  br label %131

116:                                              ; preds = %110
  %117 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %118 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 255
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %123 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %9, align 4
  br label %130

126:                                              ; preds = %116
  %127 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %128 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %126, %121
  br label %131

131:                                              ; preds = %130, %115
  %132 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %133 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* %9, align 4
  br label %144

139:                                              ; preds = %131
  %140 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %141 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  br label %144

144:                                              ; preds = %139, %137
  %145 = phi i32 [ %138, %137 ], [ %143, %139 ]
  %146 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %147 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %144, %99
  store i32 0, i32* %10, align 4
  %149 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %150 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %11, align 4
  %153 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %154 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %187

160:                                              ; preds = %148
  %161 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %162 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %160
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %169 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %11, align 4
  %172 = sub nsw i32 %170, %171
  %173 = add nsw i32 %167, %172
  %174 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %175 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %176, %177
  %179 = load i32, i32* %11, align 4
  %180 = srem i32 %178, %179
  %181 = sub nsw i32 %173, %180
  store i32 %181, i32* %10, align 4
  br label %186

182:                                              ; preds = %160
  %183 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %184 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %10, align 4
  br label %186

186:                                              ; preds = %182, %166
  br label %218

187:                                              ; preds = %148
  %188 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %189 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %192 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp sgt i32 %190, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %187
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %200 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %12, align 4
  %203 = sub nsw i32 %201, %202
  %204 = add nsw i32 %198, %203
  %205 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %206 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %12, align 4
  %209 = sub nsw i32 %207, %208
  %210 = load i32, i32* %11, align 4
  %211 = srem i32 %209, %210
  %212 = sub nsw i32 %204, %211
  store i32 %212, i32* %10, align 4
  br label %217

213:                                              ; preds = %187
  %214 = load %struct.rt_pwr_save_ctrl*, %struct.rt_pwr_save_ctrl** %8, align 8
  %215 = getelementptr inbounds %struct.rt_pwr_save_ctrl, %struct.rt_pwr_save_ctrl* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %10, align 4
  br label %217

217:                                              ; preds = %213, %197
  br label %218

218:                                              ; preds = %217, %186
  %219 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %220 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %224 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %10, align 4
  %228 = mul nsw i32 %226, %227
  %229 = call i64 @msecs_to_jiffies(i32 %228)
  %230 = add nsw i64 %222, %229
  %231 = load i64*, i64** %5, align 8
  store i64 %230, i64* %231, align 8
  br label %232

232:                                              ; preds = %218, %91
  store i16 1, i16* %3, align 2
  br label %233

233:                                              ; preds = %232, %90, %74, %63, %51, %33, %19
  %234 = load i16, i16* %3, align 2
  ret i16 %234
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i64 @dev_trans_start(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
