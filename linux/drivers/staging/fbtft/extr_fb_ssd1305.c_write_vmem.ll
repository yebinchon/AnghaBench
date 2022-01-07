; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1305.c_write_vmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1305.c_write_vmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 (%struct.fbtft_par.0*, i32*, i32)* }
%struct.fbtft_par.0 = type opaque
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"write failed and returned: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*, i64, i64)* @write_vmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vmem(%struct.fbtft_par* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.fbtft_par*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %14 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i64*
  store i64* %18, i64** %7, align 8
  %19 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %20 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %84, %3
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %26 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %24, %30
  br i1 %31, label %32, label %87

32:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %80, %32
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %36 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 8
  %42 = icmp slt i32 %34, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %33
  %44 = load i32*, i32** %8, align 8
  store i32 0, i32* %44, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %74, %43
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %77

48:                                               ; preds = %45
  %49 = load i64*, i64** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 8
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  %54 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %55 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %53, %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %49, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 %68, %69
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %48
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %45

77:                                               ; preds = %45
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %33

83:                                               ; preds = %33
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %23

87:                                               ; preds = %23
  %88 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %89 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @gpiod_set_value(i32 %91, i32 1)
  %93 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %94 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32 (%struct.fbtft_par.0*, i32*, i32)*, i32 (%struct.fbtft_par.0*, i32*, i32)** %95, align 8
  %97 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %98 = bitcast %struct.fbtft_par* %97 to %struct.fbtft_par.0*
  %99 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %100 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %104 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %110 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %108, %114
  %116 = sdiv i32 %115, 8
  %117 = call i32 %96(%struct.fbtft_par.0* %98, i32* %102, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %87
  %121 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %122 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %120, %87
  %129 = load i32, i32* %12, align 4
  ret i32 %129
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
