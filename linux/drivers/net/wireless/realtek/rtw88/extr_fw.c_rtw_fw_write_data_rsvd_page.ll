; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fw_write_data_rsvd_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fw_write_data_rsvd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BIT_MASK_BCN_HEAD_1_V1 = common dso_local global i32 0, align 4
@REG_FIFOPAGE_CTRL_2 = common dso_local global i32 0, align 4
@BIT_BCN_VALID_V1 = common dso_local global i32 0, align 4
@REG_CR = common dso_local global i64 0, align 8
@BIT_ENSWBCN = common dso_local global i32 0, align 4
@REG_FWHW_TXQ_CTRL = common dso_local global i64 0, align 8
@BIT_EN_BCNQ_DL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to write data to rsvd page\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"error beacon valid\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_fw_write_data_rsvd_page(%struct.rtw_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 1
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %108

22:                                               ; preds = %4
  %23 = load i32, i32* @BIT_MASK_BCN_HEAD_1_V1, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %27 = load i32, i32* @REG_FIFOPAGE_CTRL_2, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @BIT_BCN_VALID_V1, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @rtw_write16(%struct.rtw_dev* %26, i32 %27, i32 %30)
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %33 = load i64, i64* @REG_CR, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i32 @rtw_read8(%struct.rtw_dev* %32, i64 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @BIT_ENSWBCN, align 4
  %39 = ashr i32 %38, 8
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %43 = load i64, i64* @REG_CR, align 8
  %44 = add nsw i64 %43, 1
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @rtw_write8(%struct.rtw_dev* %42, i64 %44, i32 %45)
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %48 = load i64, i64* @REG_FWHW_TXQ_CTRL, align 8
  %49 = add nsw i64 %48, 2
  %50 = call i32 @rtw_read8(%struct.rtw_dev* %47, i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @BIT_EN_BCNQ_DL, align 4
  %54 = ashr i32 %53, 16
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %59 = load i64, i64* @REG_FWHW_TXQ_CTRL, align 8
  %60 = add nsw i64 %59, 2
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @rtw_write8(%struct.rtw_dev* %58, i64 %60, i32 %61)
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @rtw_hci_write_data_rsvd_page(%struct.rtw_dev* %63, i32* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %22
  %70 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %71 = call i32 @rtw_err(%struct.rtw_dev* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %84

72:                                               ; preds = %22
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %74 = load i32, i32* @REG_FIFOPAGE_CTRL_2, align 4
  %75 = load i32, i32* @BIT_BCN_VALID_V1, align 4
  %76 = call i32 @check_hw_ready(%struct.rtw_dev* %73, i32 %74, i32 %75, i32 1)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %80 = call i32 @rtw_err(%struct.rtw_dev* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %78, %72
  br label %84

84:                                               ; preds = %83, %69
  %85 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %86 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %90 = load i32, i32* @REG_FIFOPAGE_CTRL_2, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @BIT_BCN_VALID_V1, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @rtw_write16(%struct.rtw_dev* %89, i32 %90, i32 %93)
  %95 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %96 = load i64, i64* @REG_FWHW_TXQ_CTRL, align 8
  %97 = add nsw i64 %96, 2
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @rtw_write8(%struct.rtw_dev* %95, i64 %97, i32 %99)
  %101 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %102 = load i64, i64* @REG_CR, align 8
  %103 = add nsw i64 %102, 1
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rtw_write8(%struct.rtw_dev* %101, i64 %103, i32 %105)
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %84, %19
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i64) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_hci_write_data_rsvd_page(%struct.rtw_dev*, i32*, i32) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @check_hw_ready(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
