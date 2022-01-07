; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_upd161704.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_upd161704.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @set_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_var(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 0, label %9
    i32 180, label %14
    i32 270, label %19
    i32 90, label %24
  ]

9:                                                ; preds = %1
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = call i32 @write_reg(%struct.fbtft_par* %10, i32 1, i32 0)
  %12 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %13 = call i32 @write_reg(%struct.fbtft_par* %12, i32 5, i32 0)
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %16 = call i32 @write_reg(%struct.fbtft_par* %15, i32 1, i32 192)
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %18 = call i32 @write_reg(%struct.fbtft_par* %17, i32 5, i32 0)
  br label %29

19:                                               ; preds = %1
  %20 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %21 = call i32 @write_reg(%struct.fbtft_par* %20, i32 1, i32 128)
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %23 = call i32 @write_reg(%struct.fbtft_par* %22, i32 5, i32 1)
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %26 = call i32 @write_reg(%struct.fbtft_par* %25, i32 1, i32 64)
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %28 = call i32 @write_reg(%struct.fbtft_par* %27, i32 5, i32 1)
  br label %29

29:                                               ; preds = %1, %24, %19, %14, %9
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
