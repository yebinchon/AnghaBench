; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ab8500_fg = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@BATT_OVV_VALUE = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ab8500_fg_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.ab8500_fg*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.ab8500_fg* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.ab8500_fg* %10, %struct.ab8500_fg** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %214 [
    i32 128, label %12
    i32 132, label %31
    i32 133, label %38
    i32 130, label %45
    i32 131, label %55
    i32 129, label %65
    i32 135, label %105
    i32 136, label %112
    i32 134, label %119
    i32 138, label %153
    i32 137, label %183
  ]

12:                                               ; preds = %3
  %13 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %14 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32, i32* @BATT_OVV_VALUE, align 4
  %20 = mul nsw i32 %19, 1000
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %30

23:                                               ; preds = %12
  %24 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %25 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 1000
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %23, %18
  br label %217

31:                                               ; preds = %3
  %32 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %33 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 1000
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %217

38:                                               ; preds = %3
  %39 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %40 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 1000
  %43 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %44 = bitcast %union.power_supply_propval* %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %217

45:                                               ; preds = %3
  %46 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %47 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %48 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @ab8500_fg_convert_mah_to_uwh(%struct.ab8500_fg* %46, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %54 = bitcast %union.power_supply_propval* %53 to i32*
  store i32 %52, i32* %54, align 4
  br label %217

55:                                               ; preds = %3
  %56 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %57 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %58 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @ab8500_fg_convert_mah_to_uwh(%struct.ab8500_fg* %56, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i32*
  store i32 %62, i32* %64, align 4
  br label %217

65:                                               ; preds = %3
  %66 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %67 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %65
  %72 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %73 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %71
  %79 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %80 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %86 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %87 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @ab8500_fg_convert_mah_to_uwh(%struct.ab8500_fg* %85, i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %93 = bitcast %union.power_supply_propval* %92 to i32*
  store i32 %91, i32* %93, align 4
  br label %104

94:                                               ; preds = %78, %71, %65
  %95 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %96 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %97 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @ab8500_fg_convert_mah_to_uwh(%struct.ab8500_fg* %95, i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %103 = bitcast %union.power_supply_propval* %102 to i32*
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %94, %84
  br label %217

105:                                              ; preds = %3
  %106 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %107 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %111 = bitcast %union.power_supply_propval* %110 to i32*
  store i32 %109, i32* %111, align 4
  br label %217

112:                                              ; preds = %3
  %113 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %114 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %118 = bitcast %union.power_supply_propval* %117 to i32*
  store i32 %116, i32* %118, align 4
  br label %217

119:                                              ; preds = %3
  %120 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %121 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %119
  %126 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %127 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %126, i32 0, i32 5
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %125
  %133 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %134 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %140 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %144 = bitcast %union.power_supply_propval* %143 to i32*
  store i32 %142, i32* %144, align 4
  br label %152

145:                                              ; preds = %132, %125, %119
  %146 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %147 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %151 = bitcast %union.power_supply_propval* %150 to i32*
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %145, %138
  br label %217

153:                                              ; preds = %3
  %154 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %155 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %153
  %160 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %161 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %160, i32 0, i32 5
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %159
  %167 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %168 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %174 = bitcast %union.power_supply_propval* %173 to i32*
  store i32 100, i32* %174, align 4
  br label %182

175:                                              ; preds = %166, %159, %153
  %176 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %177 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %181 = bitcast %union.power_supply_propval* %180 to i32*
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %175, %172
  br label %217

183:                                              ; preds = %3
  %184 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %185 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %183
  %190 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %191 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %190, i32 0, i32 5
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %189
  %197 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %198 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN, align 4
  %204 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %205 = bitcast %union.power_supply_propval* %204 to i32*
  store i32 %203, i32* %205, align 4
  br label %213

206:                                              ; preds = %196, %189, %183
  %207 = load %struct.ab8500_fg*, %struct.ab8500_fg** %8, align 8
  %208 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %212 = bitcast %union.power_supply_propval* %211 to i32*
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %206, %202
  br label %217

214:                                              ; preds = %3
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %4, align 4
  br label %218

217:                                              ; preds = %213, %182, %152, %112, %105, %104, %55, %45, %38, %31, %30
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %217, %214
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local %struct.ab8500_fg* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i8* @ab8500_fg_convert_mah_to_uwh(%struct.ab8500_fg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
