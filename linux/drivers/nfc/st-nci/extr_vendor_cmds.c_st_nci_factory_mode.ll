; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_vendor_cmds.c_st_nci_factory_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_vendor_cmds.c_st_nci_factory_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nci_dev = type { i32 }
%struct.st_nci_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"factory mode: %x\0A\00", align 1
@ST_NCI_FACTORY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i8*, i64)* @st_nci_factory_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_factory_mode(%struct.nfc_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nci_dev*, align 8
  %9 = alloca %struct.st_nci_info*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %11 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %10)
  store %struct.nci_dev* %11, %struct.nci_dev** %8, align 8
  %12 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %13 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %12)
  store %struct.st_nci_info* %13, %struct.st_nci_info** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %43

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %39 [
    i32 128, label %29
    i32 129, label %34
  ]

29:                                               ; preds = %19
  %30 = load i32, i32* @ST_NCI_FACTORY_MODE, align 4
  %31 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %32 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %31, i32 0, i32 0
  %33 = call i32 @test_and_set_bit(i32 %30, i32* %32)
  br label %42

34:                                               ; preds = %19
  %35 = load i32, i32* @ST_NCI_FACTORY_MODE, align 4
  %36 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %37 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %36, i32 0, i32 0
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  br label %42

39:                                               ; preds = %19
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %34, %29
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
