; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_bt431.h_bt431_position_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_bt431.h_bt431_position_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt431_regs = type { i32 }

@BT431_REG_CXLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt431_regs*, i32, i32)* @bt431_position_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt431_position_cursor(%struct.bt431_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bt431_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bt431_regs* %0, %struct.bt431_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 360
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 36
  store i32 %10, i32* %6, align 4
  %11 = load %struct.bt431_regs*, %struct.bt431_regs** %4, align 8
  %12 = load i32, i32* @BT431_REG_CXLO, align 4
  %13 = call i32 @bt431_select_reg(%struct.bt431_regs* %11, i32 %12)
  %14 = load %struct.bt431_regs*, %struct.bt431_regs** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 255
  %17 = call i32 @bt431_write_reg_inc(%struct.bt431_regs* %14, i32 %16)
  %18 = load %struct.bt431_regs*, %struct.bt431_regs** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 15
  %22 = call i32 @bt431_write_reg_inc(%struct.bt431_regs* %18, i32 %21)
  %23 = load %struct.bt431_regs*, %struct.bt431_regs** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 255
  %26 = call i32 @bt431_write_reg_inc(%struct.bt431_regs* %23, i32 %25)
  %27 = load %struct.bt431_regs*, %struct.bt431_regs** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 15
  %31 = call i32 @bt431_write_reg_inc(%struct.bt431_regs* %27, i32 %30)
  ret void
}

declare dso_local i32 @bt431_select_reg(%struct.bt431_regs*, i32) #1

declare dso_local i32 @bt431_write_reg_inc(%struct.bt431_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
