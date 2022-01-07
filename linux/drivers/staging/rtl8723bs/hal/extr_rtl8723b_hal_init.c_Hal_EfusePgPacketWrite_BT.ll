; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_EfusePgPacketWrite_BT.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_EfusePgPacketWrite_BT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EFUSE_BT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32*, i32)* @Hal_EfusePgPacketWrite_BT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Hal_EfusePgPacketWrite_BT(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @EFUSE_BT, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.adapter*, %struct.adapter** %7, align 8
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @hal_EfusePgCheckAvailableAddr(%struct.adapter* %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %48

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @hal_EfuseConstructPGPkt(i32 %23, i32 %24, i32* %25, i32* %12)
  %27 = load %struct.adapter*, %struct.adapter** %7, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @hal_EfusePartialWriteCheck(%struct.adapter* %27, i32 %28, i32* %13, i32* %12, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %48

33:                                               ; preds = %22
  %34 = load %struct.adapter*, %struct.adapter** %7, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @hal_EfusePgPacketWriteHeader(%struct.adapter* %34, i32 %35, i32* %13, i32* %12, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %48

40:                                               ; preds = %33
  %41 = load %struct.adapter*, %struct.adapter** %7, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @hal_EfusePgPacketWriteData(%struct.adapter* %41, i32 %42, i32* %13, i32* %12, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %48

47:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %46, %39, %32, %21
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @hal_EfusePgCheckAvailableAddr(%struct.adapter*, i32, i32) #1

declare dso_local i32 @hal_EfuseConstructPGPkt(i32, i32, i32*, i32*) #1

declare dso_local i32 @hal_EfusePartialWriteCheck(%struct.adapter*, i32, i32*, i32*, i32) #1

declare dso_local i32 @hal_EfusePgPacketWriteHeader(%struct.adapter*, i32, i32*, i32*, i32) #1

declare dso_local i32 @hal_EfusePgPacketWriteData(%struct.adapter*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
