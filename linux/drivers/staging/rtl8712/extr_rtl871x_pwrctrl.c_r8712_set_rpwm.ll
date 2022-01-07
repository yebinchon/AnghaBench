; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_set_rpwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_set_rpwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i64, i64, %struct.pwrctrl_priv }
%struct.pwrctrl_priv = type { i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_set_rpwm(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwrctrl_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct._adapter*, %struct._adapter** %3, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 2
  store %struct.pwrctrl_priv* %8, %struct.pwrctrl_priv** %6, align 8
  %9 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %10 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %16 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %61

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct._adapter*, %struct._adapter** %3, align 8
  %23 = getelementptr inbounds %struct._adapter, %struct._adapter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct._adapter*, %struct._adapter** %3, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21
  br label %61

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %35 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %33, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %47 [
    i32 131, label %39
    i32 130, label %43
    i32 129, label %43
    i32 128, label %43
  ]

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %42 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  br label %48

43:                                               ; preds = %32, %32, %32
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %46 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  br label %48

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %43, %39
  %49 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %50 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %53 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct._adapter*, %struct._adapter** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @r8712_write8(%struct._adapter* %54, i32 270925400, i32 %55)
  %57 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %58 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 128
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %48, %31, %19
  ret void
}

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
