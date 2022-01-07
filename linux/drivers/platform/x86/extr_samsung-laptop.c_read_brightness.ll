; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_read_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_read_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { %struct.sabi_config* }
%struct.sabi_config = type { i32, %struct.sabi_commands }
%struct.sabi_commands = type { i32 }
%struct.sabi_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_laptop*)* @read_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_brightness(%struct.samsung_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.samsung_laptop*, align 8
  %4 = alloca %struct.sabi_config*, align 8
  %5 = alloca %struct.sabi_commands*, align 8
  %6 = alloca %struct.sabi_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %3, align 8
  %9 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %10 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %9, i32 0, i32 0
  %11 = load %struct.sabi_config*, %struct.sabi_config** %10, align 8
  store %struct.sabi_config* %11, %struct.sabi_config** %4, align 8
  %12 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %13 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %12, i32 0, i32 0
  %14 = load %struct.sabi_config*, %struct.sabi_config** %13, align 8
  %15 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %14, i32 0, i32 1
  store %struct.sabi_commands* %15, %struct.sabi_commands** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %17 = load %struct.sabi_commands*, %struct.sabi_commands** %5, align 8
  %18 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sabi_command(%struct.samsung_laptop* %16, i32 %19, i32* null, %struct.sabi_data* %6)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %6, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.sabi_config*, %struct.sabi_config** %4, align 8
  %32 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.sabi_config*, %struct.sabi_config** %4, align 8
  %37 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @sabi_command(%struct.samsung_laptop*, i32, i32*, %struct.sabi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
