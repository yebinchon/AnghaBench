; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_set_linktype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_set_linktype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_MSR = common dso_local global i32 0, align 4
@MSR_LINKTYPE_MASK = common dso_local global i32 0, align 4
@MSR_LINKTYPE_NONE = common dso_local global i32 0, align 4
@MSR_LINKTYPE_ADHOC = common dso_local global i32 0, align 4
@MSR_LINKTYPE_STATION = common dso_local global i32 0, align 4
@MSR_LINKTYPE_AP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*, i32)* @rtl8xxxu_set_linktype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8xxxu_set_linktype(%struct.rtl8xxxu_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %7 = load i32, i32* @REG_MSR, align 4
  %8 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @MSR_LINKTYPE_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %30 [
    i32 128, label %14
    i32 131, label %18
    i32 129, label %22
    i32 130, label %26
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @MSR_LINKTYPE_NONE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load i32, i32* @MSR_LINKTYPE_ADHOC, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @MSR_LINKTYPE_STATION, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @MSR_LINKTYPE_AP, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %31

30:                                               ; preds = %2
  br label %36

31:                                               ; preds = %26, %22, %18, %14
  %32 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %33 = load i32, i32* @REG_MSR, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
