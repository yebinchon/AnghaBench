; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_assign_phy_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_assign_phy_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.xd_info }
%struct.xd_info = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@XD_ADDRESS0 = common dso_local global i32 0, align 4
@XD_ADDRESS1 = common dso_local global i32 0, align 4
@XD_ADDRESS2 = common dso_local global i32 0, align 4
@XD_ADDRESS3 = common dso_local global i32 0, align 4
@XD_CFG = common dso_local global i32 0, align 4
@XD_CALC_ECC = common dso_local global i32 0, align 4
@XD_BA_NO_TRANSFORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*, i32, i32)* @xd_assign_phy_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xd_assign_phy_addr(%struct.rtsx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xd_info*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  store %struct.xd_info* %9, %struct.xd_info** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %74 [
    i32 128, label %11
    i32 129, label %44
  ]

11:                                               ; preds = %3
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %13 = load i32, i32* @WRITE_REG_CMD, align 4
  %14 = load i32, i32* @XD_ADDRESS0, align 4
  %15 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %12, i32 %13, i32 %14, i32 255, i32 0)
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %17 = load i32, i32* @WRITE_REG_CMD, align 4
  %18 = load i32, i32* @XD_ADDRESS1, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %16, i32 %17, i32 %18, i32 255, i32 %19)
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %22 = load i32, i32* @WRITE_REG_CMD, align 4
  %23 = load i32, i32* @XD_ADDRESS2, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 8
  %26 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %21, i32 %22, i32 %23, i32 255, i32 %25)
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %28 = load i32, i32* @WRITE_REG_CMD, align 4
  %29 = load i32, i32* @XD_ADDRESS3, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 16
  %32 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %27, i32 %28, i32 %29, i32 255, i32 %31)
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %34 = load i32, i32* @WRITE_REG_CMD, align 4
  %35 = load i32, i32* @XD_CFG, align 4
  %36 = load %struct.xd_info*, %struct.xd_info** %7, align 8
  %37 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @XD_CALC_ECC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @XD_BA_NO_TRANSFORM, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %33, i32 %34, i32 %35, i32 255, i32 %42)
  br label %75

44:                                               ; preds = %3
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %46 = load i32, i32* @WRITE_REG_CMD, align 4
  %47 = load i32, i32* @XD_ADDRESS0, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %45, i32 %46, i32 %47, i32 255, i32 %48)
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %51 = load i32, i32* @WRITE_REG_CMD, align 4
  %52 = load i32, i32* @XD_ADDRESS1, align 4
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, 8
  %55 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %50, i32 %51, i32 %52, i32 255, i32 %54)
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %57 = load i32, i32* @WRITE_REG_CMD, align 4
  %58 = load i32, i32* @XD_ADDRESS2, align 4
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 16
  %61 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %56, i32 %57, i32 %58, i32 255, i32 %60)
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %63 = load i32, i32* @WRITE_REG_CMD, align 4
  %64 = load i32, i32* @XD_CFG, align 4
  %65 = load %struct.xd_info*, %struct.xd_info** %7, align 8
  %66 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @XD_CALC_ECC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @XD_BA_NO_TRANSFORM, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %62, i32 %63, i32 %64, i32 255, i32 %72)
  br label %75

74:                                               ; preds = %3
  br label %75

75:                                               ; preds = %74, %44, %11
  ret void
}

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
