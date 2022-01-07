; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_rfkill_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_rfkill_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.asus_rfkill = type { i32, i32*, %struct.asus_laptop* }
%struct.rfkill_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*, %struct.asus_rfkill*, i8*, i32, i32, %struct.rfkill_ops*)* @asus_rfkill_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_rfkill_setup(%struct.asus_laptop* %0, %struct.asus_rfkill* %1, i8* %2, i32 %3, i32 %4, %struct.rfkill_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.asus_laptop*, align 8
  %9 = alloca %struct.asus_rfkill*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rfkill_ops*, align 8
  %14 = alloca i32, align 4
  store %struct.asus_laptop* %0, %struct.asus_laptop** %8, align 8
  store %struct.asus_rfkill* %1, %struct.asus_rfkill** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.rfkill_ops* %5, %struct.rfkill_ops** %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.asus_rfkill*, %struct.asus_rfkill** %9, align 8
  %17 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.asus_laptop*, %struct.asus_laptop** %8, align 8
  %19 = load %struct.asus_rfkill*, %struct.asus_rfkill** %9, align 8
  %20 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %19, i32 0, i32 2
  store %struct.asus_laptop* %18, %struct.asus_laptop** %20, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.asus_laptop*, %struct.asus_laptop** %8, align 8
  %23 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.rfkill_ops*, %struct.rfkill_ops** %13, align 8
  %28 = load %struct.asus_rfkill*, %struct.asus_rfkill** %9, align 8
  %29 = call i32* @rfkill_alloc(i8* %21, i32* %25, i32 %26, %struct.rfkill_ops* %27, %struct.asus_rfkill* %28)
  %30 = load %struct.asus_rfkill*, %struct.asus_rfkill** %9, align 8
  %31 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.asus_rfkill*, %struct.asus_rfkill** %9, align 8
  %33 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %55

39:                                               ; preds = %6
  %40 = load %struct.asus_rfkill*, %struct.asus_rfkill** %9, align 8
  %41 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @rfkill_register(i32* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.asus_rfkill*, %struct.asus_rfkill** %9, align 8
  %48 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @rfkill_destroy(i32* %49)
  %51 = load %struct.asus_rfkill*, %struct.asus_rfkill** %9, align 8
  %52 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %36
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32* @rfkill_alloc(i8*, i32*, i32, %struct.rfkill_ops*, %struct.asus_rfkill*) #1

declare dso_local i32 @rfkill_register(i32*) #1

declare dso_local i32 @rfkill_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
