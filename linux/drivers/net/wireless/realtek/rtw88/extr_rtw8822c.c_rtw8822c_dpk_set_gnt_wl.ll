; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_set_gnt_wl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_set_gnt_wl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i32, i32 }

@MASKBYTE1 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822c_dpk_set_gnt_wl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_set_gnt_wl(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dpk_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.rtw_dpk_info* %8, %struct.rtw_dpk_info** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = call i32 @rtw_read32(%struct.rtw_dev* %12, i32 112)
  %14 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %5, align 8
  %15 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = call i32 @rtw_coex_read_indirect_reg(%struct.rtw_dev* %16, i32 56)
  %18 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %21 = call i32 @BIT(i32 26)
  %22 = call i32 @rtw_write32_mask(%struct.rtw_dev* %20, i32 112, i32 %21, i32 1)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %24 = load i32, i32* @MASKBYTE1, align 4
  %25 = call i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev* %23, i32 56, i32 %24, i32 119)
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %28 = load i32, i32* @MASKDWORD, align 4
  %29 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %5, align 8
  %30 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev* %27, i32 56, i32 %28, i32 %31)
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %34 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %5, align 8
  %35 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtw_write32(%struct.rtw_dev* %33, i32 112, i32 %36)
  br label %38

38:                                               ; preds = %26, %11
  ret void
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_read_indirect_reg(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
