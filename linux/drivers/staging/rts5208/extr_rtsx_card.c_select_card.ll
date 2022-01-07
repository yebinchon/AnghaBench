; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_select_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_select_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@SD_CARD = common dso_local global i32 0, align 4
@SD_MOD_SEL = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@MS_MOD_SEL = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@XD_MOD_SEL = common dso_local global i32 0, align 4
@SPI_CARD = common dso_local global i32 0, align 4
@SPI_MOD_SEL = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@CARD_SELECT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_card(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SD_CARD, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @SD_MOD_SEL, align 4
  store i32 %18, i32* %7, align 4
  br label %42

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MS_CARD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @MS_MOD_SEL, align 4
  store i32 %24, i32* %7, align 4
  br label %41

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @XD_CARD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @XD_MOD_SEL, align 4
  store i32 %30, i32* %7, align 4
  br label %40

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SPI_CARD, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @SPI_MOD_SEL, align 4
  store i32 %36, i32* %7, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %38, i32* %3, align 4
  br label %66

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %29
  br label %41

41:                                               ; preds = %40, %23
  br label %42

42:                                               ; preds = %41, %17
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %44 = load i32, i32* @CARD_SELECT, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @rtsx_write_register(%struct.rtsx_chip* %43, i32 %44, i32 7, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %54 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @card_share_mode(%struct.rtsx_chip* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @STATUS_SUCCESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %62, i32* %3, align 4
  br label %66

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %2
  %65 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %61, %49, %37
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @card_share_mode(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
