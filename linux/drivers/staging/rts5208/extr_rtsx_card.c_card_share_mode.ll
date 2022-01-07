; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_card_share_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_card_share_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@CARD_SHARE_MASK = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@CARD_SHARE_48_SD = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@CARD_SHARE_48_MS = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@CARD_SHARE_48_XD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@CARD_SHARE_BAROSSA_SD = common dso_local global i32 0, align 4
@CARD_SHARE_BAROSSA_MS = common dso_local global i32 0, align 4
@CARD_SHARE_BAROSSA_XD = common dso_local global i32 0, align 4
@CARD_SHARE_MODE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @card_share_mode(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %10 = call i64 @CHECK_PID(%struct.rtsx_chip* %9, i32 21000)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load i32, i32* @CARD_SHARE_MASK, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SD_CARD, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @CARD_SHARE_48_SD, align 4
  store i32 %18, i32* %8, align 4
  br label %35

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MS_CARD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @CARD_SHARE_48_MS, align 4
  store i32 %24, i32* %8, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @XD_CARD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @CARD_SHARE_48_XD, align 4
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %32, i32* %3, align 4
  br label %78

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34, %17
  br label %66

36:                                               ; preds = %2
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %38 = call i64 @CHECK_PID(%struct.rtsx_chip* %37, i32 21128)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  store i32 3, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SD_CARD, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @CARD_SHARE_BAROSSA_SD, align 4
  store i32 %45, i32* %8, align 4
  br label %62

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MS_CARD, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @CARD_SHARE_BAROSSA_MS, align 4
  store i32 %51, i32* %8, align 4
  br label %61

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @XD_CARD, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @CARD_SHARE_BAROSSA_XD, align 4
  store i32 %57, i32* %8, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %59, i32* %3, align 4
  br label %78

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %44
  br label %65

63:                                               ; preds = %36
  %64 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %64, i32* %3, align 4
  br label %78

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %35
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %68 = load i32, i32* @CARD_SHARE_MODE, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @rtsx_write_register(%struct.rtsx_chip* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %74, %63, %58, %31
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
