; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_check_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_check_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LDMT1R_IFM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_lcdc_chan*)* @sh_mobile_lcdc_check_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_check_interface(%struct.sh_mobile_lcdc_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_chan* %0, %struct.sh_mobile_lcdc_chan** %3, align 8
  %5 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %6 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %12 [
    i32 140, label %11
    i32 139, label %11
    i32 145, label %11
    i32 144, label %11
    i32 143, label %11
    i32 142, label %11
    i32 141, label %11
    i32 132, label %11
    i32 131, label %11
    i32 130, label %11
    i32 129, label %11
    i32 128, label %11
    i32 138, label %11
    i32 137, label %11
    i32 136, label %11
    i32 135, label %11
    i32 134, label %11
    i32 133, label %11
  ]

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %11
  %16 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %17 = call i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LDMT1R_IFM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %19
  %28 = load i32, i32* @LDMT1R_IFM, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %15
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %35 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %24, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
