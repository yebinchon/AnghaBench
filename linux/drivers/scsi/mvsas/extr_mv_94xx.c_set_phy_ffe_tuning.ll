; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_set_phy_ffe_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_set_phy_ffe_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ffe_control = type { i32, i32 }

@VANIR_A0_REV = common dso_local global i64 0, align 8
@VANIR_B0_REV = common dso_local global i64 0, align 8
@VSR_PHY_FFE_CONTROL = common dso_local global i32 0, align 4
@VSR_REF_CLOCK_CRTL = common dso_local global i32 0, align 4
@VSR_PHY_DFE_UPDATE_CRTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, i64)* @set_phy_ffe_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_phy_ffe_tuning(%struct.mvs_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ffe_control, align 4
  %5 = alloca %struct.mvs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.ffe_control* %4 to i64*
  store i64 %2, i64* %8, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  %9 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %10 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VANIR_A0_REV, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %18 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VANIR_B0_REV, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %3
  br label %92

25:                                               ; preds = %16
  %26 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @VSR_PHY_FFE_CONTROL, align 4
  %29 = call i32 @mvs_write_port_vsr_addr(%struct.mvs_info* %26, i32 %27, i32 %28)
  %30 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mvs_read_port_vsr_data(%struct.mvs_info* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, -256
  store i32 %34, i32* %7, align 4
  %35 = getelementptr inbounds %struct.ffe_control, %struct.ffe_control* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 4
  %38 = or i32 128, %37
  %39 = getelementptr inbounds %struct.ffe_control, %struct.ffe_control* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 0
  %42 = or i32 %38, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mvs_write_port_vsr_data(%struct.mvs_info* %45, i32 %46, i32 %47)
  %49 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @VSR_REF_CLOCK_CRTL, align 4
  %52 = call i32 @mvs_write_port_vsr_addr(%struct.mvs_info* %49, i32 %50, i32 %51)
  %53 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @mvs_read_port_vsr_data(%struct.mvs_info* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, -262146
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %7, align 4
  %59 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @mvs_write_port_vsr_data(%struct.mvs_info* %59, i32 %60, i32 %61)
  %63 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @VSR_PHY_DFE_UPDATE_CRTL, align 4
  %66 = call i32 @mvs_write_port_vsr_addr(%struct.mvs_info* %63, i32 %64, i32 %65)
  %67 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @mvs_read_port_vsr_data(%struct.mvs_info* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, -4096
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, 4032
  store i32 %73, i32* %7, align 4
  %74 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @mvs_write_port_vsr_data(%struct.mvs_info* %74, i32 %75, i32 %76)
  %78 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @VSR_REF_CLOCK_CRTL, align 4
  %81 = call i32 @mvs_write_port_vsr_addr(%struct.mvs_info* %78, i32 %79, i32 %80)
  %82 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @mvs_read_port_vsr_data(%struct.mvs_info* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, -9
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %7, align 4
  %88 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @mvs_write_port_vsr_data(%struct.mvs_info* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @mvs_write_port_vsr_addr(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_read_port_vsr_data(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_write_port_vsr_data(%struct.mvs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
