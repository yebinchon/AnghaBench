; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_agm1264k-fl.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_agm1264k-fl.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  %3 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %4 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %5 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %6, align 8
  %8 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %9 = bitcast %struct.fbtft_par* %8 to %struct.fbtft_par.0*
  %10 = call i32 %7(%struct.fbtft_par.0* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @write_reg(%struct.fbtft_par* %15, i32 %16, i32 63)
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @write_reg(%struct.fbtft_par* %18, i32 %19, i32 64)
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @write_reg(%struct.fbtft_par* %21, i32 %22, i32 176)
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @write_reg(%struct.fbtft_par* %24, i32 %25, i32 192)
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %11

30:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
