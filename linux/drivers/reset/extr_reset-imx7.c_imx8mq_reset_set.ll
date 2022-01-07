; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-imx7.c_imx8mq_reset_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-imx7.c_imx8mq_reset_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.imx7_src = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64, i32)* @imx8mq_reset_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx8mq_reset_set(%struct.reset_controller_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.imx7_src*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %11 = call %struct.imx7_src* @to_imx7_src(%struct.reset_controller_dev* %10)
  store %struct.imx7_src* %11, %struct.imx7_src** %7, align 8
  %12 = load %struct.imx7_src*, %struct.imx7_src** %7, align 8
  %13 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %5, align 8
  switch i64 %26, label %41 [
    i64 130, label %27
    i64 129, label %27
    i64 128, label %33
    i64 131, label %33
    i64 134, label %33
    i64 135, label %33
    i64 136, label %33
    i64 132, label %33
    i64 133, label %33
  ]

27:                                               ; preds = %24, %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 @udelay(i32 10)
  br label %32

32:                                               ; preds = %30, %27
  br label %41

33:                                               ; preds = %24, %24, %24, %24, %24, %24, %24
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ 0, %36 ], [ %38, %37 ]
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %24, %39, %32
  %42 = load %struct.imx7_src*, %struct.imx7_src** %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @imx7_reset_update(%struct.imx7_src* %42, i64 %43, i32 %44)
  ret i32 %45
}

declare dso_local %struct.imx7_src* @to_imx7_src(%struct.reset_controller_dev*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @imx7_reset_update(%struct.imx7_src*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
