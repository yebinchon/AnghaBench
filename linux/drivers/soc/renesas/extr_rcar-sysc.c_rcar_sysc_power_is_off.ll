; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_rcar-sysc.c_rcar_sysc_power_is_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_rcar-sysc.c_rcar_sysc_power_is_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_sysc_ch = type { i32, i64 }

@rcar_sysc_base = common dso_local global i64 0, align 8
@PWRSR_OFFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_sysc_ch*)* @rcar_sysc_power_is_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_sysc_power_is_off(%struct.rcar_sysc_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_sysc_ch*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_sysc_ch* %0, %struct.rcar_sysc_ch** %3, align 8
  %5 = load i64, i64* @rcar_sysc_base, align 8
  %6 = load %struct.rcar_sysc_ch*, %struct.rcar_sysc_ch** %3, align 8
  %7 = getelementptr inbounds %struct.rcar_sysc_ch, %struct.rcar_sysc_ch* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %5, %8
  %10 = load i64, i64* @PWRSR_OFFS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ioread32(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.rcar_sysc_ch*, %struct.rcar_sysc_ch** %3, align 8
  %15 = getelementptr inbounds %struct.rcar_sysc_ch, %struct.rcar_sysc_ch* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @BIT(i32 %16)
  %18 = and i32 %13, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
