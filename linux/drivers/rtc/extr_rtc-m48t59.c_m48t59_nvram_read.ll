; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.m48t59_plat_data = type { i32 }
%struct.m48t59_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @m48t59_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_nvram_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.m48t59_plat_data*, align 8
  %12 = alloca %struct.m48t59_private*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.platform_device*
  store %struct.platform_device* %17, %struct.platform_device** %9, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %10, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.m48t59_plat_data* @dev_get_platdata(%struct.device* %21)
  store %struct.m48t59_plat_data* %22, %struct.m48t59_plat_data** %11, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %24 = call %struct.m48t59_private* @platform_get_drvdata(%struct.platform_device* %23)
  store %struct.m48t59_private* %24, %struct.m48t59_private** %12, align 8
  store i64 0, i64* %13, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %15, align 8
  %27 = load %struct.m48t59_private*, %struct.m48t59_private** %12, align 8
  %28 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %27, i32 0, i32 0
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %40, %4
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @M48T59_READ(i64 %36)
  %38 = load i32*, i32** %15, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %15, align 8
  store i32 %37, i32* %38, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  br label %31

43:                                               ; preds = %31
  %44 = load %struct.m48t59_private*, %struct.m48t59_private** %12, align 8
  %45 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %44, i32 0, i32 0
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret i32 0
}

declare dso_local %struct.m48t59_plat_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.m48t59_private* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @M48T59_READ(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
