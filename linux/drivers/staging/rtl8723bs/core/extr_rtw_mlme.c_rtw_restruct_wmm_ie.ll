; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_restruct_wmm_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_restruct_wmm_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_restruct_wmm_ie(%struct.adapter* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 12, i32* %12, align 4
  br label %14

14:                                               ; preds = %101, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %111

18:                                               ; preds = %14
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %12, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 221
  br i1 %25, label %26, label %101

26:                                               ; preds = %18
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = add i32 %28, 2
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %101

34:                                               ; preds = %26
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = add i32 %36, 3
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 80
  br i1 %41, label %42, label %101

42:                                               ; preds = %34
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = add i32 %44, 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 242
  br i1 %49, label %50, label %101

50:                                               ; preds = %42
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = add i32 %52, 5
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %101

58:                                               ; preds = %50
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, 5
  %61 = load i32, i32* %9, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %82, %63
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add i32 %67, 9
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %65

85:                                               ; preds = %65
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 7, i32* %90, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add i32 %92, 6
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 0, i32* %95, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 8
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 0, i32* %100, align 4
  br label %111

101:                                              ; preds = %58, %50, %42, %34, %26, %18
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = add i32 %103, 1
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 2
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %14

111:                                              ; preds = %85, %14
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
