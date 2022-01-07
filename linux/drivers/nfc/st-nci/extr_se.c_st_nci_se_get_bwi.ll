; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_se_get_bwi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_se_get_bwi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.st_nci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ST_NCI_ESE_MAX_LENGTH = common dso_local global i32 0, align 4
@ST_NCI_ATR_DEFAULT_BWI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @st_nci_se_get_bwi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_se_get_bwi(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_nci_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %7 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %8 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %7)
  store %struct.st_nci_info* %8, %struct.st_nci_info** %6, align 8
  store i32 1, i32* %4, align 4
  br label %9

9:                                                ; preds = %46, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ST_NCI_ESE_MAX_LENGTH, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load %struct.st_nci_info*, %struct.st_nci_info** %6, align 8
  %15 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ST_NCI_ATR_GET_Y_FROM_TD(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @ST_NCI_ATR_TA_PRESENT(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %13
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @ST_NCI_ATR_TB_PRESENT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  %36 = load %struct.st_nci_info*, %struct.st_nci_info** %6, align 8
  %37 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 4
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %9

49:                                               ; preds = %9
  %50 = load i32, i32* @ST_NCI_ATR_DEFAULT_BWI, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %33
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @ST_NCI_ATR_GET_Y_FROM_TD(i32) #1

declare dso_local i64 @ST_NCI_ATR_TA_PRESENT(i32) #1

declare dso_local i64 @ST_NCI_ATR_TB_PRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
