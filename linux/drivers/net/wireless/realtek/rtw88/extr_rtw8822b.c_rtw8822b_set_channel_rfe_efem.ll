; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel_rfe_efem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel_rfe_efem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { i64, i64 }

@REG_RFESEL0 = common dso_local global i32 0, align 4
@REG_RFESEL8 = common dso_local global i32 0, align 4
@MASKBYTE1 = common dso_local global i32 0, align 4
@REG_RFECTL = common dso_local global i32 0, align 4
@REG_RFEINV = common dso_local global i32 0, align 4
@BB_PATH_AB = common dso_local global i64 0, align 8
@REG_TRSW = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822b_set_channel_rfe_efem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_set_channel_rfe_efem(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_hal*, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  store %struct.rtw_hal* %8, %struct.rtw_hal** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 14
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = load i32, i32* @REG_RFESEL0, align 4
  %18 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %16, i32 %17, i32 16777215, i32 7362416)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %20 = load i32, i32* @REG_RFESEL8, align 4
  %21 = load i32, i32* @MASKBYTE1, align 4
  %22 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %19, i32 %20, i32 %21, i32 87)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %24 = load i32, i32* @REG_RFECTL, align 4
  %25 = call i32 @BIT(i32 4)
  %26 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %23, i32 %24, i32 %25, i32 0)
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %29 = load i32, i32* @REG_RFESEL0, align 4
  %30 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %28, i32 %29, i32 16777215, i32 1537303)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %32 = load i32, i32* @REG_RFESEL8, align 4
  %33 = load i32, i32* @MASKBYTE1, align 4
  %34 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %31, i32 %32, i32 %33, i32 117)
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %36 = load i32, i32* @REG_RFECTL, align 4
  %37 = call i32 @BIT(i32 5)
  %38 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %35, i32 %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %27, %15
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %41 = load i32, i32* @REG_RFEINV, align 4
  %42 = call i32 @BIT(i32 11)
  %43 = call i32 @BIT(i32 10)
  %44 = or i32 %42, %43
  %45 = or i32 %44, 63
  %46 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %40, i32 %41, i32 %45, i32 0)
  %47 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %48 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BB_PATH_AB, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %39
  %53 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %54 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BB_PATH_AB, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52, %39
  %59 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %60 = load i32, i32* @REG_TRSW, align 4
  %61 = load i32, i32* @MASKLWORD, align 4
  %62 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %59, i32 %60, i32 %61, i32 42241)
  br label %82

63:                                               ; preds = %52
  %64 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %65 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %68 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %73 = load i32, i32* @REG_TRSW, align 4
  %74 = load i32, i32* @MASKLWORD, align 4
  %75 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %72, i32 %73, i32 %74, i32 42240)
  br label %81

76:                                               ; preds = %63
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %78 = load i32, i32* @REG_TRSW, align 4
  %79 = load i32, i32* @MASKLWORD, align 4
  %80 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %77, i32 %78, i32 %79, i32 40965)
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %58
  ret void
}

declare dso_local i32 @rtw_write32s_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
