; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_sta_mgt.c__rtw_init_sta_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_sta_mgt.c__rtw_init_sta_priv.c"
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
  br label %77

20:                                               ; preds = %1
  %21 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %22 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %21, i32 0, i32 19
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 4
  %25 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %26 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %25, i32 0, i32 19
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, 3
  %29 = sub i64 %24, %28
  %30 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %31 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %30, i32 0, i32 14
  store i64 %29, i64* %31, align 8
  %32 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %33 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %32, i32 0, i32 12
  %34 = call i32 @_rtw_init_queue(i32* %33)
  %35 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %36 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %35, i32 0, i32 18
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %39 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %38, i32 0, i32 17
  store i64 0, i64* %39, align 8
  %40 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %41 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %40, i32 0, i32 16
  %42 = call i32 @_rtw_init_queue(i32* %41)
  %43 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %44 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %43, i32 0, i32 15
  %45 = call i32 @_rtw_init_queue(i32* %44)
  %46 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %47 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %46, i32 0, i32 14
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.sta_info*
  store %struct.sta_info* %49, %struct.sta_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %72, %20
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @NUM_STA, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %56 = call i32 @_rtw_init_stainfo(%struct.sta_info* %55)
  %57 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %58 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %57, i32 0, i32 13
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 0
  %66 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %67 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %66, i32 0, i32 12
  %68 = call i32 @get_list_head(i32* %67)
  %69 = call i32 @list_add_tail(i32* %65, i32 %68)
  %70 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 1
  store %struct.sta_info* %71, %struct.sta_info** %4, align 8
  br label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %50

75:                                               ; preds = %50
  %76 = load i32, i32* @_SUCCESS, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
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
