; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_samsung_new_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_samsung_new_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.samsung_rfkill = type { i32, %struct.samsung_laptop*, %struct.rfkill* }
%struct.rfkill = type { i32 }
%struct.rfkill_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_laptop*, %struct.samsung_rfkill*, i8*, i32, %struct.rfkill_ops*, i32)* @samsung_new_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_new_rfkill(%struct.samsung_laptop* %0, %struct.samsung_rfkill* %1, i8* %2, i32 %3, %struct.rfkill_ops* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.samsung_laptop*, align 8
  %9 = alloca %struct.samsung_rfkill*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rfkill_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rfkill**, align 8
  %15 = alloca i32, align 4
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %8, align 8
  store %struct.samsung_rfkill* %1, %struct.samsung_rfkill** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.rfkill_ops* %4, %struct.rfkill_ops** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.samsung_rfkill*, %struct.samsung_rfkill** %9, align 8
  %17 = getelementptr inbounds %struct.samsung_rfkill, %struct.samsung_rfkill* %16, i32 0, i32 2
  store %struct.rfkill** %17, %struct.rfkill*** %14, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.samsung_rfkill*, %struct.samsung_rfkill** %9, align 8
  %20 = getelementptr inbounds %struct.samsung_rfkill, %struct.samsung_rfkill* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.samsung_laptop*, %struct.samsung_laptop** %8, align 8
  %22 = load %struct.samsung_rfkill*, %struct.samsung_rfkill** %9, align 8
  %23 = getelementptr inbounds %struct.samsung_rfkill, %struct.samsung_rfkill* %22, i32 0, i32 1
  store %struct.samsung_laptop* %21, %struct.samsung_laptop** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.samsung_laptop*, %struct.samsung_laptop** %8, align 8
  %26 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.rfkill_ops*, %struct.rfkill_ops** %12, align 8
  %31 = load %struct.samsung_rfkill*, %struct.samsung_rfkill** %9, align 8
  %32 = call %struct.rfkill* @rfkill_alloc(i8* %24, i32* %28, i32 %29, %struct.rfkill_ops* %30, %struct.samsung_rfkill* %31)
  %33 = load %struct.rfkill**, %struct.rfkill*** %14, align 8
  store %struct.rfkill* %32, %struct.rfkill** %33, align 8
  %34 = load %struct.rfkill**, %struct.rfkill*** %14, align 8
  %35 = load %struct.rfkill*, %struct.rfkill** %34, align 8
  %36 = icmp ne %struct.rfkill* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %6
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %61

40:                                               ; preds = %6
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.rfkill**, %struct.rfkill*** %14, align 8
  %45 = load %struct.rfkill*, %struct.rfkill** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @rfkill_init_sw_state(%struct.rfkill* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.rfkill**, %struct.rfkill*** %14, align 8
  %50 = load %struct.rfkill*, %struct.rfkill** %49, align 8
  %51 = call i32 @rfkill_register(%struct.rfkill* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.rfkill**, %struct.rfkill*** %14, align 8
  %56 = load %struct.rfkill*, %struct.rfkill** %55, align 8
  %57 = call i32 @rfkill_destroy(%struct.rfkill* %56)
  %58 = load %struct.rfkill**, %struct.rfkill*** %14, align 8
  store %struct.rfkill* null, %struct.rfkill** %58, align 8
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %7, align 4
  br label %61

60:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %54, %37
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local %struct.rfkill* @rfkill_alloc(i8*, i32*, i32, %struct.rfkill_ops*, %struct.samsung_rfkill*) #1

declare dso_local i32 @rfkill_init_sw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
