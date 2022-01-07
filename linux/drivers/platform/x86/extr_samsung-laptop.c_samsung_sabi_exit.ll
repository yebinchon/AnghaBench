; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_samsung_sabi_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_samsung_sabi_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { %struct.sabi_config*, i32*, i32* }
%struct.sabi_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_laptop*)* @samsung_sabi_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @samsung_sabi_exit(%struct.samsung_laptop* %0) #0 {
  %2 = alloca %struct.samsung_laptop*, align 8
  %3 = alloca %struct.sabi_config*, align 8
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %2, align 8
  %4 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %5 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %4, i32 0, i32 0
  %6 = load %struct.sabi_config*, %struct.sabi_config** %5, align 8
  store %struct.sabi_config* %6, %struct.sabi_config** %3, align 8
  %7 = load %struct.sabi_config*, %struct.sabi_config** %3, align 8
  %8 = icmp ne %struct.sabi_config* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.sabi_config*, %struct.sabi_config** %3, align 8
  %11 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 255
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %17 = load %struct.sabi_config*, %struct.sabi_config** %3, align 8
  %18 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sabi_set_commandb(%struct.samsung_laptop* %16, i32 %20, i32 128)
  br label %22

22:                                               ; preds = %15, %9, %1
  %23 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %24 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %29 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @iounmap(i32* %30)
  %32 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %33 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %36 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %41 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @iounmap(i32* %42)
  %44 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %45 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %48 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %47, i32 0, i32 0
  store %struct.sabi_config* null, %struct.sabi_config** %48, align 8
  ret void
}

declare dso_local i32 @sabi_set_commandb(%struct.samsung_laptop*, i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
