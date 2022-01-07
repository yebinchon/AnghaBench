; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_vf610-ocotp.c_vf610_ocotp_calculate_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_vf610-ocotp.c_vf610_ocotp_calculate_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_ocotp = type { i32 }

@DEF_RELAX = common dso_local global i32 0, align 4
@OCOTP_TIMING_RELAX = common dso_local global i32 0, align 4
@OCOTP_TIMING_STROBE_READ = common dso_local global i32 0, align 4
@OCOTP_TIMING_STROBE_PROG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vf610_ocotp*)* @vf610_ocotp_calculate_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_ocotp_calculate_timing(%struct.vf610_ocotp* %0) #0 {
  %2 = alloca %struct.vf610_ocotp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vf610_ocotp* %0, %struct.vf610_ocotp** %2, align 8
  %8 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %2, align 8
  %9 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_get_rate(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @DEF_RELAX, align 4
  %14 = sdiv i32 1000000000, %13
  %15 = sdiv i32 %12, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sdiv i32 %17, 100000
  %19 = load i32, i32* @DEF_RELAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %18, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sdiv i32 %24, 25000000
  %26 = load i32, i32* @DEF_RELAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %25, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @OCOTP_TIMING_RELAX, align 4
  %33 = call i32 @BF(i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @OCOTP_TIMING_STROBE_READ, align 4
  %36 = call i32 @BF(i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @OCOTP_TIMING_STROBE_PROG, align 4
  %41 = call i32 @BF(i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @BF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
