; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_get_lun_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_get_lun_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32* }

@XD_CARD = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_lun_card(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %8, %15
  %17 = load i32, i32* @XD_CARD, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @XD_CARD, align 4
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %2
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %23 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %26 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %24, %31
  %33 = load i32, i32* @SD_CARD, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* @SD_CARD, align 4
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %21
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %39 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %42 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %40, %47
  %49 = load i32, i32* @MS_CARD, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* @MS_CARD, align 4
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %51, %35, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
