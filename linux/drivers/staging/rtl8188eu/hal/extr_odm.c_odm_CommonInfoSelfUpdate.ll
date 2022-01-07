; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_CommonInfoSelfUpdate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_CommonInfoSelfUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i64*, i32*, i32, %struct.sta_info**, i64*, i64 }
%struct.sta_info = type { i32 }

@ODM_BW40M = common dso_local global i64 0, align 8
@ODM_ASSOCIATE_ENTRY_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_CommonInfoSelfUpdate(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sta_info*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %7 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ODM_BW40M, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %14 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %20 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %19, i32 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 2
  %24 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %25 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %24, i32 0, i32 5
  store i64 %23, i64* %25, align 8
  br label %41

26:                                               ; preds = %12
  %27 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %28 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %34 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 2
  %38 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %39 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %32, %26
  br label %41

41:                                               ; preds = %40, %18
  br label %49

42:                                               ; preds = %1
  %43 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %44 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %43, i32 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %48 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %41
  store i64 0, i64* %4, align 8
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @ODM_ASSOCIATE_ENTRY_NUM, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %56 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %55, i32 0, i32 3
  %57 = load %struct.sta_info**, %struct.sta_info*** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %57, i64 %58
  %60 = load %struct.sta_info*, %struct.sta_info** %59, align 8
  store %struct.sta_info* %60, %struct.sta_info** %5, align 8
  %61 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %62 = call i64 @IS_STA_VALID(%struct.sta_info* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %64, %54
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %4, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %50

71:                                               ; preds = %50
  %72 = load i64, i64* %3, align 8
  %73 = icmp eq i64 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %76 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  br label %80

77:                                               ; preds = %71
  %78 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %79 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %78, i32 0, i32 2
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  ret void
}

declare dso_local i64 @IS_STA_VALID(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
