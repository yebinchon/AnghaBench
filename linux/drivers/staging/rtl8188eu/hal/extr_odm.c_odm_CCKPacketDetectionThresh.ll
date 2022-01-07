; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_CCKPacketDetectionThresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_CCKPacketDetectionThresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, i32, i64, i64, %struct.false_alarm_stats }
%struct.false_alarm_stats = type { i32 }

@ODM_BB_CCK_PD = common dso_local global i32 0, align 4
@ODM_BB_FA_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_CCKPacketDetectionThresh(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.false_alarm_stats*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %5 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %6 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %5, i32 0, i32 4
  store %struct.false_alarm_stats* %6, %struct.false_alarm_stats** %4, align 8
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %8 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ODM_BB_CCK_PD, align 4
  %11 = load i32, i32* @ODM_BB_FA_CNT, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %18 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %66

22:                                               ; preds = %16
  %23 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %24 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %29 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 25
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 205, i32* %3, align 4
  br label %53

33:                                               ; preds = %27
  %34 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %35 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 25
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %40 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 10
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 131, i32* %3, align 4
  br label %52

44:                                               ; preds = %38, %33
  %45 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %4, align 8
  %46 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 1000
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 131, i32* %3, align 4
  br label %51

50:                                               ; preds = %44
  store i32 64, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51, %43
  br label %53

53:                                               ; preds = %52, %32
  br label %62

54:                                               ; preds = %22
  %55 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %4, align 8
  %56 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 1000
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 131, i32* %3, align 4
  br label %61

60:                                               ; preds = %54
  store i32 64, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %53
  %63 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @ODM_Write_CCK_CCA_Thres(%struct.odm_dm_struct* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %21, %15
  ret void
}

declare dso_local i32 @ODM_Write_CCK_CCA_Thres(%struct.odm_dm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
