; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_s6d1121.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_s6d1121.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @set_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_var(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %41 [
    i32 0, label %9
    i32 180, label %17
    i32 270, label %25
    i32 90, label %33
  ]

9:                                                ; preds = %1
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %12 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 %13, 12
  %15 = or i32 3, %14
  %16 = call i32 @write_reg(%struct.fbtft_par* %10, i32 3, i32 %15)
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %19 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %20 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 12
  %23 = or i32 0, %22
  %24 = call i32 @write_reg(%struct.fbtft_par* %18, i32 3, i32 %23)
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %28 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 12
  %31 = or i32 10, %30
  %32 = call i32 @write_reg(%struct.fbtft_par* %26, i32 3, i32 %31)
  br label %41

33:                                               ; preds = %1
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %36 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 12
  %39 = or i32 9, %38
  %40 = call i32 @write_reg(%struct.fbtft_par* %34, i32 3, i32 %39)
  br label %41

41:                                               ; preds = %1, %33, %25, %17, %9
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
