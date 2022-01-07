; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_get_ext_psy_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_get_ext_psy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.power_supply = type { %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32, i32*, i32, i32 }
%struct.ab8500_btemp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%union.power_supply_propval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @ab8500_btemp_get_ext_psy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_btemp_get_ext_psy_data(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.power_supply*, align 8
  %7 = alloca %struct.power_supply*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.ab8500_btemp*, align 8
  %10 = alloca %union.power_supply_propval, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %13)
  store %struct.power_supply* %14, %struct.power_supply** %7, align 8
  %15 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %16 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8**
  store i8** %18, i8*** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.power_supply*
  store %struct.power_supply* %20, %struct.power_supply** %6, align 8
  %21 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %22 = call %struct.ab8500_btemp* @power_supply_get_drvdata(%struct.power_supply* %21)
  store %struct.ab8500_btemp* %22, %struct.ab8500_btemp** %9, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %25 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %28 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @match_string(i8** %23, i32 %26, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %154

36:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %150, %36
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %40 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %153

45:                                               ; preds = %37
  %46 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %47 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @power_supply_get_property(%struct.power_supply* %55, i32 %56, %union.power_supply_propval* %10)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %150

60:                                               ; preds = %45
  %61 = load i32, i32* %12, align 4
  switch i32 %61, label %148 [
    i32 130, label %62
  ]

62:                                               ; preds = %60
  %63 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %64 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %146 [
    i32 129, label %68
    i32 128, label %107
  ]

68:                                               ; preds = %62
  %69 = bitcast %union.power_supply_propval* %10 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %68
  %73 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %74 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %80 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 4
  br label %106

82:                                               ; preds = %72, %68
  %83 = bitcast %union.power_supply_propval* %10 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %88 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %86
  %93 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %94 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %97 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %103 = call i32 @ab8500_btemp_periodic(%struct.ab8500_btemp* %102, i32 1)
  br label %104

104:                                              ; preds = %101, %92
  br label %105

105:                                              ; preds = %104, %86, %82
  br label %106

106:                                              ; preds = %105, %78
  br label %147

107:                                              ; preds = %62
  %108 = bitcast %union.power_supply_propval* %10 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %107
  %112 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %113 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %119 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  br label %145

121:                                              ; preds = %111, %107
  %122 = bitcast %union.power_supply_propval* %10 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %121
  %126 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %127 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %125
  %132 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %133 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %136 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %131
  %141 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %9, align 8
  %142 = call i32 @ab8500_btemp_periodic(%struct.ab8500_btemp* %141, i32 1)
  br label %143

143:                                              ; preds = %140, %131
  br label %144

144:                                              ; preds = %143, %125, %121
  br label %145

145:                                              ; preds = %144, %117
  br label %147

146:                                              ; preds = %62
  br label %147

147:                                              ; preds = %146, %145, %106
  br label %149

148:                                              ; preds = %60
  br label %149

149:                                              ; preds = %148, %147
  br label %150

150:                                              ; preds = %149, %59
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %37

153:                                              ; preds = %37
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %35
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ab8500_btemp* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @match_string(i8**, i32, i32) #1

declare dso_local i64 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @ab8500_btemp_periodic(%struct.ab8500_btemp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
