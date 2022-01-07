; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_sprom_extract_r23.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_sprom_extract_r23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_sprom = type { i32 }

@boardflags_hi = common dso_local global i32 0, align 4
@SSB_SPROM2_BFLHI = common dso_local global i32 0, align 4
@opo = common dso_local global i32 0, align 4
@SSB_SPROM2_OPO = common dso_local global i32 0, align 4
@SSB_SPROM2_OPO_VALUE = common dso_local global i32 0, align 4
@pa1lob0 = common dso_local global i32 0, align 4
@SSB_SPROM2_PA1LOB0 = common dso_local global i32 0, align 4
@pa1lob1 = common dso_local global i32 0, align 4
@SSB_SPROM2_PA1LOB1 = common dso_local global i32 0, align 4
@pa1lob2 = common dso_local global i32 0, align 4
@SSB_SPROM2_PA1LOB2 = common dso_local global i32 0, align 4
@pa1hib0 = common dso_local global i32 0, align 4
@SSB_SPROM2_PA1HIB0 = common dso_local global i32 0, align 4
@pa1hib1 = common dso_local global i32 0, align 4
@SSB_SPROM2_PA1HIB1 = common dso_local global i32 0, align 4
@pa1hib2 = common dso_local global i32 0, align 4
@SSB_SPROM2_PA1HIB2 = common dso_local global i32 0, align 4
@maxpwr_ah = common dso_local global i32 0, align 4
@SSB_SPROM2_MAXP_A = common dso_local global i32 0, align 4
@SSB_SPROM2_MAXP_A_HI = common dso_local global i32 0, align 4
@maxpwr_al = common dso_local global i32 0, align 4
@SSB_SPROM2_MAXP_A_LO = common dso_local global i32 0, align 4
@SSB_SPROM2_MAXP_A_LO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_sprom*, i32*)* @sprom_extract_r23 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprom_extract_r23(%struct.ssb_sprom* %0, i32* %1) #0 {
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca i32*, align 8
  store %struct.ssb_sprom* %0, %struct.ssb_sprom** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @boardflags_hi, align 4
  %6 = load i32, i32* @SSB_SPROM2_BFLHI, align 4
  %7 = call i32 @SPEX(i32 %5, i32 %6, i32 65535, i32 0)
  %8 = load i32, i32* @opo, align 4
  %9 = load i32, i32* @SSB_SPROM2_OPO, align 4
  %10 = load i32, i32* @SSB_SPROM2_OPO_VALUE, align 4
  %11 = call i32 @SPEX(i32 %8, i32 %9, i32 %10, i32 0)
  %12 = load i32, i32* @pa1lob0, align 4
  %13 = load i32, i32* @SSB_SPROM2_PA1LOB0, align 4
  %14 = call i32 @SPEX(i32 %12, i32 %13, i32 65535, i32 0)
  %15 = load i32, i32* @pa1lob1, align 4
  %16 = load i32, i32* @SSB_SPROM2_PA1LOB1, align 4
  %17 = call i32 @SPEX(i32 %15, i32 %16, i32 65535, i32 0)
  %18 = load i32, i32* @pa1lob2, align 4
  %19 = load i32, i32* @SSB_SPROM2_PA1LOB2, align 4
  %20 = call i32 @SPEX(i32 %18, i32 %19, i32 65535, i32 0)
  %21 = load i32, i32* @pa1hib0, align 4
  %22 = load i32, i32* @SSB_SPROM2_PA1HIB0, align 4
  %23 = call i32 @SPEX(i32 %21, i32 %22, i32 65535, i32 0)
  %24 = load i32, i32* @pa1hib1, align 4
  %25 = load i32, i32* @SSB_SPROM2_PA1HIB1, align 4
  %26 = call i32 @SPEX(i32 %24, i32 %25, i32 65535, i32 0)
  %27 = load i32, i32* @pa1hib2, align 4
  %28 = load i32, i32* @SSB_SPROM2_PA1HIB2, align 4
  %29 = call i32 @SPEX(i32 %27, i32 %28, i32 65535, i32 0)
  %30 = load i32, i32* @maxpwr_ah, align 4
  %31 = load i32, i32* @SSB_SPROM2_MAXP_A, align 4
  %32 = load i32, i32* @SSB_SPROM2_MAXP_A_HI, align 4
  %33 = call i32 @SPEX(i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load i32, i32* @maxpwr_al, align 4
  %35 = load i32, i32* @SSB_SPROM2_MAXP_A, align 4
  %36 = load i32, i32* @SSB_SPROM2_MAXP_A_LO, align 4
  %37 = load i32, i32* @SSB_SPROM2_MAXP_A_LO_SHIFT, align 4
  %38 = call i32 @SPEX(i32 %34, i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @SPEX(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
