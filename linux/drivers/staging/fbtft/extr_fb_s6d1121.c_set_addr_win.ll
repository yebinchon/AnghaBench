; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_s6d1121.c_set_addr_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_s6d1121.c_set_addr_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
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
  switch i32 %16, label %57 [
    i32 0, label %17
    i32 180, label %24
    i32 270, label %37
    i32 90, label %47
  ]

17:                                               ; preds = %5
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %18, i32 32, i32 %19)
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %21, i32 33, i32 %22)
  br label %57

24:                                               ; preds = %5
  %25 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %26 = load i32, i32* @WIDTH, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %25, i32 32, i32 %29)
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %32 = load i32, i32* @HEIGHT, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %31, i32 33, i32 %35)
  br label %57

37:                                               ; preds = %5
  %38 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %39 = load i32, i32* @WIDTH, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %38, i32 32, i32 %42)
  %44 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %44, i32 33, i32 %45)
  br label %57

47:                                               ; preds = %5
  %48 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %48, i32 32, i32 %49)
  %51 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %52 = load i32, i32* @HEIGHT, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %51, i32 33, i32 %55)
  br label %57

57:                                               ; preds = %5, %47, %37, %24, %17
  %58 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %59 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %58, i32 34)
  ret void
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
