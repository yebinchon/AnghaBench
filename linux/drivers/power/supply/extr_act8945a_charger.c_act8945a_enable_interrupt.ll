; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_enable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_enable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.act8945a_charger = type { %struct.regmap* }
%struct.regmap = type { i32 }

@APCH_CTRL_CHGEOCOUT = common dso_local global i8 0, align 1
@APCH_CTRL_CHGEOCIN = common dso_local global i8 0, align 1
@APCH_CTRL_INDIS = common dso_local global i8 0, align 1
@APCH_CTRL_INCON = common dso_local global i8 0, align 1
@APCH_CTRL_TEMPOUT = common dso_local global i8 0, align 1
@APCH_CTRL_TEMPIN = common dso_local global i8 0, align 1
@APCH_CTRL_TIMRPRE = common dso_local global i8 0, align 1
@APCH_CTRL_TIMRTOT = common dso_local global i8 0, align 1
@ACT8945A_APCH_CTRL = common dso_local global i32 0, align 4
@APCH_STATUS_CHGSTAT = common dso_local global i8 0, align 1
@APCH_STATUS_INSTAT = common dso_local global i8 0, align 1
@APCH_STATUS_TEMPSTAT = common dso_local global i8 0, align 1
@APCH_STATUS_TIMRSTAT = common dso_local global i8 0, align 1
@ACT8945A_APCH_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.act8945a_charger*)* @act8945a_enable_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_enable_interrupt(%struct.act8945a_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.act8945a_charger*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.act8945a_charger* %0, %struct.act8945a_charger** %3, align 8
  %7 = load %struct.act8945a_charger*, %struct.act8945a_charger** %3, align 8
  %8 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %7, i32 0, i32 0
  %9 = load %struct.regmap*, %struct.regmap** %8, align 8
  store %struct.regmap* %9, %struct.regmap** %4, align 8
  %10 = load i8, i8* @APCH_CTRL_CHGEOCOUT, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @APCH_CTRL_CHGEOCIN, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i8, i8* @APCH_CTRL_INDIS, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = load i8, i8* @APCH_CTRL_INCON, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %17, %19
  %21 = load i8, i8* @APCH_CTRL_TEMPOUT, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = load i8, i8* @APCH_CTRL_TEMPIN, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = load i8, i8* @APCH_CTRL_TIMRPRE, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = load i8, i8* @APCH_CTRL_TIMRTOT, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %5, align 1
  %34 = load %struct.regmap*, %struct.regmap** %4, align 8
  %35 = load i32, i32* @ACT8945A_APCH_CTRL, align 4
  %36 = load i8, i8* %5, align 1
  %37 = call i32 @regmap_write(%struct.regmap* %34, i32 %35, i8 zeroext %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %64

42:                                               ; preds = %1
  %43 = load i8, i8* @APCH_STATUS_CHGSTAT, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @APCH_STATUS_INSTAT, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %44, %46
  %48 = load i8, i8* @APCH_STATUS_TEMPSTAT, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %47, %49
  %51 = load i8, i8* @APCH_STATUS_TIMRSTAT, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %5, align 1
  %55 = load %struct.regmap*, %struct.regmap** %4, align 8
  %56 = load i32, i32* @ACT8945A_APCH_STATUS, align 4
  %57 = load i8, i8* %5, align 1
  %58 = call i32 @regmap_write(%struct.regmap* %55, i32 %56, i8 zeroext %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %61, %40
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
