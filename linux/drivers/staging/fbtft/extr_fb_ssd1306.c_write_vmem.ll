; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1306.c_write_vmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1306.c_write_vmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 (%struct.fbtft_par.0*, i32*, i32)* }
%struct.fbtft_par.0 = type opaque
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"write failed and returned: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*, i64, i64)* @write_vmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vmem(%struct.fbtft_par* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.fbtft_par*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %16 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i64*
  store i64* %20, i64** %7, align 8
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %22 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %28 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %34 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %83, %3
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %86

41:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %79, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 8
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %42
  %48 = load i32*, i32** %10, align 8
  store i32 0, i32* %48, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %73, %47
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load i64*, i64** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %54, 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %53, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %52
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %52
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %49

76:                                               ; preds = %49
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %10, align 8
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %42

82:                                               ; preds = %42
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %37

86:                                               ; preds = %37
  %87 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %88 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @gpiod_set_value(i32 %90, i32 1)
  %92 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %93 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32 (%struct.fbtft_par.0*, i32*, i32)*, i32 (%struct.fbtft_par.0*, i32*, i32)** %94, align 8
  %96 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %97 = bitcast %struct.fbtft_par* %96 to %struct.fbtft_par.0*
  %98 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %99 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sdiv i32 %104, 8
  %106 = call i32 %95(%struct.fbtft_par.0* %97, i32* %101, i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %86
  %110 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %111 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %109, %86
  %118 = load i32, i32* %14, align 4
  ret i32 %118
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
