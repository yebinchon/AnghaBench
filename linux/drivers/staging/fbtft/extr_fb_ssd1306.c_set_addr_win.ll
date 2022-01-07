; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1306.c_set_addr_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1306.c_set_addr_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

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
  %12 = call i32 @write_reg(%struct.fbtft_par* %11, i32 0)
  %13 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %14 = call i32 @write_reg(%struct.fbtft_par* %13, i32 16)
  %15 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %16 = call i32 @write_reg(%struct.fbtft_par* %15, i32 64)
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %18 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %24, label %35

24:                                               ; preds = %5
  %25 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %26 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 48
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %34 = call i32 @set_addr_win_64x48(%struct.fbtft_par* %33)
  br label %35

35:                                               ; preds = %32, %24, %5
  ret void
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

declare dso_local i32 @set_addr_win_64x48(%struct.fbtft_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
