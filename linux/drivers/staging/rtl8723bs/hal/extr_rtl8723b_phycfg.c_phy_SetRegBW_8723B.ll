; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_SetRegBW_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_SetRegBW_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_TRXPTCL_CTL_8723B = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i32 0, align 4
@BIT8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"phy_PostSetBWMode8723B():\09unknown Bandwidth: %#X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @phy_SetRegBW_8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_SetRegBW_8723B(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = load i32, i32* @REG_TRXPTCL_CTL_8723B, align 4
  %9 = call i32 @rtw_read16(%struct.adapter* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %35 [
    i32 130, label %11
    i32 129, label %17
    i32 128, label %26
  ]

11:                                               ; preds = %2
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = load i32, i32* @REG_TRXPTCL_CTL_8723B, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 65151
  %16 = call i32 @rtw_write16(%struct.adapter* %12, i32 %13, i32 %15)
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BIT7, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i32, i32* @REG_TRXPTCL_CTL_8723B, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 65279
  %25 = call i32 @rtw_write16(%struct.adapter* %21, i32 %22, i32 %24)
  br label %38

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BIT8, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = load i32, i32* @REG_TRXPTCL_CTL_8723B, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 65407
  %34 = call i32 @rtw_write16(%struct.adapter* %30, i32 %31, i32 %33)
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @DBG_871X(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %26, %17, %11
  ret void
}

declare dso_local i32 @rtw_read16(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_write16(%struct.adapter*, i32, i32) #1

declare dso_local i32 @DBG_871X(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
