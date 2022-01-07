; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_tls8204.c_write_vmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_tls8204.c_write_vmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 (%struct.fbtft_par.0*, i32*, i32)* }
%struct.fbtft_par.0 = type opaque
%struct.TYPE_5__ = type { i32 }

@HEIGHT = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
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
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %15 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %111, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @HEIGHT, align 4
  %23 = sdiv i32 %22, 8
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %114

25:                                               ; preds = %20
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %27 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %12, align 8
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %31 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @gpiod_set_value(i32 %33, i32 0)
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %36 = call i32 @write_reg(%struct.fbtft_par* %35, i32 128)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = or i32 64, %38
  %40 = call i32 @write_reg(%struct.fbtft_par* %37, i32 %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %79, %25
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @WIDTH, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %71, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @WIDTH, align 4
  %49 = mul nsw i32 8, %48
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = load i64*, i64** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %55, 8
  %57 = load i32, i32* @WIDTH, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %54, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %68, 128
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %51
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* @WIDTH, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %46

75:                                               ; preds = %46
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %12, align 8
  store i32 %76, i32* %77, align 4
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %41

82:                                               ; preds = %41
  %83 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %84 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @gpiod_set_value(i32 %86, i32 1)
  %88 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %89 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.fbtft_par.0*, i32*, i32)*, i32 (%struct.fbtft_par.0*, i32*, i32)** %90, align 8
  %92 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %93 = bitcast %struct.fbtft_par* %92 to %struct.fbtft_par.0*
  %94 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %95 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @WIDTH, align 4
  %99 = call i32 %91(%struct.fbtft_par.0* %93, i32* %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %82
  %103 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %104 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %114

110:                                              ; preds = %82
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %20

114:                                              ; preds = %102, %20
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
