; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pinmux_get_swio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pinmux_get_swio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rza1_swio_entry = type { i32, %struct.rza1_swio_pin* }
%struct.rza1_swio_pin = type { i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.rza1_swio_entry*)* @rza1_pinmux_get_swio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_pinmux_get_swio(i32 %0, i32 %1, i32 %2, %struct.rza1_swio_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rza1_swio_entry*, align 8
  %10 = alloca %struct.rza1_swio_pin*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.rza1_swio_entry* %3, %struct.rza1_swio_entry** %9, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %47, %4
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.rza1_swio_entry*, %struct.rza1_swio_entry** %9, align 8
  %15 = getelementptr inbounds %struct.rza1_swio_entry, %struct.rza1_swio_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %12
  %19 = load %struct.rza1_swio_entry*, %struct.rza1_swio_entry** %9, align 8
  %20 = getelementptr inbounds %struct.rza1_swio_entry, %struct.rza1_swio_entry* %19, i32 0, i32 1
  %21 = load %struct.rza1_swio_pin*, %struct.rza1_swio_pin** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rza1_swio_pin, %struct.rza1_swio_pin* %21, i64 %23
  store %struct.rza1_swio_pin* %24, %struct.rza1_swio_pin** %10, align 8
  %25 = load %struct.rza1_swio_pin*, %struct.rza1_swio_pin** %10, align 8
  %26 = getelementptr inbounds %struct.rza1_swio_pin, %struct.rza1_swio_pin* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %18
  %31 = load %struct.rza1_swio_pin*, %struct.rza1_swio_pin** %10, align 8
  %32 = getelementptr inbounds %struct.rza1_swio_pin, %struct.rza1_swio_pin* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.rza1_swio_pin*, %struct.rza1_swio_pin** %10, align 8
  %38 = getelementptr inbounds %struct.rza1_swio_pin, %struct.rza1_swio_pin* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.rza1_swio_pin*, %struct.rza1_swio_pin** %10, align 8
  %44 = getelementptr inbounds %struct.rza1_swio_pin, %struct.rza1_swio_pin* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  br label %53

46:                                               ; preds = %36, %30, %18
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %12

50:                                               ; preds = %12
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
