; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pinmux_get_bidir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pinmux_get_bidir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rza1_bidir_entry = type { i32, %struct.rza1_bidir_pin* }
%struct.rza1_bidir_pin = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.rza1_bidir_entry*)* @rza1_pinmux_get_bidir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_pinmux_get_bidir(i32 %0, i32 %1, i32 %2, %struct.rza1_bidir_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rza1_bidir_entry*, align 8
  %10 = alloca %struct.rza1_bidir_entry*, align 8
  %11 = alloca %struct.rza1_bidir_pin*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.rza1_bidir_entry* %3, %struct.rza1_bidir_entry** %9, align 8
  %13 = load %struct.rza1_bidir_entry*, %struct.rza1_bidir_entry** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rza1_bidir_entry, %struct.rza1_bidir_entry* %13, i64 %15
  store %struct.rza1_bidir_entry* %16, %struct.rza1_bidir_entry** %10, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %43, %4
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.rza1_bidir_entry*, %struct.rza1_bidir_entry** %10, align 8
  %20 = getelementptr inbounds %struct.rza1_bidir_entry, %struct.rza1_bidir_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %17
  %24 = load %struct.rza1_bidir_entry*, %struct.rza1_bidir_entry** %10, align 8
  %25 = getelementptr inbounds %struct.rza1_bidir_entry, %struct.rza1_bidir_entry* %24, i32 0, i32 1
  %26 = load %struct.rza1_bidir_pin*, %struct.rza1_bidir_pin** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rza1_bidir_pin, %struct.rza1_bidir_pin* %26, i64 %28
  store %struct.rza1_bidir_pin* %29, %struct.rza1_bidir_pin** %11, align 8
  %30 = load %struct.rza1_bidir_pin*, %struct.rza1_bidir_pin** %11, align 8
  %31 = getelementptr inbounds %struct.rza1_bidir_pin, %struct.rza1_bidir_pin* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = load %struct.rza1_bidir_pin*, %struct.rza1_bidir_pin** %11, align 8
  %37 = getelementptr inbounds %struct.rza1_bidir_pin, %struct.rza1_bidir_pin* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %47

42:                                               ; preds = %35, %23
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %17

46:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
