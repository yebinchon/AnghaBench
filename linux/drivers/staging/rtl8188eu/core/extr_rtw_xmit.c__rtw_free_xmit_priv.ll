; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c__rtw_free_xmit_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c__rtw_free_xmit_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_priv = type { i32, i32, i64, i32, i32, i64, i64, %struct.adapter* }
%struct.adapter = type { i32 }
%struct.xmit_frame = type { i32 }
%struct.xmit_buf = type { i32 }

@NR_XMIT_EXTBUFF = common dso_local global i32 0, align 4
@NR_XMITFRAME = common dso_local global i32 0, align 4
@NR_XMITBUFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rtw_free_xmit_priv(%struct.xmit_priv* %0) #0 {
  %2 = alloca %struct.xmit_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca %struct.xmit_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.xmit_priv* %0, %struct.xmit_priv** %2, align 8
  %8 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %9 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %8, i32 0, i32 7
  %10 = load %struct.adapter*, %struct.adapter** %9, align 8
  store %struct.adapter* %10, %struct.adapter** %4, align 8
  %11 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %12 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.xmit_frame*
  store %struct.xmit_frame* %14, %struct.xmit_frame** %5, align 8
  %15 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %16 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.xmit_buf*
  store %struct.xmit_buf* %18, %struct.xmit_buf** %6, align 8
  %19 = load i32, i32* @NR_XMIT_EXTBUFF, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %21 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %87

25:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @NR_XMITFRAME, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %33 = call i32 @rtw_os_xmit_complete(%struct.adapter* %31, %struct.xmit_frame* %32)
  %34 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %35 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %34, i32 1
  store %struct.xmit_frame* %35, %struct.xmit_frame** %5, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %26

39:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %49, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @NR_XMITBUFF, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %46 = call i32 @rtw_os_xmit_resource_free(%struct.xmit_buf* %45)
  %47 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %48 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %47, i32 1
  store %struct.xmit_buf* %48, %struct.xmit_buf** %6, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %40

52:                                               ; preds = %40
  %53 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %54 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @vfree(i32 %55)
  %57 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %58 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @vfree(i32 %59)
  %61 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %62 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.xmit_buf*
  store %struct.xmit_buf* %64, %struct.xmit_buf** %6, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %74, %52
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %71 = call i32 @rtw_os_xmit_resource_free(%struct.xmit_buf* %70)
  %72 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %73 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %72, i32 1
  store %struct.xmit_buf* %73, %struct.xmit_buf** %6, align 8
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %65

77:                                               ; preds = %65
  %78 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %79 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @vfree(i32 %80)
  %82 = load %struct.adapter*, %struct.adapter** %4, align 8
  %83 = call i32 @rtw_free_hwxmits(%struct.adapter* %82)
  %84 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %85 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %84, i32 0, i32 0
  %86 = call i32 @mutex_destroy(i32* %85)
  br label %87

87:                                               ; preds = %77, %24
  ret void
}

declare dso_local i32 @rtw_os_xmit_complete(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @rtw_os_xmit_resource_free(%struct.xmit_buf*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @rtw_free_hwxmits(%struct.adapter*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
