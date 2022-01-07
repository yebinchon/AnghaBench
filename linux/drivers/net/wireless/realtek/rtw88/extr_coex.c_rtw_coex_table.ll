; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse, %struct.rtw_chip_info*, %struct.rtw_coex }
%struct.rtw_efuse = type { i64 }
%struct.rtw_chip_info = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rtw_coex = type { %struct.rtw_coex_dm }
%struct.rtw_coex_dm = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64)* @rtw_coex_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_table(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_dm*, align 8
  %7 = alloca %struct.rtw_chip_info*, align 8
  %8 = alloca %struct.rtw_efuse*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 2
  store %struct.rtw_coex* %10, %struct.rtw_coex** %5, align 8
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 0
  store %struct.rtw_coex_dm* %12, %struct.rtw_coex_dm** %6, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 1
  %15 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %14, align 8
  store %struct.rtw_chip_info* %15, %struct.rtw_chip_info** %7, align 8
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 0
  store %struct.rtw_efuse* %17, %struct.rtw_efuse** %8, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %20 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.rtw_efuse*, %struct.rtw_efuse** %8, align 8
  %22 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %28 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %33 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %34 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %41 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rtw_coex_set_table(%struct.rtw_dev* %32, i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %31, %25
  br label %75

49:                                               ; preds = %2
  %50 = load i64, i64* %4, align 8
  %51 = sub i64 %50, 100
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %54 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %49
  %58 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %59 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %60 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %67 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rtw_coex_set_table(%struct.rtw_dev* %58, i32 %65, i32 %72)
  br label %74

74:                                               ; preds = %57, %49
  br label %75

75:                                               ; preds = %74, %48
  ret void
}

declare dso_local i32 @rtw_coex_set_table(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
