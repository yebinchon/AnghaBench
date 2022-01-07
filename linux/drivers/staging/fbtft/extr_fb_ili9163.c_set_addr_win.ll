; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9163.c_set_addr_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9163.c_set_addr_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MIPI_DCS_SET_COLUMN_ADDRESS = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PAGE_ADDRESS = common dso_local global i32 0, align 4
@__OFFSET = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_MEMORY_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fbtft_par*, i32, i32, i32, i32)* @set_addr_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_addr_win(%struct.fbtft_par* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fbtft_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %12 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %102 [
    i32 0, label %17
    i32 90, label %48
    i32 180, label %79
    i32 270, label %79
  ]

17:                                               ; preds = %5
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %19 = load i32, i32* @MIPI_DCS_SET_COLUMN_ADDRESS, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 8
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 255
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 8
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 255
  %28 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %18, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27)
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %30 = load i32, i32* @MIPI_DCS_SET_PAGE_ADDRESS, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @__OFFSET, align 4
  %33 = add nsw i32 %31, %32
  %34 = ashr i32 %33, 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @__OFFSET, align 4
  %37 = add nsw i32 %35, %36
  %38 = and i32 %37, 255
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @__OFFSET, align 4
  %41 = add nsw i32 %39, %40
  %42 = ashr i32 %41, 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @__OFFSET, align 4
  %45 = add nsw i32 %43, %44
  %46 = and i32 %45, 255
  %47 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %29, i32 %30, i32 %34, i32 %38, i32 %42, i32 %46)
  br label %108

48:                                               ; preds = %5
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %50 = load i32, i32* @MIPI_DCS_SET_COLUMN_ADDRESS, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @__OFFSET, align 4
  %53 = add nsw i32 %51, %52
  %54 = ashr i32 %53, 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @__OFFSET, align 4
  %57 = add nsw i32 %55, %56
  %58 = and i32 %57, 255
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @__OFFSET, align 4
  %61 = add nsw i32 %59, %60
  %62 = ashr i32 %61, 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @__OFFSET, align 4
  %65 = add nsw i32 %63, %64
  %66 = and i32 %65, 255
  %67 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %49, i32 %50, i32 %54, i32 %58, i32 %62, i32 %66)
  %68 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %69 = load i32, i32* @MIPI_DCS_SET_PAGE_ADDRESS, align 4
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, 8
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 255
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 8
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 255
  %78 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %68, i32 %69, i32 %71, i32 %73, i32 %75, i32 %77)
  br label %108

79:                                               ; preds = %5, %5
  %80 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %81 = load i32, i32* @MIPI_DCS_SET_COLUMN_ADDRESS, align 4
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 8
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 255
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 8
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 255
  %90 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %80, i32 %81, i32 %83, i32 %85, i32 %87, i32 %89)
  %91 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %92 = load i32, i32* @MIPI_DCS_SET_PAGE_ADDRESS, align 4
  %93 = load i32, i32* %8, align 4
  %94 = ashr i32 %93, 8
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, 255
  %97 = load i32, i32* %10, align 4
  %98 = ashr i32 %97, 8
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, 255
  %101 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %91, i32 %92, i32 %94, i32 %96, i32 %98, i32 %100)
  br label %108

102:                                              ; preds = %5
  %103 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %104 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %79, %48, %17
  %109 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %110 = load i32, i32* @MIPI_DCS_WRITE_MEMORY_START, align 4
  %111 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %109, i32 %110)
  ret void
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
