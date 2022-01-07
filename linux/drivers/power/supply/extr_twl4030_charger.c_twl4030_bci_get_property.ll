; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.twl4030_bci = type { i32, i32, i32 }

@POWER_SUPPLY_TYPE_USB = common dso_local global i64 0, align 8
@TWL4030_MSTATEC_USB = common dso_local global i32 0, align 4
@TWL4030_MSTATEC_AC = common dso_local global i32 0, align 4
@TWL4030_BCIMDEN = common dso_local global i32 0, align 4
@TWL4030_MSTATEC_QUICK1 = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i8* null, align 8
@ENODATA = common dso_local global i32 0, align 4
@TWL4030_BCIVBUS = common dso_local global i32 0, align 4
@TWL4030_BCIVAC = common dso_local global i32 0, align 4
@TWL4030_BCIIREF1 = common dso_local global i32 0, align 4
@TWL4030_BCICTL1 = common dso_local global i32 0, align 4
@TWL4030_CGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @twl4030_bci_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_bci_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.twl4030_bci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %14 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %15 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.twl4030_bci* @dev_get_drvdata(i32 %17)
  store %struct.twl4030_bci* %18, %struct.twl4030_bci** %8, align 8
  %19 = load %struct.twl4030_bci*, %struct.twl4030_bci** %8, align 8
  %20 = call i32 @twl4030bci_state(%struct.twl4030_bci* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %233

25:                                               ; preds = %3
  %26 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %27 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @POWER_SUPPLY_TYPE_USB, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @TWL4030_MSTATEC_USB, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %9, align 4
  br label %41

37:                                               ; preds = %25
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @TWL4030_MSTATEC_AC, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @TWL4030_BCIMDEN, align 4
  %46 = call i32 @twl4030_bci_read(i32 %45, i32* %12)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %233

51:                                               ; preds = %44
  %52 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %53 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @POWER_SUPPLY_TYPE_USB, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %65

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 2
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @TWL4030_MSTATEC_QUICK1, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %68, %65
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %6, align 4
  switch i32 %72, label %229 [
    i32 129, label %73
    i32 128, label %88
    i32 132, label %129
    i32 130, label %145
    i32 131, label %158
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = call i8* @twl4030_bci_state_to_status(i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %81 = bitcast %union.power_supply_propval* %80 to i32*
  store i32 %79, i32* %81, align 4
  br label %87

82:                                               ; preds = %73
  %83 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %86 = bitcast %union.power_supply_propval* %85 to i32*
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %76
  br label %232

88:                                               ; preds = %71
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @ENODATA, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %233

94:                                               ; preds = %88
  %95 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %96 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @POWER_SUPPLY_TYPE_USB, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %94
  %103 = load i32, i32* @TWL4030_BCIVBUS, align 4
  %104 = call i8* @twl4030bci_read_adc_val(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %233

110:                                              ; preds = %102
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 %111, 6843
  %113 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %114 = bitcast %union.power_supply_propval* %113 to i32*
  store i32 %112, i32* %114, align 4
  br label %128

115:                                              ; preds = %94
  %116 = load i32, i32* @TWL4030_BCIVAC, align 4
  %117 = call i8* @twl4030bci_read_adc_val(i32 %116)
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %4, align 4
  br label %233

123:                                              ; preds = %115
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 %124, 9775
  %126 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %127 = bitcast %union.power_supply_propval* %126 to i32*
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %110
  br label %232

129:                                              ; preds = %71
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @ENODATA, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %233

135:                                              ; preds = %129
  %136 = call i32 (...) @twl4030_charger_get_current()
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %4, align 4
  br label %233

141:                                              ; preds = %135
  %142 = load i32, i32* %11, align 4
  %143 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %144 = bitcast %union.power_supply_propval* %143 to i32*
  store i32 %142, i32* %144, align 4
  br label %232

145:                                              ; preds = %71
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, i32* %10, align 4
  %150 = call i8* @twl4030_bci_state_to_status(i32 %149)
  %151 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %152 = icmp ne i8* %150, %151
  br label %153

153:                                              ; preds = %148, %145
  %154 = phi i1 [ false, %145 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  %156 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %157 = bitcast %union.power_supply_propval* %156 to i32*
  store i32 %155, i32* %157, align 4
  br label %232

158:                                              ; preds = %71
  %159 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %160 = bitcast %union.power_supply_propval* %159 to i32*
  store i32 -1, i32* %160, align 4
  %161 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %162 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @POWER_SUPPLY_TYPE_USB, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %158
  %169 = load %struct.twl4030_bci*, %struct.twl4030_bci** %8, align 8
  %170 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = load %struct.twl4030_bci*, %struct.twl4030_bci** %8, align 8
  %175 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %178 = bitcast %union.power_supply_propval* %177 to i32*
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %168
  br label %192

180:                                              ; preds = %158
  %181 = load %struct.twl4030_bci*, %struct.twl4030_bci** %8, align 8
  %182 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.twl4030_bci*, %struct.twl4030_bci** %8, align 8
  %187 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %190 = bitcast %union.power_supply_propval* %189 to i32*
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %185, %180
  br label %192

192:                                              ; preds = %191, %179
  %193 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %194 = bitcast %union.power_supply_propval* %193 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %228

197:                                              ; preds = %192
  %198 = load i32, i32* @TWL4030_BCIIREF1, align 4
  %199 = call i8* @twl4030bci_read_adc_val(i32 %198)
  %200 = ptrtoint i8* %199 to i32
  %201 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %202 = bitcast %union.power_supply_propval* %201 to i32*
  store i32 %200, i32* %202, align 4
  %203 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %204 = bitcast %union.power_supply_propval* %203 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %197
  %208 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %209 = bitcast %union.power_supply_propval* %208 to i32*
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %4, align 4
  br label %233

211:                                              ; preds = %197
  %212 = load i32, i32* @TWL4030_BCICTL1, align 4
  %213 = call i32 @twl4030_bci_read(i32 %212, i32* %13)
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %4, align 4
  br label %233

218:                                              ; preds = %211
  %219 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %220 = bitcast %union.power_supply_propval* %219 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* @TWL4030_CGAIN, align 4
  %224 = and i32 %222, %223
  %225 = call i32 @regval2ua(i32 %221, i32 %224)
  %226 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %227 = bitcast %union.power_supply_propval* %226 to i32*
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %218, %192
  br label %232

229:                                              ; preds = %71
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %4, align 4
  br label %233

232:                                              ; preds = %228, %153, %141, %128, %87
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %232, %229, %216, %207, %139, %132, %121, %108, %91, %49, %23
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local %struct.twl4030_bci* @dev_get_drvdata(i32) #1

declare dso_local i32 @twl4030bci_state(%struct.twl4030_bci*) #1

declare dso_local i32 @twl4030_bci_read(i32, i32*) #1

declare dso_local i8* @twl4030_bci_state_to_status(i32) #1

declare dso_local i8* @twl4030bci_read_adc_val(i32) #1

declare dso_local i32 @twl4030_charger_get_current(...) #1

declare dso_local i32 @regval2ua(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
