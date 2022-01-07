; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_step3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_step3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"failed to write IQ vector to hardware\0A\00", align 1
@RTW_DBG_RFK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"[DACK] after  DACK i=0x%x, q=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32, i32*, i32*, i32*, i32*)* @rtw8822c_dac_cal_step3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_step3(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.rtw_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @rtw8822c_get_path_write_addr(i32 %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @rtw8822c_get_path_read_addr(i32 %24)
  store i32 %25, i32* %18, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %19, align 4
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %20, align 4
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %31 = load i32, i32* %17, align 4
  %32 = add nsw i32 %31, 12
  %33 = call i32 @rtw_write32(%struct.rtw_dev* %30, i32 %32, i32 -537918944)
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %35 = load i32, i32* %17, align 4
  %36 = add nsw i32 %35, 16
  %37 = call i32 @rtw_write32(%struct.rtw_dev* %34, i32 %36, i32 47515845)
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %39 = call i32 @rtw_write32(%struct.rtw_dev* %38, i32 2484, i32 -614016256)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %41 = load i32, i32* %17, align 4
  %42 = add nsw i32 %41, 176
  %43 = call i32 @rtw_write32(%struct.rtw_dev* %40, i32 %42, i32 168950664)
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, 188
  %47 = call i32 @rtw_write32(%struct.rtw_dev* %44, i32 %46, i32 -1073152127)
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 192
  %51 = call i32 @rtw_write32(%struct.rtw_dev* %48, i32 %50, i32 250376)
  %52 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 188
  %55 = load i32, i32* %19, align 4
  %56 = and i32 %55, 15
  %57 = call i32 @rtw_write32_mask(%struct.rtw_dev* %52, i32 %54, i32 -268435456, i32 %56)
  %58 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, 192
  %61 = load i32, i32* %19, align 4
  %62 = and i32 %61, 240
  %63 = ashr i32 %62, 4
  %64 = call i32 @rtw_write32_mask(%struct.rtw_dev* %58, i32 %60, i32 15, i32 %63)
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 204
  %68 = call i32 @rtw_write32(%struct.rtw_dev* %65, i32 %67, i32 168950664)
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 216
  %72 = call i32 @rtw_write32(%struct.rtw_dev* %69, i32 %71, i32 -536281215)
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, 220
  %76 = call i32 @rtw_write32(%struct.rtw_dev* %73, i32 %75, i32 250376)
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 216
  %80 = load i32, i32* %20, align 4
  %81 = and i32 %80, 15
  %82 = call i32 @rtw_write32_mask(%struct.rtw_dev* %77, i32 %79, i32 -268435456, i32 %81)
  %83 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 220
  %86 = load i32, i32* %20, align 4
  %87 = and i32 %86, 240
  %88 = ashr i32 %87, 4
  %89 = call i32 @rtw_write32_mask(%struct.rtw_dev* %83, i32 %85, i32 15, i32 %88)
  %90 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 184
  %93 = call i32 @rtw_write32(%struct.rtw_dev* %90, i32 %92, i32 1610612736)
  %94 = call i32 @mdelay(i32 2)
  %95 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 188
  %98 = call i32 @rtw_write32_mask(%struct.rtw_dev* %95, i32 %97, i32 14, i32 6)
  %99 = call i32 @mdelay(i32 2)
  %100 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 176
  %103 = call i32 @rtw_write32(%struct.rtw_dev* %100, i32 %102, i32 168950665)
  %104 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 204
  %107 = call i32 @rtw_write32(%struct.rtw_dev* %104, i32 %106, i32 168950665)
  %108 = call i32 @mdelay(i32 1)
  %109 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, 184
  %112 = call i32 @rtw_write32(%struct.rtw_dev* %109, i32 %111, i32 1644167168)
  %113 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 212
  %116 = call i32 @rtw_write32(%struct.rtw_dev* %113, i32 %115, i32 1644167168)
  %117 = call i32 @mdelay(i32 20)
  %118 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, 36
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @check_hw_ready(%struct.rtw_dev* %118, i32 %120, i32 133693440, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %8
  %125 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %126, 80
  %128 = load i32, i32* %20, align 4
  %129 = call i32 @check_hw_ready(%struct.rtw_dev* %125, i32 %127, i32 133693440, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %124, %8
  %132 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %133 = call i32 @rtw_err(%struct.rtw_dev* %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %124
  %135 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 184
  %138 = call i32 @rtw_write32(%struct.rtw_dev* %135, i32 %137, i32 33554432)
  %139 = call i32 @mdelay(i32 1)
  %140 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 188
  %143 = call i32 @rtw_write32_mask(%struct.rtw_dev* %140, i32 %142, i32 14, i32 3)
  %144 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %145 = call i32 @rtw_write32(%struct.rtw_dev* %144, i32 2484, i32 -613566976)
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 16
  %148 = and i32 %147, 1023
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 16
  %151 = and i32 %150, 1023
  %152 = shl i32 %151, 10
  %153 = or i32 %148, %152
  store i32 %153, i32* %21, align 4
  %154 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 104
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @rtw_write32(%struct.rtw_dev* %154, i32 %156, i32 %157)
  %159 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 16
  %162 = call i32 @rtw_write32(%struct.rtw_dev* %159, i32 %161, i32 47515845)
  %163 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 96
  %166 = call i32 @rtw_write32(%struct.rtw_dev* %163, i32 %165, i32 -268435456)
  %167 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %168 = call i32 @rtw8822c_dac_cal_rf_mode(%struct.rtw_dev* %167, i32* %19, i32* %20)
  %169 = load i32, i32* %19, align 4
  %170 = icmp sge i32 %169, 16
  br i1 %170, label %171, label %174

171:                                              ; preds = %134
  %172 = load i32, i32* %19, align 4
  %173 = sub nsw i32 %172, 16
  store i32 %173, i32* %19, align 4
  br label %178

174:                                              ; preds = %134
  %175 = load i32, i32* %19, align 4
  %176 = sub nsw i32 16, %175
  %177 = sub nsw i32 1024, %176
  store i32 %177, i32* %19, align 4
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i32, i32* %20, align 4
  %180 = icmp sge i32 %179, 16
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* %20, align 4
  %183 = sub nsw i32 %182, 16
  store i32 %183, i32* %20, align 4
  br label %188

184:                                              ; preds = %178
  %185 = load i32, i32* %20, align 4
  %186 = sub nsw i32 16, %185
  %187 = sub nsw i32 1024, %186
  store i32 %187, i32* %20, align 4
  br label %188

188:                                              ; preds = %184, %181
  %189 = load i32, i32* %19, align 4
  %190 = load i32*, i32** %15, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* %20, align 4
  %192 = load i32*, i32** %16, align 8
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* %19, align 4
  %194 = icmp sge i32 %193, 512
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load i32, i32* %19, align 4
  %197 = sub nsw i32 1024, %196
  store i32 %197, i32* %19, align 4
  br label %198

198:                                              ; preds = %195, %188
  %199 = load i32, i32* %20, align 4
  %200 = icmp sge i32 %199, 512
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %20, align 4
  %203 = sub nsw i32 1024, %202
  store i32 %203, i32* %20, align 4
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32, i32* %19, align 4
  %206 = load i32*, i32** %13, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* %20, align 4
  %208 = load i32*, i32** %14, align 8
  store i32 %207, i32* %208, align 4
  %209 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %210 = load i32, i32* @RTW_DBG_RFK, align 4
  %211 = load i32*, i32** %15, align 8
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %16, align 8
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @rtw_dbg(%struct.rtw_dev* %209, i32 %210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %212, i32 %214)
  ret void
}

declare dso_local i32 @rtw8822c_get_path_write_addr(i32) #1

declare dso_local i32 @rtw8822c_get_path_read_addr(i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @check_hw_ready(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw8822c_dac_cal_rf_mode(%struct.rtw_dev*, i32*, i32*) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
