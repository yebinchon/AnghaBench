; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_dbi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_dbi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }

@REG_DBI_WDATA = common dso_local global i32 0, align 4
@REG_DBI_ADDR = common dso_local global i32 0, align 4
@REG_DBI_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*, i32, i32)* @_rtl8723be_dbi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_dbi_write(%struct.rtl_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtl_priv* %0, %struct.rtl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %11, 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @REG_DBI_WDATA, align 4
  %14 = load i32, i32* %10, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @rtl_write_byte(%struct.rtl_priv* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 65532
  %22 = call i32 @BIT(i32 0)
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 12
  %25 = shl i32 %22, %24
  %26 = or i32 %21, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %28 = load i32, i32* @REG_DBI_ADDR, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @rtl_write_word(%struct.rtl_priv* %27, i32 %28, i32 %29)
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %32 = load i32, i32* @REG_DBI_FLAG, align 4
  %33 = call i32 @rtl_write_byte(%struct.rtl_priv* %31, i32 %32, i32 1)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %35 = load i32, i32* @REG_DBI_FLAG, align 4
  %36 = call i32 @rtl_read_byte(%struct.rtl_priv* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %45, %3
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 20
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i1 [ false, %37 ], [ %42, %40 ]
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = call i32 @udelay(i32 10)
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %48 = load i32, i32* @REG_DBI_FLAG, align 4
  %49 = call i32 @rtl_read_byte(%struct.rtl_priv* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %37

52:                                               ; preds = %43
  ret void
}

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
