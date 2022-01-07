; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_rcar-sysc.c_rcar_sysc_pwr_on_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_rcar-sysc.c_rcar_sysc_pwr_on_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_sysc_ch = type { i32, i64 }

@SYSCSR_PONENB = common dso_local global i32 0, align 4
@PWRONCR_OFFS = common dso_local global i32 0, align 4
@SYSCSR_POFFENB = common dso_local global i32 0, align 4
@PWROFFCR_OFFS = common dso_local global i32 0, align 4
@SYSCSR_RETRIES = common dso_local global i32 0, align 4
@rcar_sysc_base = common dso_local global i64 0, align 8
@SYSCSR = common dso_local global i64 0, align 8
@SYSCSR_DELAY_US = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_sysc_ch*, i32)* @rcar_sysc_pwr_on_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_sysc_pwr_on_off(%struct.rcar_sysc_ch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_sysc_ch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rcar_sysc_ch* %0, %struct.rcar_sysc_ch** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @SYSCSR_PONENB, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @PWRONCR_OFFS, align 4
  store i32 %13, i32* %7, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @SYSCSR_POFFENB, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @PWROFFCR_OFFS, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %14, %11
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SYSCSR_RETRIES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i64, i64* @rcar_sysc_base, align 8
  %24 = load i64, i64* @SYSCSR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @ioread32(i64 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %38

32:                                               ; preds = %22
  %33 = load i32, i32* @SYSCSR_DELAY_US, align 4
  %34 = call i32 @udelay(i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %18

38:                                               ; preds = %31, %18
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SYSCSR_RETRIES, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %59

45:                                               ; preds = %38
  %46 = load %struct.rcar_sysc_ch*, %struct.rcar_sysc_ch** %4, align 8
  %47 = getelementptr inbounds %struct.rcar_sysc_ch, %struct.rcar_sysc_ch* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @BIT(i32 %48)
  %50 = load i64, i64* @rcar_sysc_base, align 8
  %51 = load %struct.rcar_sysc_ch*, %struct.rcar_sysc_ch** %4, align 8
  %52 = getelementptr inbounds %struct.rcar_sysc_ch, %struct.rcar_sysc_ch* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = call i32 @iowrite32(i32 %49, i64 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %45, %42
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
