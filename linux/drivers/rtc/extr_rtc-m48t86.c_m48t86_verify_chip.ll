; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t86.c_m48t86_verify_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t86.c_m48t86_verify_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@M48T86_NVRAM_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @m48t86_verify_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t86_verify_chip(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i64, i64* @M48T86_NVRAM_LEN, align 8
  %9 = sub nsw i64 %8, 2
  %10 = call i32 @M48T86_NVRAM(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @M48T86_NVRAM_LEN, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @M48T86_NVRAM(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @m48t86_readb(i32* %15, i32 %16)
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @m48t86_readb(i32* %20, i32 %21)
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %7, align 1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @m48t86_writeb(i32* %25, i8 zeroext 0, i32 %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @m48t86_writeb(i32* %29, i8 zeroext 85, i32 %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @m48t86_readb(i32* %33, i32 %34)
  %36 = icmp eq i32 %35, 85
  br i1 %36, label %37, label %65

37:                                               ; preds = %1
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @m48t86_writeb(i32* %39, i8 zeroext -86, i32 %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @m48t86_readb(i32* %43, i32 %44)
  %46 = icmp eq i32 %45, 170
  br i1 %46, label %47, label %64

47:                                               ; preds = %37
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @m48t86_readb(i32* %49, i32 %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i8, i8* %6, align 1
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @m48t86_writeb(i32* %55, i8 zeroext %56, i32 %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i8, i8* %7, align 1
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @m48t86_writeb(i32* %60, i8 zeroext %61, i32 %62)
  store i32 1, i32* %2, align 4
  br label %66

64:                                               ; preds = %47, %37
  br label %65

65:                                               ; preds = %64, %1
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %53
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @M48T86_NVRAM(i64) #1

declare dso_local i32 @m48t86_readb(i32*, i32) #1

declare dso_local i32 @m48t86_writeb(i32*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
