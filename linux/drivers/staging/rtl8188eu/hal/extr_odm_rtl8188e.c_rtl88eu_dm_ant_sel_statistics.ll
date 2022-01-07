; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_rtl88eu_dm_ant_sel_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_rtl88eu_dm_ant_sel_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i64, %struct.fast_ant_train }
%struct.fast_ant_train = type { i32*, i32*, i32*, i32* }

@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@MAIN_ANT_CG_TRX = common dso_local global i64 0, align 8
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8
@MAIN_ANT_CGCS_RX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_dm_ant_sel_statistics(%struct.odm_dm_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.odm_dm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fast_ant_train*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %11 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %10, i32 0, i32 1
  store %struct.fast_ant_train* %11, %struct.fast_ant_train** %9, align 8
  %12 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %13 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @MAIN_ANT_CG_TRX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.fast_ant_train*, %struct.fast_ant_train** %9, align 8
  %24 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %22
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.fast_ant_train*, %struct.fast_ant_train** %9, align 8
  %33 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %57

39:                                               ; preds = %17
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.fast_ant_train*, %struct.fast_ant_train** %9, align 8
  %42 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %40
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load %struct.fast_ant_train*, %struct.fast_ant_train** %9, align 8
  %51 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %39, %21
  br label %106

58:                                               ; preds = %4
  %59 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %60 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %58
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @MAIN_ANT_CGCS_RX, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.fast_ant_train*, %struct.fast_ant_train** %9, align 8
  %71 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %69
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.fast_ant_train*, %struct.fast_ant_train** %9, align 8
  %80 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %104

86:                                               ; preds = %64
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.fast_ant_train*, %struct.fast_ant_train** %9, align 8
  %89 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %87
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load %struct.fast_ant_train*, %struct.fast_ant_train** %9, align 8
  %98 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %86, %68
  br label %105

105:                                              ; preds = %104, %58
  br label %106

106:                                              ; preds = %105, %57
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
