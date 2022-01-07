; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_update_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_update_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ds1343_priv = type { i64, i32, i64, i64, i64, i32 }

@DS1343_CONTROL_REG = common dso_local global i32 0, align 4
@DS1343_STATUS_REG = common dso_local global i32 0, align 4
@DS1343_A0IE = common dso_local global i32 0, align 4
@DS1343_IRQF0 = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i32 0, align 4
@DS1343_ALM0_SEC_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ds1343_update_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1343_update_alarm(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ds1343_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.ds1343_priv* @dev_get_drvdata(%struct.device* %9)
  store %struct.ds1343_priv* %10, %struct.ds1343_priv** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DS1343_CONTROL_REG, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %5)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %176

20:                                               ; preds = %1
  %21 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DS1343_STATUS_REG, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %176

30:                                               ; preds = %20
  %31 = load i32, i32* @DS1343_A0IE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @DS1343_IRQF0, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %40 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DS1343_CONTROL_REG, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @regmap_write(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %176

49:                                               ; preds = %30
  %50 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %51 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DS1343_STATUS_REG, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @regmap_write(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %176

60:                                               ; preds = %49
  %61 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %62 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %67 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RTC_UF, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65, %60
  br label %79

73:                                               ; preds = %65
  %74 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %75 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @bin2bcd(i64 %76)
  %78 = and i32 %77, 127
  br label %79

79:                                               ; preds = %73, %72
  %80 = phi i32 [ 128, %72 ], [ %78, %73 ]
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %81, i8* %82, align 1
  %83 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %84 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %79
  %88 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %89 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @RTC_UF, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87, %79
  br label %101

95:                                               ; preds = %87
  %96 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %97 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @bin2bcd(i64 %98)
  %100 = and i32 %99, 127
  br label %101

101:                                              ; preds = %95, %94
  %102 = phi i32 [ 128, %94 ], [ %100, %95 ]
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 %103, i8* %104, align 1
  %105 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %106 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %101
  %110 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %111 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @RTC_UF, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109, %101
  br label %123

117:                                              ; preds = %109
  %118 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %119 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @bin2bcd(i64 %120)
  %122 = and i32 %121, 63
  br label %123

123:                                              ; preds = %117, %116
  %124 = phi i32 [ 128, %116 ], [ %122, %117 ]
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 %125, i8* %126, align 1
  %127 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %128 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %123
  %132 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %133 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @RTC_UF, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131, %123
  br label %145

139:                                              ; preds = %131
  %140 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %141 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @bin2bcd(i64 %142)
  %144 = and i32 %143, 127
  br label %145

145:                                              ; preds = %139, %138
  %146 = phi i32 [ 128, %138 ], [ %144, %139 ]
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  store i8 %147, i8* %148, align 1
  %149 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %150 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @DS1343_ALM0_SEC_REG, align 4
  %153 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %154 = call i32 @regmap_bulk_write(i32 %151, i32 %152, i8* %153, i32 4)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %2, align 4
  br label %176

159:                                              ; preds = %145
  %160 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %161 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = load i32, i32* @DS1343_A0IE, align 4
  %166 = load i32, i32* %5, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %5, align 4
  %168 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %169 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @DS1343_CONTROL_REG, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @regmap_write(i32 %170, i32 %171, i32 %172)
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %164, %159
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %157, %58, %47, %28, %18
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.ds1343_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
