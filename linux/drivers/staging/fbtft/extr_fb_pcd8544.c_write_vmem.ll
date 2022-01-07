; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_pcd8544.c_write_vmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_pcd8544.c_write_vmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 (%struct.fbtft_par.0*, i32*, i32)* }
%struct.fbtft_par.0 = type opaque
%struct.TYPE_5__ = type { i32 }

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
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i64*
  store i64* %18, i64** %7, align 8
  %19 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %20 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %65, %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 84
  br i1 %25, label %26, label %68

26:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %30, label %64

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %55, %30
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = load i64*, i64** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %37, 8
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %38, %39
  %41 = mul nsw i32 %40, 84
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %36, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 %49, %50
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %35
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %32

58:                                               ; preds = %32
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %8, align 8
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %27

64:                                               ; preds = %27
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %23

68:                                               ; preds = %23
  %69 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %70 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @gpiod_set_value(i32 %72, i32 1)
  %74 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %75 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (%struct.fbtft_par.0*, i32*, i32)*, i32 (%struct.fbtft_par.0*, i32*, i32)** %76, align 8
  %78 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %79 = bitcast %struct.fbtft_par* %78 to %struct.fbtft_par.0*
  %80 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %81 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 %77(%struct.fbtft_par.0* %79, i32* %83, i32 504)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %68
  %88 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %89 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %87, %68
  %96 = load i32, i32* %12, align 4
  ret i32 %96
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
