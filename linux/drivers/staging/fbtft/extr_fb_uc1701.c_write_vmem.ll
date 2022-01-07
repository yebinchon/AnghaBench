; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1701.c_write_vmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1701.c_write_vmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 (%struct.fbtft_par.0*, i32*, i32)* }
%struct.fbtft_par.0 = type opaque

@PAGES = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
@LCD_PAGE_ADDRESS = common dso_local global i32 0, align 4
@LCD_COL_ADDRESS = common dso_local global i32 0, align 4
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
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %102, %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PAGES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %105

23:                                               ; preds = %19
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %25 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %66, %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @WIDTH, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  store i32 0, i32* %33, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %60, %32
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i64*, i64** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %39, 8
  %41 = load i32, i32* @WIDTH, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @WIDTH, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %42, %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %38, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = load i32, i32* %11, align 4
  %56 = shl i32 %54, %55
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %37
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %34

63:                                               ; preds = %34
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %8, align 8
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %28

69:                                               ; preds = %28
  %70 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %71 = load i32, i32* @LCD_PAGE_ADDRESS, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @write_reg(%struct.fbtft_par* %70, i32 %73)
  %75 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %76 = call i32 @write_reg(%struct.fbtft_par* %75, i32 0)
  %77 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %78 = load i32, i32* @LCD_COL_ADDRESS, align 4
  %79 = call i32 @write_reg(%struct.fbtft_par* %77, i32 %78)
  %80 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %81 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @gpiod_set_value(i32 %83, i32 1)
  %85 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %86 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32 (%struct.fbtft_par.0*, i32*, i32)*, i32 (%struct.fbtft_par.0*, i32*, i32)** %87, align 8
  %89 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %90 = bitcast %struct.fbtft_par* %89 to %struct.fbtft_par.0*
  %91 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %92 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @WIDTH, align 4
  %96 = call i32 %88(%struct.fbtft_par.0* %90, i32* %94, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %98 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @gpiod_set_value(i32 %100, i32 0)
  br label %102

102:                                              ; preds = %69
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %19

105:                                              ; preds = %19
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %110 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %108, %105
  %117 = load i32, i32* %12, align 4
  ret i32 %117
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
