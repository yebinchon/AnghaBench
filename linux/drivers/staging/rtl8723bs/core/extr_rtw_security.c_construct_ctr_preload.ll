; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_construct_ctr_preload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_construct_ctr_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIFI_MGT_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32*, i32, i64)* @construct_ctr_preload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct_ctr_preload(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %24, %7
  %17 = load i32, i32* %15, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %15, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %15, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %15, align 4
  br label %16

27:                                               ; preds = %16
  store i32 0, i32* %15, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 30
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 15
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %32, %27
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 24
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %45, %42
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @WIFI_MGT_TYPE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = call i32 @BIT(i32 4)
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %55
  store i32 2, i32* %15, align 4
  br label %66

66:                                               ; preds = %80, %65
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %66

83:                                               ; preds = %66
  store i32 8, i32* %15, align 4
  br label %84

84:                                               ; preds = %98, %83
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 14
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 13, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %84

101:                                              ; preds = %84
  %102 = load i32, i32* %13, align 4
  %103 = sdiv i32 %102, 256
  %104 = trunc i32 %103 to i8
  %105 = zext i8 %104 to i32
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 14
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %13, align 4
  %109 = srem i32 %108, 256
  %110 = trunc i32 %109 to i8
  %111 = zext i8 %110 to i32
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 15
  store i32 %111, i32* %113, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
