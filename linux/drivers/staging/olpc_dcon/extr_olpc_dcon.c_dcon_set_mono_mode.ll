; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_set_mono_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_set_mono_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcon_priv = type { i32, i32 }

@MODE_CSWIZZLE = common dso_local global i32 0, align 4
@MODE_COL_AA = common dso_local global i32 0, align 4
@MODE_MONO_LUMA = common dso_local global i32 0, align 4
@DCON_REG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcon_priv*, i32)* @dcon_set_mono_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_set_mono_mode(%struct.dcon_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dcon_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.dcon_priv* %0, %struct.dcon_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %7 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %15 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load i32, i32* @MODE_CSWIZZLE, align 4
  %20 = load i32, i32* @MODE_COL_AA, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %24 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @MODE_MONO_LUMA, align 4
  %28 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %29 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %46

32:                                               ; preds = %12
  %33 = load i32, i32* @MODE_MONO_LUMA, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %36 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @MODE_CSWIZZLE, align 4
  %40 = load i32, i32* @MODE_COL_AA, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %43 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %32, %18
  %47 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %48 = load i32, i32* @DCON_REG_MODE, align 4
  %49 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %50 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dcon_write(%struct.dcon_priv* %47, i32 %48, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @dcon_write(%struct.dcon_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
