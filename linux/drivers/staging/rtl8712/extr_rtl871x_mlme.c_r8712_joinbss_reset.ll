; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_joinbss_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_joinbss_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.ht_priv }
%struct.ht_priv = type { i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_joinbss_reset(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.ht_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %6 = load %struct._adapter*, %struct._adapter** %2, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 0
  store %struct.mlme_priv* %7, %struct.mlme_priv** %4, align 8
  %8 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %8, i32 0, i32 0
  store %struct.ht_priv* %9, %struct.ht_priv** %5, align 8
  %10 = load %struct.ht_priv*, %struct.ht_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.ht_priv*, %struct.ht_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %12

25:                                               ; preds = %12
  %26 = load %struct.ht_priv*, %struct.ht_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct._adapter*, %struct._adapter** %2, align 8
  %32 = call i32 @r8712_write8(%struct._adapter* %31, i32 270860505, i32 48)
  br label %36

33:                                               ; preds = %25
  %34 = load %struct._adapter*, %struct._adapter** %2, align 8
  %35 = call i32 @r8712_write8(%struct._adapter* %34, i32 270860505, i32 1)
  br label %36

36:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
