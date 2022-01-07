; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_write_scbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_write_scbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex, %struct.rtw_chip_info* }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32 }
%struct.rtw_chip_info = type { i32, i32 }

@COEX_SCBD_FIX2M = common dso_local global i32 0, align 4
@BIT_BT_INT_EN = common dso_local global i32 0, align 4
@REG_WIFI_BT_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_write_scbd(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_chip_info*, align 8
  %8 = alloca %struct.rtw_coex*, align 8
  %9 = alloca %struct.rtw_coex_stat*, align 8
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 1
  %13 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %12, align 8
  store %struct.rtw_chip_info* %13, %struct.rtw_chip_info** %7, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  store %struct.rtw_coex* %15, %struct.rtw_coex** %8, align 8
  %16 = load %struct.rtw_coex*, %struct.rtw_coex** %8, align 8
  %17 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %16, i32 0, i32 0
  store %struct.rtw_coex_stat* %17, %struct.rtw_coex_stat** %9, align 8
  store i32 2, i32* %10, align 4
  %18 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %19 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %81

23:                                               ; preds = %3
  %24 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %25 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %30 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @COEX_SCBD_FIX2M, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @COEX_SCBD_FIX2M, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @COEX_SCBD_FIX2M, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %41
  br label %64

51:                                               ; preds = %33, %23
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %63

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %58, %54
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %67 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %9, align 8
  %73 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @BIT_BT_INT_EN, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %78 = load i32, i32* @REG_WIFI_BT_INFO, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @rtw_write16(%struct.rtw_dev* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %22, %70, %64
  ret void
}

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
