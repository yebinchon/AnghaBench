; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_set_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_set_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcon_priv = type { i64, i32 }

@DCON_REG_BRIGHT = common dso_local global i32 0, align 4
@MODE_BL_ENABLE = common dso_local global i32 0, align 4
@DCON_REG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcon_priv*, i64)* @dcon_set_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcon_set_backlight(%struct.dcon_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.dcon_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.dcon_priv* %0, %struct.dcon_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %7 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %9 = load i32, i32* @DCON_REG_BRIGHT, align 4
  %10 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %11 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @dcon_write(%struct.dcon_priv* %8, i32 %9, i64 %12)
  %14 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %15 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load i32, i32* @MODE_BL_ENABLE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %22 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %26 = load i32, i32* @DCON_REG_MODE, align 4
  %27 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %28 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = call i32 @dcon_write(%struct.dcon_priv* %25, i32 %26, i64 %30)
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %34 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MODE_BL_ENABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @MODE_BL_ENABLE, align 4
  %41 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %42 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %46 = load i32, i32* @DCON_REG_MODE, align 4
  %47 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %48 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = call i32 @dcon_write(%struct.dcon_priv* %45, i32 %46, i64 %50)
  br label %52

52:                                               ; preds = %39, %32
  br label %53

53:                                               ; preds = %52, %18
  ret void
}

declare dso_local i32 @dcon_write(%struct.dcon_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
