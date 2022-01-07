; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_cmd.c_r8712_event_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_cmd.c_r8712_event_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, void (%struct._adapter*, i32*)* }
%struct._adapter = type { %struct.evt_priv }
%struct.evt_priv = type { i32, i32 }

@MAX_C2HEVT = common dso_local global i32 0, align 4
@_Survey = common dso_local global i32 0, align 4
@wlanevents = common dso_local global %struct.TYPE_2__* null, align 8
@_WPS_PBC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_event_handle(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca void (%struct._adapter*, i32*)*, align 8
  %9 = alloca %struct.evt_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct._adapter*, %struct._adapter** %3, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  store %struct.evt_priv* %11, %struct.evt_priv** %9, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %138

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = and i32 %18, 65535
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = ashr i32 %22, 24
  %24 = and i32 %23, 127
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 127
  %32 = load %struct.evt_priv*, %struct.evt_priv** %9, align 8
  %33 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %15
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = and i32 %38, 127
  %40 = load %struct.evt_priv*, %struct.evt_priv** %9, align 8
  %41 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %138

42:                                               ; preds = %15
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MAX_C2HEVT, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = and i32 %48, 127
  %50 = load %struct.evt_priv*, %struct.evt_priv** %9, align 8
  %51 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %138

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @_Survey, align 4
  %55 = call i32 @GEN_EVT_CODE(i32 %54)
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ugt i64 %59, 4
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  %64 = and i32 %63, 127
  %65 = load %struct.evt_priv*, %struct.evt_priv** %9, align 8
  %66 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %138

67:                                               ; preds = %57, %52
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wlanevents, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wlanevents, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  %88 = and i32 %87, 127
  %89 = load %struct.evt_priv*, %struct.evt_priv** %9, align 8
  %90 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %138

91:                                               ; preds = %76, %68
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @_WPS_PBC, align 4
  %97 = call i32 @GEN_EVT_CODE(i32 %96)
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  %102 = and i32 %101, 127
  %103 = load %struct.evt_priv*, %struct.evt_priv** %9, align 8
  %104 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %138

105:                                              ; preds = %94, %91
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.evt_priv*, %struct.evt_priv** %9, align 8
  %108 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.evt_priv*, %struct.evt_priv** %9, align 8
  %112 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 127
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load %struct.evt_priv*, %struct.evt_priv** %9, align 8
  %117 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %116, i32 0, i32 0
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %106
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32* %120, i32** %4, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wlanevents, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load void (%struct._adapter*, i32*)*, void (%struct._adapter*, i32*)** %125, align 8
  store void (%struct._adapter*, i32*)* %126, void (%struct._adapter*, i32*)** %8, align 8
  %127 = load void (%struct._adapter*, i32*)*, void (%struct._adapter*, i32*)** %8, align 8
  %128 = icmp ne void (%struct._adapter*, i32*)* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = load void (%struct._adapter*, i32*)*, void (%struct._adapter*, i32*)** %8, align 8
  %131 = load %struct._adapter*, %struct._adapter** %3, align 8
  %132 = load i32*, i32** %4, align 8
  call void %130(%struct._adapter* %131, i32* %132)
  br label %133

133:                                              ; preds = %129, %118
  %134 = load %struct.evt_priv*, %struct.evt_priv** %9, align 8
  %135 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %133, %99, %85, %61, %46, %36, %14
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @GEN_EVT_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
