; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1289.c_set_addr_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1289.c_set_addr_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

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
  switch i32 %16, label %77 [
    i32 0, label %17
    i32 180, label %24
    i32 270, label %47
    i32 90, label %62
  ]

17:                                               ; preds = %5
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %18, i32 78, i32 %19)
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %21, i32 79, i32 %22)
  br label %77

24:                                               ; preds = %5
  %25 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %27 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %25, i32 78, i32 %34)
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %38 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %36, i32 79, i32 %45)
  br label %77

47:                                               ; preds = %5
  %48 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %50 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %48, i32 78, i32 %57)
  %59 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %59, i32 79, i32 %60)
  br label %77

62:                                               ; preds = %5
  %63 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %63, i32 78, i32 %64)
  %66 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %67 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %68 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %66, i32 79, i32 %75)
  br label %77

77:                                               ; preds = %5, %62, %47, %24, %17
  %78 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %79 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %78, i32 34)
  ret void
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
