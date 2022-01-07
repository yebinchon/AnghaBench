; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @rtl8225_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8225_read(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8187_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %13, align 8
  store %struct.rtl8187_priv* %14, %struct.rtl8187_priv** %5, align 8
  %15 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %16 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %17 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @rtl818x_ioread16(%struct.rtl8187_priv* %15, i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %22 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i32 @rtl818x_ioread16(%struct.rtl8187_priv* %21, i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %28 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %29 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @rtl818x_ioread16(%struct.rtl8187_priv* %27, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, -16
  store i32 %34, i32* %6, align 4
  %35 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %37 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 15
  %42 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %35, i32* %39, i32 %41)
  %43 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %44 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %45 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, 15
  %50 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %43, i32* %47, i32 %49)
  %51 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %52 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %53 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, 4
  %58 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %51, i32* %55, i32 %57)
  %59 = call i32 @udelay(i32 4)
  %60 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %61 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %62 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %60, i32* %64, i32 %65)
  %67 = call i32 @udelay(i32 5)
  store i32 4, i32* %10, align 4
  br label %68

68:                                               ; preds = %122, %2
  %69 = load i32, i32* %10, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %125

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %73, %74
  %76 = and i32 %75, 1
  %77 = or i32 %72, %76
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %71
  %82 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %83 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %84 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %82, i32* %86, i32 %87)
  %89 = call i32 @udelay(i32 1)
  br label %90

90:                                               ; preds = %81, %71
  %91 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %92 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %93 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, 2
  %98 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %91, i32* %95, i32 %97)
  %99 = call i32 @udelay(i32 2)
  %100 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %101 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %102 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, 2
  %107 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %100, i32* %104, i32 %106)
  %108 = call i32 @udelay(i32 2)
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %90
  %113 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %114 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %115 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %113, i32* %117, i32 %118)
  %120 = call i32 @udelay(i32 1)
  br label %121

121:                                              ; preds = %112, %90
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %10, align 4
  br label %68

125:                                              ; preds = %68
  %126 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %127 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %128 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, 8
  %133 = or i32 %132, 2
  %134 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %126, i32* %130, i32 %133)
  %135 = call i32 @udelay(i32 2)
  %136 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %137 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %138 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, 8
  %143 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %136, i32* %140, i32 %142)
  %144 = call i32 @udelay(i32 2)
  %145 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %146 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %147 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %150, 8
  %152 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %145, i32* %149, i32 %151)
  %153 = call i32 @udelay(i32 2)
  store i32 0, i32* %9, align 4
  store i32 11, i32* %10, align 4
  br label %154

154:                                              ; preds = %220, %125
  %155 = load i32, i32* %10, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %223

157:                                              ; preds = %154
  %158 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %159 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %160 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, 8
  %165 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %158, i32* %162, i32 %164)
  %166 = call i32 @udelay(i32 1)
  %167 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %168 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %169 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %6, align 4
  %173 = or i32 %172, 8
  %174 = or i32 %173, 2
  %175 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %167, i32* %171, i32 %174)
  %176 = call i32 @udelay(i32 2)
  %177 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %178 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %179 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %6, align 4
  %183 = or i32 %182, 8
  %184 = or i32 %183, 2
  %185 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %177, i32* %181, i32 %184)
  %186 = call i32 @udelay(i32 2)
  %187 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %188 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %189 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %6, align 4
  %193 = or i32 %192, 8
  %194 = or i32 %193, 2
  %195 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %187, i32* %191, i32 %194)
  %196 = call i32 @udelay(i32 2)
  %197 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %198 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %199 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %198, i32 0, i32 0
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 3
  %202 = call i32 @rtl818x_ioread16(%struct.rtl8187_priv* %197, i32* %201)
  %203 = and i32 %202, 2
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %157
  %206 = load i32, i32* %10, align 4
  %207 = shl i32 1, %206
  %208 = load i32, i32* %9, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %9, align 4
  br label %210

210:                                              ; preds = %205, %157
  %211 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %212 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %213 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %212, i32 0, i32 0
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %6, align 4
  %217 = or i32 %216, 8
  %218 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %211, i32* %215, i32 %217)
  %219 = call i32 @udelay(i32 2)
  br label %220

220:                                              ; preds = %210
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %10, align 4
  br label %154

223:                                              ; preds = %154
  %224 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %225 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %226 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %225, i32 0, i32 0
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i32, i32* %6, align 4
  %230 = or i32 %229, 8
  %231 = or i32 %230, 4
  %232 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %224, i32* %228, i32 %231)
  %233 = call i32 @udelay(i32 2)
  %234 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %235 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %236 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %235, i32 0, i32 0
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 2
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %234, i32* %238, i32 %239)
  %241 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %242 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %243 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %242, i32 0, i32 0
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 1
  %246 = load i32, i32* %8, align 4
  %247 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %241, i32* %245, i32 %246)
  %248 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %249 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %250 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %249, i32 0, i32 0
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %248, i32* %252, i32 928)
  %254 = load i32, i32* %9, align 4
  ret i32 %254
}

declare dso_local i32 @rtl818x_ioread16(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
