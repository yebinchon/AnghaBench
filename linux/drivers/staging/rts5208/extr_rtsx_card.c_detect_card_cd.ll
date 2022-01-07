; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_detect_card_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_detect_card_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@SD_CARD = common dso_local global i32 0, align 4
@SD_EXIST = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@MS_EXIST = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@XD_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Wrong card type: 0x%x\0A\00", align 1
@STATUS_FAIL = common dso_local global i32 0, align 4
@RTSX_BIPR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @detect_card_cd(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SD_CARD, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SD_EXIST, align 4
  store i32 %12, i32* %6, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MS_CARD, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @MS_EXIST, align 4
  store i32 %18, i32* %6, align 4
  br label %32

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @XD_CARD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @XD_EXIST, align 4
  store i32 %24, i32* %6, align 4
  br label %31

25:                                               ; preds = %19
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %27 = call i32 @rtsx_dev(%struct.rtsx_chip* %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %17
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %35 = load i32, i32* @RTSX_BIPR, align 4
  %36 = call i32 @rtsx_readl(%struct.rtsx_chip* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41, %25
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_readl(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
