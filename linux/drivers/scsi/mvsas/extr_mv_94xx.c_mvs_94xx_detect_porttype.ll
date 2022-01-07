; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_detect_porttype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_detect_porttype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { %struct.mvs_phy* }
%struct.mvs_phy = type { i32 }

@VSR_PHY_MODE3 = common dso_local global i32 0, align 4
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32)* @mvs_94xx_detect_porttype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_94xx_detect_porttype(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mvs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvs_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %9 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %8, i32 0, i32 0
  %10 = load %struct.mvs_phy*, %struct.mvs_phy** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %10, i64 %12
  store %struct.mvs_phy* %13, %struct.mvs_phy** %6, align 8
  %14 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @VSR_PHY_MODE3, align 4
  %17 = call i32 @mvs_write_port_vsr_addr(%struct.mvs_info* %14, i32 %15, i32 %16)
  %18 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mvs_read_port_vsr_data(%struct.mvs_info* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 4128768
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @PORT_TYPE_SAS, align 4
  %26 = load i32, i32* @PORT_TYPE_SATA, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load %struct.mvs_phy*, %struct.mvs_phy** %6, align 8
  %30 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %41 [
    i32 16, label %34
    i32 29, label %40
  ]

34:                                               ; preds = %2
  %35 = load i32, i32* @PORT_TYPE_SAS, align 4
  %36 = load %struct.mvs_phy*, %struct.mvs_phy** %6, align 8
  %37 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %47

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %2, %40
  %42 = load i32, i32* @PORT_TYPE_SATA, align 4
  %43 = load %struct.mvs_phy*, %struct.mvs_phy** %6, align 8
  %44 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %34
  ret void
}

declare dso_local i32 @mvs_write_port_vsr_addr(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_read_port_vsr_data(%struct.mvs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
