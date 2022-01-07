; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_xmit.c_r8712_xmitframe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_xmit.c_r8712_xmitframe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.xmit_priv = type { i32, %struct.hw_xmit* }
%struct.hw_xmit = type { i32 }
%struct.xmit_buf = type { i32 }
%struct.xmit_frame = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@DATA_FRAMETAG = common dso_local global i64 0, align 8
@AGGR_NR_HIGH_BOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_xmitframe_complete(%struct._adapter* %0, %struct.xmit_priv* %1, %struct.xmit_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca %struct.xmit_priv*, align 8
  %7 = alloca %struct.xmit_buf*, align 8
  %8 = alloca %struct.hw_xmit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xmit_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store %struct.xmit_priv* %1, %struct.xmit_priv** %6, align 8
  store %struct.xmit_buf* %2, %struct.xmit_buf** %7, align 8
  store %struct.xmit_frame* null, %struct.xmit_frame** %10, align 8
  %13 = load i32, i32* @_SUCCESS, align 4
  store i32 %13, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %15 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %14, i32 0, i32 1
  %16 = load %struct.hw_xmit*, %struct.hw_xmit** %15, align 8
  store %struct.hw_xmit* %16, %struct.hw_xmit** %8, align 8
  %17 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %18 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %21 = icmp ne %struct.xmit_buf* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %24 = call %struct.xmit_buf* @r8712_alloc_xmitbuf(%struct.xmit_priv* %23)
  store %struct.xmit_buf* %24, %struct.xmit_buf** %7, align 8
  %25 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %26 = icmp ne %struct.xmit_buf* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %82

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %31 = load %struct.hw_xmit*, %struct.hw_xmit** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.xmit_frame* @dequeue_xframe_ex(%struct.xmit_priv* %30, %struct.hw_xmit* %31, i32 %32)
  store %struct.xmit_frame* %33, %struct.xmit_frame** %10, align 8
  %34 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %35 = icmp ne %struct.xmit_frame* %34, null
  br i1 %35, label %36, label %77

36:                                               ; preds = %29
  %37 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %38 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %39 = call i32 @xmitframe_xmitbuf_attach(%struct.xmit_frame* %37, %struct.xmit_buf* %38)
  %40 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %41 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DATA_FRAMETAG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %36
  %46 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %47 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 15
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct._adapter*, %struct._adapter** %5, align 8
  %53 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %54 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %57 = call i32 @r8712_xmitframe_coalesce(%struct._adapter* %52, i32 %55, %struct.xmit_frame* %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %51, %45
  %59 = load %struct._adapter*, %struct._adapter** %5, align 8
  %60 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %61 = call i32 @r8712_xmit_complete(%struct._adapter* %59, %struct.xmit_frame* %60)
  br label %62

62:                                               ; preds = %58, %36
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @_SUCCESS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct._adapter*, %struct._adapter** %5, align 8
  %68 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %69 = call i32 @dump_xframe(%struct._adapter* %67, %struct.xmit_frame* %68)
  br label %74

70:                                               ; preds = %62
  %71 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %72 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %73 = call i32 @r8712_free_xmitframe_ex(%struct.xmit_priv* %71, %struct.xmit_frame* %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %81

77:                                               ; preds = %29
  %78 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %79 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %80 = call i32 @r8712_free_xmitbuf(%struct.xmit_priv* %78, %struct.xmit_buf* %79)
  store i32 0, i32* %4, align 4
  br label %82

81:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %77, %27
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.xmit_buf* @r8712_alloc_xmitbuf(%struct.xmit_priv*) #1

declare dso_local %struct.xmit_frame* @dequeue_xframe_ex(%struct.xmit_priv*, %struct.hw_xmit*, i32) #1

declare dso_local i32 @xmitframe_xmitbuf_attach(%struct.xmit_frame*, %struct.xmit_buf*) #1

declare dso_local i32 @r8712_xmitframe_coalesce(%struct._adapter*, i32, %struct.xmit_frame*) #1

declare dso_local i32 @r8712_xmit_complete(%struct._adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @dump_xframe(%struct._adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @r8712_free_xmitframe_ex(%struct.xmit_priv*, %struct.xmit_frame*) #1

declare dso_local i32 @r8712_free_xmitbuf(%struct.xmit_priv*, %struct.xmit_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
