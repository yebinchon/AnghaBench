; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rf_serial_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rf_serial_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32 }

@bMaskDWord = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32, i32)* @rf_serial_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rf_serial_write(%struct.adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bb_reg_def*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.bb_reg_def*, %struct.bb_reg_def** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %15, i64 %17
  store %struct.bb_reg_def* %18, %struct.bb_reg_def** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 20
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 1048575
  %25 = or i32 %22, %24
  %26 = and i32 %25, 268435455
  store i32 %26, i32* %9, align 4
  %27 = load %struct.adapter*, %struct.adapter** %5, align 8
  %28 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %29 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @bMaskDWord, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @phy_set_bb_reg(%struct.adapter* %27, i32 %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
