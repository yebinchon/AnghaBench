; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_discover_se.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_discover_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.st_nci_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"st_nci_discover_se\0A\00", align 1
@ST_NCI_FACTORY_MODE = common dso_local global i32 0, align 4
@ST_NCI_UICC_HOST_ID = common dso_local global i32 0, align 4
@ST_NCI_ESE_HOST_ID = common dso_local global i32 0, align 4
@NCI_HCI_ADMIN_GATE = common dso_local global i32 0, align 4
@NCI_HCI_ADMIN_PARAM_WHITELIST = common dso_local global i32 0, align 4
@NCI_HCI_ANY_OK = common dso_local global i32 0, align 4
@NFC_SE_UICC = common dso_local global i32 0, align 4
@NFC_SE_EMBEDDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_nci_discover_se(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_nci_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %10 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %9)
  store %struct.st_nci_info* %10, %struct.st_nci_info** %8, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %13 = call i32 @st_nci_hci_network_init(%struct.nci_dev* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %108

18:                                               ; preds = %1
  %19 = load i32, i32* @ST_NCI_FACTORY_MODE, align 4
  %20 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %21 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %108

25:                                               ; preds = %18
  %26 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %27 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32, i32* @ST_NCI_UICC_HOST_ID, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %41 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32, i32* @ST_NCI_ESE_HOST_ID, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %39
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %58 = load i32, i32* @NCI_HCI_ADMIN_GATE, align 4
  %59 = load i32, i32* @NCI_HCI_ADMIN_PARAM_WHITELIST, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @nci_hci_set_param(%struct.nci_dev* %57, i32 %58, i32 %59, i32* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @NCI_HCI_ANY_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %108

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %53
  %70 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %71 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %79 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ST_NCI_UICC_HOST_ID, align 4
  %82 = load i32, i32* @NFC_SE_UICC, align 4
  %83 = call i32 @nfc_add_se(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %77, %69
  %87 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %88 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %96 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ST_NCI_ESE_HOST_ID, align 4
  %99 = load i32, i32* @NFC_SE_EMBEDDED, align 4
  %100 = call i32 @nfc_add_se(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %94, %86
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %66, %24, %16
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @st_nci_hci_network_init(%struct.nci_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nci_hci_set_param(%struct.nci_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @nfc_add_se(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
