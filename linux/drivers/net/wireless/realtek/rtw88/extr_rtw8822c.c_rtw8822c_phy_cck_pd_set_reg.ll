; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_phy_cck_pd_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_phy_cck_pd_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rtw_dev = type { i32 }

@RTW_CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8
@RTW_RF_PATH_MAX = common dso_local global i64 0, align 8
@rtw8822c_cck_pd_reg = common dso_local global %struct.TYPE_2__** null, align 8
@RTW_CCK_PD_MAX = common dso_local global i64 0, align 8
@RTW_CCK_CS_ERR1 = common dso_local global i64 0, align 8
@RTW_CCK_CS_ERR2 = common dso_local global i64 0, align 8
@RTW_CCK_CS_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64, i64, i64, i64)* @rtw8822c_phy_cck_pd_set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_phy_cck_pd_set_reg(%struct.rtw_dev* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @RTW_CHANNEL_WIDTH_40, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @RTW_RF_PATH_MAX, align 8
  %19 = icmp uge i64 %17, %18
  br label %20

20:                                               ; preds = %16, %5
  %21 = phi i1 [ true, %5 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %131

26:                                               ; preds = %20
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rtw8822c_cck_pd_reg, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rtw8822c_cck_pd_reg, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @rtw_read32_mask(%struct.rtw_dev* %27, i32 %35, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rtw8822c_cck_pd_reg, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rtw8822c_cck_pd_reg, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @rtw_read32_mask(%struct.rtw_dev* %45, i32 %53, i32 %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @RTW_CCK_PD_MAX, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %26
  %73 = load i64, i64* @RTW_CCK_PD_MAX, align 8
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %72, %26
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @RTW_CCK_CS_ERR1, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @RTW_CCK_CS_ERR2, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %74
  %83 = load i64, i64* %12, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %12, align 8
  br label %92

85:                                               ; preds = %78
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @RTW_CCK_CS_MAX, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i64, i64* @RTW_CCK_CS_MAX, align 8
  store i64 %90, i64* %12, align 8
  br label %91

91:                                               ; preds = %89, %85
  br label %92

92:                                               ; preds = %91, %82
  %93 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %94 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rtw8822c_cck_pd_reg, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %94, i64 %95
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rtw8822c_cck_pd_reg, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %102, i64 %103
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @rtw_write32_mask(%struct.rtw_dev* %93, i32 %101, i32 %109, i64 %110)
  %112 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %113 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rtw8822c_cck_pd_reg, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %113, i64 %114
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rtw8822c_cck_pd_reg, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %121, i64 %122
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %12, align 8
  %130 = call i32 @rtw_write32_mask(%struct.rtw_dev* %112, i32 %120, i32 %128, i64 %129)
  br label %131

131:                                              ; preds = %92, %25
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
