; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel_rfe_ifem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel_rfe_ifem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { i64, i64 }

@REG_RFESEL0 = common dso_local global i32 0, align 4
@REG_RFESEL8 = common dso_local global i32 0, align 4
@MASKBYTE1 = common dso_local global i32 0, align 4
@REG_RFEINV = common dso_local global i32 0, align 4
@BB_PATH_AB = common dso_local global i64 0, align 8
@REG_TRSW = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822b_set_channel_rfe_ifem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_set_channel_rfe_ifem(%struct.rtw_dev* %0, i32 %1) #0 {
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
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = load i32, i32* @REG_RFESEL0, align 4
  %18 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %16, i32 %17, i32 16777215, i32 7624564)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %20 = load i32, i32* @REG_RFESEL8, align 4
  %21 = load i32, i32* @MASKBYTE1, align 4
  %22 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %19, i32 %20, i32 %21, i32 87)
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %25 = load i32, i32* @REG_RFESEL0, align 4
  %26 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %24, i32 %25, i32 16777215, i32 4683079)
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %28 = load i32, i32* @REG_RFESEL8, align 4
  %29 = load i32, i32* @MASKBYTE1, align 4
  %30 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %27, i32 %28, i32 %29, i32 117)
  br label %31

31:                                               ; preds = %23, %15
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %33 = load i32, i32* @REG_RFEINV, align 4
  %34 = call i32 @BIT(i32 11)
  %35 = call i32 @BIT(i32 10)
  %36 = or i32 %34, %35
  %37 = or i32 %36, 63
  %38 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %32, i32 %33, i32 %37, i32 0)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %31
  %42 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %43 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BB_PATH_AB, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %49 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BB_PATH_AB, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47, %41
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %55 = load i32, i32* @REG_TRSW, align 4
  %56 = load i32, i32* @MASKLWORD, align 4
  %57 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %54, i32 %55, i32 %56, i32 42241)
  br label %77

58:                                               ; preds = %47
  %59 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %60 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %63 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %68 = load i32, i32* @REG_TRSW, align 4
  %69 = load i32, i32* @MASKLWORD, align 4
  %70 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %67, i32 %68, i32 %69, i32 42240)
  br label %76

71:                                               ; preds = %58
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %73 = load i32, i32* @REG_TRSW, align 4
  %74 = load i32, i32* @MASKLWORD, align 4
  %75 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %72, i32 %73, i32 %74, i32 40965)
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %53
  br label %83

78:                                               ; preds = %31
  %79 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %80 = load i32, i32* @REG_TRSW, align 4
  %81 = load i32, i32* @MASKLWORD, align 4
  %82 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %79, i32 %80, i32 %81, i32 42405)
  br label %83

83:                                               ; preds = %78, %77
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
