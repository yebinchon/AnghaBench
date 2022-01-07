; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_set_24g_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_set_24g_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txpower_info_2g = type { i32**, i32**, i32**, i32**, i32**, i32** }

@MAX_CHNL_GROUP_24G = common dso_local global i32 0, align 4
@MAX_TX_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txpower_info_2g*, i64)* @set_24g_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_24g_base(%struct.txpower_info_2g* %0, i64 %1) #0 {
  %3 = alloca %struct.txpower_info_2g*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.txpower_info_2g* %0, %struct.txpower_info_2g** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MAX_CHNL_GROUP_24G, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %3, align 8
  %13 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 45, i32* %20, align 4
  %21 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %3, align 8
  %22 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 45, i32* %29, align 4
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %7

33:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %94, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MAX_TX_COUNT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %97

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %3, align 8
  %43 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 2, i32* %48, align 4
  %49 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %3, align 8
  %50 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 4, i32* %55, align 4
  br label %93

56:                                               ; preds = %38
  %57 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %3, align 8
  %58 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 254, i32* %65, align 4
  %66 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %3, align 8
  %67 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %66, i32 0, i32 4
  %68 = load i32**, i32*** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds i32*, i32** %68, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 254, i32* %74, align 4
  %75 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %3, align 8
  %76 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %75, i32 0, i32 5
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 254, i32* %83, align 4
  %84 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %3, align 8
  %85 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %84, i32 0, i32 3
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 254, i32* %92, align 4
  br label %93

93:                                               ; preds = %56, %41
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %34

97:                                               ; preds = %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
