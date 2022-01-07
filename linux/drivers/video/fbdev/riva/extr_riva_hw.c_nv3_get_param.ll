; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nv3_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nv3_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_7__*, i32*, %struct.TYPE_8__*)* @nv3_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @nv3_get_param(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %63, %3
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %66

14:                                               ; preds = %11
  store i32 128, i32* %8, align 4
  br label %15

15:                                               ; preds = %59, %14
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 32
  br i1 %17, label %18, label %62

18:                                               ; preds = %15
  store i32 128, i32* %9, align 4
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp sge i32 %20, 32
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = call i32 @nv3_arb(%struct.TYPE_7__* %32, i32* %33, %struct.TYPE_8__* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %22
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp sgt i32 %46, 256
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %41
  br label %50

50:                                               ; preds = %49, %38, %22
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %67

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %19

58:                                               ; preds = %19
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %15

62:                                               ; preds = %15
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %11

66:                                               ; preds = %11
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, i32* %7, align 4
  %69 = trunc i32 %68 to i8
  ret i8 %69
}

declare dso_local i32 @nv3_arb(%struct.TYPE_7__*, i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
