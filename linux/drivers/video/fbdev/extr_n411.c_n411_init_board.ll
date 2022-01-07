; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_n411.c_n411_init_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_n411.c_n411_init_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hecubafb_par = type { i32 (%struct.hecubafb_par*, i32)*, i32 (%struct.hecubafb_par*, i32)* }

@APOLLO_INIT_DISPLAY = common dso_local global i32 0, align 4
@nosplash = common dso_local global i32 0, align 4
@APOLLO_ERASE_DISPLAY = common dso_local global i32 0, align 4
@splashval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hecubafb_par*)* @n411_init_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n411_init_board(%struct.hecubafb_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hecubafb_par*, align 8
  %4 = alloca i32, align 4
  store %struct.hecubafb_par* %0, %struct.hecubafb_par** %3, align 8
  %5 = load %struct.hecubafb_par*, %struct.hecubafb_par** %3, align 8
  %6 = call i32 @n411_init_control(%struct.hecubafb_par* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.hecubafb_par*, %struct.hecubafb_par** %3, align 8
  %13 = getelementptr inbounds %struct.hecubafb_par, %struct.hecubafb_par* %12, i32 0, i32 1
  %14 = load i32 (%struct.hecubafb_par*, i32)*, i32 (%struct.hecubafb_par*, i32)** %13, align 8
  %15 = load %struct.hecubafb_par*, %struct.hecubafb_par** %3, align 8
  %16 = load i32, i32* @APOLLO_INIT_DISPLAY, align 4
  %17 = call i32 %14(%struct.hecubafb_par* %15, i32 %16)
  %18 = load %struct.hecubafb_par*, %struct.hecubafb_par** %3, align 8
  %19 = getelementptr inbounds %struct.hecubafb_par, %struct.hecubafb_par* %18, i32 0, i32 0
  %20 = load i32 (%struct.hecubafb_par*, i32)*, i32 (%struct.hecubafb_par*, i32)** %19, align 8
  %21 = load %struct.hecubafb_par*, %struct.hecubafb_par** %3, align 8
  %22 = call i32 %20(%struct.hecubafb_par* %21, i32 129)
  %23 = call i32 @udelay(i32 1000)
  %24 = load i32, i32* @nosplash, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %11
  %27 = load %struct.hecubafb_par*, %struct.hecubafb_par** %3, align 8
  %28 = getelementptr inbounds %struct.hecubafb_par, %struct.hecubafb_par* %27, i32 0, i32 1
  %29 = load i32 (%struct.hecubafb_par*, i32)*, i32 (%struct.hecubafb_par*, i32)** %28, align 8
  %30 = load %struct.hecubafb_par*, %struct.hecubafb_par** %3, align 8
  %31 = load i32, i32* @APOLLO_ERASE_DISPLAY, align 4
  %32 = call i32 %29(%struct.hecubafb_par* %30, i32 %31)
  %33 = load %struct.hecubafb_par*, %struct.hecubafb_par** %3, align 8
  %34 = getelementptr inbounds %struct.hecubafb_par, %struct.hecubafb_par* %33, i32 0, i32 0
  %35 = load i32 (%struct.hecubafb_par*, i32)*, i32 (%struct.hecubafb_par*, i32)** %34, align 8
  %36 = load %struct.hecubafb_par*, %struct.hecubafb_par** %3, align 8
  %37 = load i32, i32* @splashval, align 4
  %38 = call i32 %35(%struct.hecubafb_par* %36, i32 %37)
  br label %39

39:                                               ; preds = %26, %11
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @n411_init_control(%struct.hecubafb_par*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
