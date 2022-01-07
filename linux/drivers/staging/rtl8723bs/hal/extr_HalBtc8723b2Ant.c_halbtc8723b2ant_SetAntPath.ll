; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_SetAntPath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_SetAntPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32*)*, i32 (%struct.TYPE_27__*, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32*)*, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }

@BTC_GET_BL_EXT_SWITCH = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@BTC_BT_REG_RF = common dso_local global i32 0, align 4
@BTC_ANTENNA_AT_MAIN_PORT = common dso_local global i64 0, align 8
@BIT23 = common dso_local global i32 0, align 4
@BIT24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, i32, i32, i32)* @halbtc8723b2ant_SetAntPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_SetAntPath(%struct.TYPE_27__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 8
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 7
  %20 = load i32 (%struct.TYPE_27__*, i32, i32*)*, i32 (%struct.TYPE_27__*, i32, i32*)** %19, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %22 = load i32, i32* @BTC_GET_BL_EXT_SWITCH, align 4
  %23 = call i32 %20(%struct.TYPE_27__* %21, i32 %22, i32* %12)
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 7
  %26 = load i32 (%struct.TYPE_27__*, i32, i32*)*, i32 (%struct.TYPE_27__*, i32, i32*)** %25, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %28 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %29 = call i32 %26(%struct.TYPE_27__* %27, i32 %28, i32* %10)
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 786432
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  store i32 1, i32* %13, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %125

42:                                               ; preds = %39
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 2
  %45 = load i32 (%struct.TYPE_27__*, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32)** %44, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %47 = call i32 %45(%struct.TYPE_27__* %46, i32 57, i32 8, i32 1)
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 6
  %50 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %49, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %52 = call i32 %50(%struct.TYPE_27__* %51, i32 2420, i32 255)
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 2
  %55 = load i32 (%struct.TYPE_27__*, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32)** %54, align 8
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %57 = call i32 %55(%struct.TYPE_27__* %56, i32 2372, i32 3, i32 3)
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 6
  %60 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %59, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %62 = call i32 %60(%struct.TYPE_27__* %61, i32 2352, i32 119)
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 2
  %65 = load i32 (%struct.TYPE_27__*, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32)** %64, align 8
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %67 = call i32 %65(%struct.TYPE_27__* %66, i32 103, i32 32, i32 1)
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 1572864
  br i1 %69, label %70, label %78

70:                                               ; preds = %42
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %71, align 4
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 3
  %74 = load i32 (%struct.TYPE_27__*, i32, i32, i32*)*, i32 (%struct.TYPE_27__*, i32, i32, i32*)** %73, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %77 = call i32 %74(%struct.TYPE_27__* %75, i32 110, i32 1, i32* %76)
  br label %84

78:                                               ; preds = %42
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 6
  %81 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %80, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %83 = call i32 %81(%struct.TYPE_27__* %82, i32 1893, i32 0)
  br label %84

84:                                               ; preds = %78, %70
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 1
  %87 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %86, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %89 = call i32 %87(%struct.TYPE_27__* %88, i32 2376, i32 0)
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 5
  %92 = load i32 (%struct.TYPE_27__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32, i32)** %91, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %94 = load i32, i32* @BTC_RF_A, align 4
  %95 = call i32 %92(%struct.TYPE_27__* %93, i32 %94, i32 1, i32 1048575, i32 0)
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 4
  %98 = load i32 (%struct.TYPE_27__*, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32)** %97, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %100 = load i32, i32* @BTC_BT_REG_RF, align 4
  %101 = call i32 %98(%struct.TYPE_27__* %99, i32 %100, i32 60, i32 1)
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %84
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %108, align 4
  br label %111

109:                                              ; preds = %84
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 1, i32* %115, align 4
  br label %118

116:                                              ; preds = %111
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 3
  %121 = load i32 (%struct.TYPE_27__*, i32, i32, i32*)*, i32 (%struct.TYPE_27__*, i32, i32, i32*)** %120, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %124 = call i32 %121(%struct.TYPE_27__* %122, i32 101, i32 2, i32* %123)
  br label %125

125:                                              ; preds = %118, %39
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %170

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %128
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %133, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %136 = call i32 %134(%struct.TYPE_27__* %135, i32 76)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* @BIT23, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %11, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* @BIT24, align 4
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 1
  %146 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %145, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 %146(%struct.TYPE_27__* %147, i32 76, i32 %148)
  br label %150

150:                                              ; preds = %131, %128
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 1
  %153 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %152, align 8
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %155 = call i32 %153(%struct.TYPE_27__* %154, i32 2376, i32 0)
  %156 = load i32, i32* %6, align 4
  switch i32 %156, label %169 [
    i32 128, label %157
    i32 129, label %163
  ]

157:                                              ; preds = %150
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 2
  %160 = load i32 (%struct.TYPE_27__*, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32)** %159, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %162 = call i32 %160(%struct.TYPE_27__* %161, i32 2348, i32 3, i32 1)
  br label %169

163:                                              ; preds = %150
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 2
  %166 = load i32 (%struct.TYPE_27__*, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32)** %165, align 8
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %168 = call i32 %166(%struct.TYPE_27__* %167, i32 2348, i32 3, i32 2)
  br label %169

169:                                              ; preds = %150, %163, %157
  br label %212

170:                                              ; preds = %125
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %192

173:                                              ; preds = %170
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 0
  %176 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %175, align 8
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %178 = call i32 %176(%struct.TYPE_27__* %177, i32 76)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* @BIT23, align 4
  %180 = load i32, i32* %11, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* @BIT24, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %11, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %11, align 4
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 1
  %188 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %187, align 8
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i32 %188(%struct.TYPE_27__* %189, i32 76, i32 %190)
  br label %192

192:                                              ; preds = %173, %170
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 2
  %195 = load i32 (%struct.TYPE_27__*, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32)** %194, align 8
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %197 = call i32 %195(%struct.TYPE_27__* %196, i32 100, i32 1, i32 0)
  %198 = load i32, i32* %6, align 4
  switch i32 %198, label %211 [
    i32 128, label %199
    i32 129, label %205
  ]

199:                                              ; preds = %192
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 1
  %202 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %201, align 8
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %204 = call i32 %202(%struct.TYPE_27__* %203, i32 2376, i32 0)
  br label %211

205:                                              ; preds = %192
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 1
  %208 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %207, align 8
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %210 = call i32 %208(%struct.TYPE_27__* %209, i32 2376, i32 640)
  br label %211

211:                                              ; preds = %192, %205, %199
  br label %212

212:                                              ; preds = %211, %169
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
