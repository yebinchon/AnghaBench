; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_lcdc_sys_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_lcdc_sys_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_chan = type { i32 }

@_LDDRDR = common dso_local global i32 0, align 4
@LDDRDR_RSR = common dso_local global i32 0, align 4
@_LDSR = common dso_local global i32 0, align 4
@LDSR_AS = common dso_local global i32 0, align 4
@_LDDRAR = common dso_local global i32 0, align 4
@LDDRAR_RA = common dso_local global i32 0, align 4
@LDDRDR_DRD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @lcdc_sys_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lcdc_sys_read_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sh_mobile_lcdc_chan*
  store %struct.sh_mobile_lcdc_chan* %5, %struct.sh_mobile_lcdc_chan** %3, align 8
  %6 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %7 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @_LDDRDR, align 4
  %10 = load i32, i32* @LDDRDR_RSR, align 4
  %11 = call i32 @lcdc_write(i32 %8, i32 %9, i32 %10)
  %12 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %13 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @_LDSR, align 4
  %16 = load i32, i32* @LDSR_AS, align 4
  %17 = call i32 @lcdc_wait_bit(i32 %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @_LDDRAR, align 4
  %22 = load i32, i32* @LDDRAR_RA, align 4
  %23 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %24 = call i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan* %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 2, i32 0
  %28 = or i32 %22, %27
  %29 = call i32 @lcdc_write(i32 %20, i32 %21, i32 %28)
  %30 = call i32 @udelay(i32 1)
  %31 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %32 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @_LDSR, align 4
  %35 = load i32, i32* @LDSR_AS, align 4
  %36 = call i32 @lcdc_wait_bit(i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %38 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @_LDDRDR, align 4
  %41 = call i64 @lcdc_read(i32 %39, i32 %40)
  %42 = load i64, i64* @LDDRDR_DRD_MASK, align 8
  %43 = and i64 %41, %42
  ret i64 %43
}

declare dso_local i32 @lcdc_write(i32, i32, i32) #1

declare dso_local i32 @lcdc_wait_bit(i32, i32, i32, i32) #1

declare dso_local i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @lcdc_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
