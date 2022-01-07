; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1611.c_set_addr_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1611.c_set_addr_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

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
  switch i32 %16, label %38 [
    i32 90, label %17
    i32 270, label %17
  ]

17:                                               ; preds = %5, %5
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 15
  %21 = call i32 @write_reg(%struct.fbtft_par* %18, i32 %20)
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 4
  %25 = or i32 16, %24
  %26 = call i32 @write_reg(%struct.fbtft_par* %22, i32 %25)
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 1
  %30 = and i32 %29, 15
  %31 = or i32 96, %30
  %32 = call i32 @write_reg(%struct.fbtft_par* %27, i32 %31)
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 5
  %36 = or i32 112, %35
  %37 = call i32 @write_reg(%struct.fbtft_par* %33, i32 %36)
  br label %59

38:                                               ; preds = %5
  %39 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 15
  %42 = call i32 @write_reg(%struct.fbtft_par* %39, i32 %41)
  %43 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 4
  %46 = or i32 16, %45
  %47 = call i32 @write_reg(%struct.fbtft_par* %43, i32 %46)
  %48 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 1
  %51 = and i32 %50, 15
  %52 = or i32 96, %51
  %53 = call i32 @write_reg(%struct.fbtft_par* %48, i32 %52)
  %54 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 5
  %57 = or i32 112, %56
  %58 = call i32 @write_reg(%struct.fbtft_par* %54, i32 %57)
  br label %59

59:                                               ; preds = %38, %17
  ret void
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
