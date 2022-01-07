; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { i64, %struct.sabi_config* }
%struct.sabi_config = type { i64, %struct.sabi_commands }
%struct.sabi_commands = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_laptop*, i64)* @set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_brightness(%struct.samsung_laptop* %0, i64 %1) #0 {
  %3 = alloca %struct.samsung_laptop*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sabi_config*, align 8
  %6 = alloca %struct.sabi_commands*, align 8
  %7 = alloca i64, align 8
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %9 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %8, i32 0, i32 1
  %10 = load %struct.sabi_config*, %struct.sabi_config** %9, align 8
  store %struct.sabi_config* %10, %struct.sabi_config** %5, align 8
  %11 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %12 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %11, i32 0, i32 1
  %13 = load %struct.sabi_config*, %struct.sabi_config** %12, align 8
  %14 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %13, i32 0, i32 1
  store %struct.sabi_commands* %14, %struct.sabi_commands** %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.sabi_config*, %struct.sabi_config** %5, align 8
  %17 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %21 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %30 = call i64 @read_brightness(%struct.samsung_laptop* %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %46

33:                                               ; preds = %27
  %34 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %35 = load %struct.sabi_commands*, %struct.sabi_commands** %6, align 8
  %36 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sabi_set_commandb(%struct.samsung_laptop* %34, i32 %37, i64 0)
  br label %39

39:                                               ; preds = %33, %24, %2
  %40 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %41 = load %struct.sabi_commands*, %struct.sabi_commands** %6, align 8
  %42 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @sabi_set_commandb(%struct.samsung_laptop* %40, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %39, %32
  ret void
}

declare dso_local i64 @read_brightness(%struct.samsung_laptop*) #1

declare dso_local i32 @sabi_set_commandb(%struct.samsung_laptop*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
