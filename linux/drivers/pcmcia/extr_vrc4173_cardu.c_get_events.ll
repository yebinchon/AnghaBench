; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4173_cardu.c_get_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4173_cardu.c_get_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IF_STATUS = common dso_local global i32 0, align 4
@CARD_SC = common dso_local global i32 0, align 4
@CARD_DT_CHG = common dso_local global i32 0, align 4
@CARD_DETECT1 = common dso_local global i32 0, align 4
@CARD_DETECT2 = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@RDY_CHG = common dso_local global i32 0, align 4
@READY = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@INT_GEN_CNT = common dso_local global i32 0, align 4
@CARD_TYPE_IO = common dso_local global i32 0, align 4
@BAT_DEAD_ST_CHG = common dso_local global i32 0, align 4
@STSCHG = common dso_local global i32 0, align 4
@SS_STSCHG = common dso_local global i32 0, align 4
@BAT_WAR_CHG = common dso_local global i32 0, align 4
@BV_DETECT_MASK = common dso_local global i32 0, align 4
@BV_DETECT_GOOD = common dso_local global i32 0, align 4
@BV_DETECT_WARN = common dso_local global i32 0, align 4
@SS_BATWARN = common dso_local global i32 0, align 4
@SS_BATDEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_events(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @IF_STATUS, align 4
  %8 = call i32 @exca_readb(i32* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @CARD_SC, align 4
  %11 = call i32 @exca_readb(i32* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CARD_DT_CHG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CARD_DETECT1, align 4
  %19 = load i32, i32* @CARD_DETECT2, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @CARD_DETECT1, align 4
  %23 = load i32, i32* @CARD_DETECT2, align 4
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @SS_DETECT, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %16, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RDY_CHG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @READY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @SS_READY, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35, %30
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @INT_GEN_CNT, align 4
  %47 = call i32 @exca_readb(i32* %45, i32 %46)
  %48 = load i32, i32* @CARD_TYPE_IO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @BAT_DEAD_ST_CHG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @STSCHG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @SS_STSCHG, align 4
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %56, %51
  br label %94

66:                                               ; preds = %44
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @BAT_WAR_CHG, align 4
  %69 = load i32, i32* @BAT_DEAD_ST_CHG, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @BV_DETECT_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @BV_DETECT_GOOD, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @BV_DETECT_WARN, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @SS_BATWARN, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  br label %91

87:                                               ; preds = %79
  %88 = load i32, i32* @SS_BATDEAD, align 4
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %73
  br label %93

93:                                               ; preds = %92, %66
  br label %94

94:                                               ; preds = %93, %65
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @exca_readb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
