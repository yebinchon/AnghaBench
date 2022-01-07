; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_false_alarm_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_false_alarm_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822b_false_alarm_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_false_alarm_statistics(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  store %struct.rtw_dm_info* %9, %struct.rtw_dm_info** %3, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = call i32 @rtw_read32(%struct.rtw_dev* %10, i32 2056)
  %12 = call i32 @BIT(i32 28)
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = call i32 @rtw_read16(%struct.rtw_dev* %14, i32 2652)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %17 = call i32 @rtw_read16(%struct.rtw_dev* %16, i32 3912)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %20 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %23 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %26 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  br label %32

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %35 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %39 = call i32 @rtw_read32(%struct.rtw_dev* %38, i32 3844)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 65535
  %42 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %43 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, -65536
  %46 = lshr i32 %45, 16
  %47 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %48 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %50 = call i32 @rtw_read32(%struct.rtw_dev* %49, i32 3860)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 65535
  %53 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %54 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, -65536
  %57 = lshr i32 %56, 16
  %58 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %59 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %61 = call i32 @rtw_read32(%struct.rtw_dev* %60, i32 3856)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 65535
  %64 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %65 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, -65536
  %68 = lshr i32 %67, 16
  %69 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %70 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 4
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %72 = call i32 @rtw_read32(%struct.rtw_dev* %71, i32 3852)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, 65535
  %75 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %76 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, -65536
  %79 = lshr i32 %78, 16
  %80 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %81 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 4
  %82 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %83 = call i32 @BIT(i32 17)
  %84 = call i32 @rtw_write32_set(%struct.rtw_dev* %82, i32 2468, i32 %83)
  %85 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %86 = call i32 @BIT(i32 17)
  %87 = call i32 @rtw_write32_clr(%struct.rtw_dev* %85, i32 2468, i32 %86)
  %88 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %89 = call i32 @BIT(i32 15)
  %90 = call i32 @rtw_write32_clr(%struct.rtw_dev* %88, i32 2604, i32 %89)
  %91 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %92 = call i32 @BIT(i32 15)
  %93 = call i32 @rtw_write32_set(%struct.rtw_dev* %91, i32 2604, i32 %92)
  %94 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %95 = call i32 @BIT(i32 0)
  %96 = call i32 @rtw_write32_set(%struct.rtw_dev* %94, i32 2904, i32 %95)
  %97 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %98 = call i32 @BIT(i32 0)
  %99 = call i32 @rtw_write32_clr(%struct.rtw_dev* %97, i32 2904, i32 %98)
  ret void
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_read16(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_clr(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
