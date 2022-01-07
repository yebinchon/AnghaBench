; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen1_usb_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen1_usb_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i64, i32 }

@REG_TXDMA_OFFSET_CHK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8xxxu_gen1_usb_quirks(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %3 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %4 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %3, i32 65088, i32 224)
  %5 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %6 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %5, i32 65089, i32 141)
  %7 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %8 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %7, i32 65090, i32 128)
  %9 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %10 = load i32, i32* @REG_TXDMA_OFFSET_CHK, align 4
  %11 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %9, i32 %10, i32 16581408)
  %12 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %13 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %18 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %23 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %22, i32 65088, i32 230)
  %24 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %25 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %24, i32 65089, i32 148)
  %26 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %27 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %26, i32 65090, i32 128)
  %28 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %29 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %28, i32 65088, i32 224)
  %30 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %31 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %30, i32 65089, i32 25)
  %32 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %33 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %32, i32 65090, i32 128)
  %34 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %35 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %34, i32 65088, i32 229)
  %36 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %37 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %36, i32 65089, i32 145)
  %38 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %39 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %38, i32 65090, i32 128)
  %40 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %41 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %40, i32 65088, i32 226)
  %42 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %43 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %42, i32 65089, i32 129)
  %44 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %45 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %44, i32 65090, i32 128)
  br label %46

46:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
