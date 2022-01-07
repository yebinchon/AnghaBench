; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_..btcoexist..wifi.h_rtl_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_..btcoexist..wifi.h_rtl_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.rtl_priv.0*, i32)*, i32 (%struct.rtl_priv.1*, i32, i32)* }
%struct.rtl_priv.0 = type opaque
%struct.rtl_priv.1 = type opaque
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*, i32, i32)* @rtl_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_write_byte(%struct.rtl_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl_priv* %0, %struct.rtl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32 (%struct.rtl_priv.1*, i32, i32)*, i32 (%struct.rtl_priv.1*, i32, i32)** %9, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %12 = bitcast %struct.rtl_priv* %11 to %struct.rtl_priv.1*
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 %10(%struct.rtl_priv.1* %12, i32 %13, i32 %14)
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.rtl_priv.0*, i32)*, i32 (%struct.rtl_priv.0*, i32)** %25, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %28 = bitcast %struct.rtl_priv* %27 to %struct.rtl_priv.0*
  %29 = load i32, i32* %5, align 4
  %30 = call i32 %26(%struct.rtl_priv.0* %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
