; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_sta_mgt.c__rtw_init_sta_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_sta_mgt.c__rtw_init_sta_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_priv = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32*, i64, i32, i32, i64, i32, i64 }
%struct.sta_info = type { i32 }

@NUM_STA = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtw_init_sta_priv(%struct.sta_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sta_priv*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  store %struct.sta_priv* %0, %struct.sta_priv** %3, align 8
  %6 = load i32, i32* @NUM_STA, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = add i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i64 @vzalloc(i32 %10)
  %12 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %13 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %12, i32 0, i32 19
  store i64 %11, i64* %13, align 8
  %14 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %15 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %14, i32 0, i32 19
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @_FAIL, align 4
  store i32 %19, i32* %2, align 4
  br label %108

20:                                               ; preds = %1
  %21 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %22 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %21, i32 0, i32 19
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 4
  %25 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %26 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %25, i32 0, i32 19
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %24, %30
  %32 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %33 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %32, i32 0, i32 14
  store i64 %31, i64* %33, align 8
  %34 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %35 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %34, i32 0, i32 12
  %36 = call i32 @_rtw_init_queue(i32* %35)
  %37 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %38 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %37, i32 0, i32 18
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %41 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %40, i32 0, i32 17
  store i64 0, i64* %41, align 8
  %42 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %43 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %42, i32 0, i32 16
  %44 = call i32 @_rtw_init_queue(i32* %43)
  %45 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %46 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %45, i32 0, i32 15
  %47 = call i32 @_rtw_init_queue(i32* %46)
  %48 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %49 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %48, i32 0, i32 14
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.sta_info*
  store %struct.sta_info* %51, %struct.sta_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %74, %20
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @NUM_STA, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %58 = call i32 @_rtw_init_stainfo(%struct.sta_info* %57)
  %59 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %60 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %59, i32 0, i32 13
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 0
  %68 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %69 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %68, i32 0, i32 12
  %70 = call i32 @get_list_head(i32* %69)
  %71 = call i32 @list_add_tail(i32* %67, i32 %70)
  %72 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %73 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %72, i32 1
  store %struct.sta_info* %73, %struct.sta_info** %4, align 8
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %52

77:                                               ; preds = %52
  %78 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %79 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %78, i32 0, i32 11
  store i64 0, i64* %79, align 8
  %80 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %81 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %80, i32 0, i32 10
  store i64 0, i64* %81, align 8
  %82 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %83 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %82, i32 0, i32 9
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  %85 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %86 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %85, i32 0, i32 8
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %89 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %88, i32 0, i32 7
  %90 = call i32 @spin_lock_init(i32* %89)
  %91 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %92 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %91, i32 0, i32 6
  %93 = call i32 @spin_lock_init(i32* %92)
  %94 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %95 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  %96 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %97 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %99 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %98, i32 0, i32 0
  store i32 3, i32* %99, align 8
  %100 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %101 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %100, i32 0, i32 1
  store i32 3, i32* %101, align 4
  %102 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %103 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %102, i32 0, i32 2
  store i32 3, i32* %103, align 8
  %104 = load i32, i32* @NUM_STA, align 4
  %105 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %106 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @_SUCCESS, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %77, %18
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @vzalloc(i32) #1

declare dso_local i32 @_rtw_init_queue(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_rtw_init_stainfo(%struct.sta_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @get_list_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
