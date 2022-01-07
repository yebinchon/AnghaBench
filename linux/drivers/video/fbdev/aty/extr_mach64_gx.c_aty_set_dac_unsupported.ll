; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_set_dac_unsupported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_set_dac_unsupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%union.aty_pll = type { i32 }
%struct.atyfb_par = type { i32 }

@BUS_CNTL = common dso_local global i32 0, align 4
@DAC_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %union.aty_pll*, i32, i32)* @aty_set_dac_unsupported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_set_dac_unsupported(%struct.fb_info* %0, %union.aty_pll* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %union.aty_pll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atyfb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store %union.aty_pll* %1, %union.aty_pll** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.atyfb_par*
  store %struct.atyfb_par* %13, %struct.atyfb_par** %9, align 8
  %14 = load i32, i32* @BUS_CNTL, align 4
  %15 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %16 = call i32 @aty_st_le32(i32 %14, i32 -1995562767, %struct.atyfb_par* %15)
  %17 = load i32, i32* @DAC_CNTL, align 4
  %18 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %19 = call i32 @aty_st_le32(i32 %17, i32 1191518464, %struct.atyfb_par* %18)
  %20 = load i32, i32* @BUS_CNTL, align 4
  %21 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %22 = call i32 @aty_st_le32(i32 %20, i32 1494094079, %struct.atyfb_par* %21)
  %23 = load i32, i32* @DAC_CNTL, align 4
  %24 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %25 = call i32 @aty_st_le32(i32 %23, i32 1191256320, %struct.atyfb_par* %24)
  ret i32 0
}

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
