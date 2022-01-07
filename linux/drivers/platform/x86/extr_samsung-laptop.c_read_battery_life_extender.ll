; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_read_battery_life_extender.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_read_battery_life_extender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sabi_commands }
%struct.sabi_commands = type { i32 }
%struct.sabi_data = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_laptop*)* @read_battery_life_extender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_battery_life_extender(%struct.samsung_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.samsung_laptop*, align 8
  %4 = alloca %struct.sabi_commands*, align 8
  %5 = alloca %struct.sabi_data, align 8
  %6 = alloca i32, align 4
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %3, align 8
  %7 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %8 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.sabi_commands* %10, %struct.sabi_commands** %4, align 8
  %11 = load %struct.sabi_commands*, %struct.sabi_commands** %4, align 8
  %12 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 65535
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = call i32 @memset(%struct.sabi_data* %5, i32 0, i32 8)
  %20 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %5, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 128, i32* %22, align 4
  %23 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %24 = load %struct.sabi_commands*, %struct.sabi_commands** %4, align 8
  %25 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sabi_command(%struct.samsung_laptop* %23, i32 %26, %struct.sabi_data* %5, %struct.sabi_data* %5)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %52

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %5, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %5, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %38, %32
  %48 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %5, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %44, %30, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @memset(%struct.sabi_data*, i32, i32) #1

declare dso_local i32 @sabi_command(%struct.samsung_laptop*, i32, %struct.sabi_data*, %struct.sabi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
