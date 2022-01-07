; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c__free_xmit_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c__free_xmit_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_priv = type { i32, i32, i32*, i64, %struct._adapter* }
%struct._adapter = type { i32 }
%struct.xmit_frame = type { i32 }
%struct.xmit_buf = type { i32 }

@NR_XMITFRAME = common dso_local global i32 0, align 4
@NR_XMITBUFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_free_xmit_priv(%struct.xmit_priv* %0) #0 {
  %2 = alloca %struct.xmit_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca %struct.xmit_buf*, align 8
  store %struct.xmit_priv* %0, %struct.xmit_priv** %2, align 8
  %7 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %8 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %7, i32 0, i32 4
  %9 = load %struct._adapter*, %struct._adapter** %8, align 8
  store %struct._adapter* %9, %struct._adapter** %4, align 8
  %10 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %11 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to %struct.xmit_frame*
  store %struct.xmit_frame* %13, %struct.xmit_frame** %5, align 8
  %14 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %15 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.xmit_buf*
  store %struct.xmit_buf* %17, %struct.xmit_buf** %6, align 8
  %18 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %19 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %66

23:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @NR_XMITFRAME, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct._adapter*, %struct._adapter** %4, align 8
  %30 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %31 = call i32 @r8712_xmit_complete(%struct._adapter* %29, %struct.xmit_frame* %30)
  %32 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %33 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %32, i32 1
  store %struct.xmit_frame* %33, %struct.xmit_frame** %5, align 8
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %24

37:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @NR_XMITBUFF, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct._adapter*, %struct._adapter** %4, align 8
  %44 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %45 = call i32 @r8712_xmit_resource_free(%struct._adapter* %43, %struct.xmit_buf* %44)
  %46 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %47 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kfree(i32 %48)
  %50 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %51 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %50, i32 1
  store %struct.xmit_buf* %51, %struct.xmit_buf** %6, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %57 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kfree(i32 %58)
  %60 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %61 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @kfree(i32 %62)
  %64 = load %struct._adapter*, %struct._adapter** %4, align 8
  %65 = call i32 @free_hwxmits(%struct._adapter* %64)
  br label %66

66:                                               ; preds = %55, %22
  ret void
}

declare dso_local i32 @r8712_xmit_complete(%struct._adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @r8712_xmit_resource_free(%struct._adapter*, %struct.xmit_buf*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_hwxmits(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
