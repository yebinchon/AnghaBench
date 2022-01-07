; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_debug.c_proc_get_best_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_debug.c_proc_get_best_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"The rx cnt of channel %3d = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"best_channel_24G = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_get_best_channel(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.adapter*, align 8
  %15 = alloca %struct.mlme_ext_priv*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = bitcast i8* %20 to %struct.net_device*
  store %struct.net_device* %21, %struct.net_device** %13, align 8
  %22 = load %struct.net_device*, %struct.net_device** %13, align 8
  %23 = call i64 @rtw_netdev_priv(%struct.net_device* %22)
  %24 = inttoptr i64 %23 to %struct.adapter*
  store %struct.adapter* %24, %struct.adapter** %14, align 8
  %25 = load %struct.adapter*, %struct.adapter** %14, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  store %struct.mlme_ext_priv* %26, %struct.mlme_ext_priv** %15, align 8
  store i32 0, i32* %16, align 4
  store i64 1, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %17, align 8
  br label %27

27:                                               ; preds = %48, %6
  %28 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %29 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %38 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %17, align 8
  store i64 %46, i64* %19, align 8
  br label %47

47:                                               ; preds = %45, %36
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %17, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %17, align 8
  br label %27

51:                                               ; preds = %27
  store i64 0, i64* %17, align 8
  br label %52

52:                                               ; preds = %125, %51
  %53 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %54 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %128

61:                                               ; preds = %52
  %62 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %63 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 6
  br i1 %69, label %70, label %97

70:                                               ; preds = %61
  %71 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %72 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %79 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %77, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %70
  %87 = load i64, i64* %17, align 8
  store i64 %87, i64* %19, align 8
  %88 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %89 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %18, align 8
  br label %96

96:                                               ; preds = %86, %70
  br label %97

97:                                               ; preds = %96, %61
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %106 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i64, i64* %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %114 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i64, i64* %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i64 (i8*, i32, i8*, i64, ...) @snprintf(i8* %101, i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %112, i64 %119)
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %97
  %126 = load i64, i64* %17, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %17, align 8
  br label %52

128:                                              ; preds = %52
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %16, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i64, i64* %18, align 8
  %137 = call i64 (i8*, i32, i8*, i64, ...) @snprintf(i8* %132, i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %136)
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %16, align 4
  %142 = load i32*, i32** %11, align 8
  store i32 1, i32* %142, align 4
  %143 = load i32, i32* %16, align 4
  ret i32 %143
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
