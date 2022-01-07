; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_charger_get_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_charger_get_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt9455_info = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%union.power_supply_propval = type { i8* }

@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i8* null, align 8
@RT9455_REG_IRQ1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read IRQ1 register\0A\00", align 1
@F_TSDI = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i8* null, align 8
@F_VINOVPI = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i8* null, align 8
@F_BATAB = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i8* null, align 8
@RT9455_REG_IRQ2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to read IRQ2 register\0A\00", align 1
@F_CHBATOVI = common dso_local global i32 0, align 4
@F_CH32MI = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = common dso_local global i8* null, align 8
@RT9455_REG_IRQ3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to read IRQ3 register\0A\00", align 1
@F_BSTBUSOVI = common dso_local global i32 0, align 4
@F_BSTOLI = common dso_local global i32 0, align 4
@F_BSTLOWVI = common dso_local global i32 0, align 4
@F_BST32SI = common dso_local global i32 0, align 4
@F_STAT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to read STAT bits\0A\00", align 1
@RT9455_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt9455_info*, %union.power_supply_propval*)* @rt9455_charger_get_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_charger_get_health(%struct.rt9455_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt9455_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt9455_info* %0, %struct.rt9455_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %9 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %10 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load i8*, i8** @POWER_SUPPLY_HEALTH_GOOD, align 8
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i8**
  store i8* %13, i8** %15, align 8
  %16 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %17 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RT9455_REG_IRQ1, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %164

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @F_TSDI, align 4
  %30 = call i32 @GET_MASK(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i8*, i8** @POWER_SUPPLY_HEALTH_OVERHEAT, align 8
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i8**
  store i8* %34, i8** %36, align 8
  store i32 0, i32* %3, align 4
  br label %164

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @F_VINOVPI, align 4
  %40 = call i32 @GET_MASK(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i8*, i8** @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 8
  %45 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %46 = bitcast %union.power_supply_propval* %45 to i8**
  store i8* %44, i8** %46, align 8
  store i32 0, i32* %3, align 4
  br label %164

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @F_BATAB, align 4
  %50 = call i32 @GET_MASK(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i8*, i8** @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 8
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i8**
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %3, align 4
  br label %164

57:                                               ; preds = %47
  %58 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %59 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RT9455_REG_IRQ2, align 4
  %62 = call i32 @regmap_read(i32 %60, i32 %61, i32* %7)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %164

69:                                               ; preds = %57
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @F_CHBATOVI, align 4
  %72 = call i32 @GET_MASK(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i8*, i8** @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 8
  %77 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %78 = bitcast %union.power_supply_propval* %77 to i8**
  store i8* %76, i8** %78, align 8
  store i32 0, i32* %3, align 4
  br label %164

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @F_CH32MI, align 4
  %82 = call i32 @GET_MASK(i32 %81)
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i8*, i8** @POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE, align 8
  %87 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %88 = bitcast %union.power_supply_propval* %87 to i8**
  store i8* %86, i8** %88, align 8
  store i32 0, i32* %3, align 4
  br label %164

89:                                               ; preds = %79
  %90 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %91 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RT9455_REG_IRQ3, align 4
  %94 = call i32 @regmap_read(i32 %92, i32 %93, i32* %7)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %164

101:                                              ; preds = %89
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @F_BSTBUSOVI, align 4
  %104 = call i32 @GET_MASK(i32 %103)
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i8*, i8** @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 8
  %109 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %110 = bitcast %union.power_supply_propval* %109 to i8**
  store i8* %108, i8** %110, align 8
  store i32 0, i32* %3, align 4
  br label %164

111:                                              ; preds = %101
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @F_BSTOLI, align 4
  %114 = call i32 @GET_MASK(i32 %113)
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i8*, i8** @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 8
  %119 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %120 = bitcast %union.power_supply_propval* %119 to i8**
  store i8* %118, i8** %120, align 8
  store i32 0, i32* %3, align 4
  br label %164

121:                                              ; preds = %111
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @F_BSTLOWVI, align 4
  %124 = call i32 @GET_MASK(i32 %123)
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i8*, i8** @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 8
  %129 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %130 = bitcast %union.power_supply_propval* %129 to i8**
  store i8* %128, i8** %130, align 8
  store i32 0, i32* %3, align 4
  br label %164

131:                                              ; preds = %121
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @F_BST32SI, align 4
  %134 = call i32 @GET_MASK(i32 %133)
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i8*, i8** @POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE, align 8
  %139 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %140 = bitcast %union.power_supply_propval* %139 to i8**
  store i8* %138, i8** %140, align 8
  store i32 0, i32* %3, align 4
  br label %164

141:                                              ; preds = %131
  %142 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %143 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @F_STAT, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @regmap_field_read(i32 %147, i32* %7)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %141
  %152 = load %struct.device*, %struct.device** %6, align 8
  %153 = call i32 @dev_err(%struct.device* %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %3, align 4
  br label %164

155:                                              ; preds = %141
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @RT9455_FAULT, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i8*, i8** @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 8
  %161 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %162 = bitcast %union.power_supply_propval* %161 to i8**
  store i8* %160, i8** %162, align 8
  store i32 0, i32* %3, align 4
  br label %164

163:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %159, %151, %137, %127, %117, %107, %97, %85, %75, %65, %53, %43, %33, %23
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @GET_MASK(i32) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
