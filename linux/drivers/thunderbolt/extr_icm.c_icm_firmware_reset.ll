; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_firmware_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_firmware_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_nhi = type { i64 }
%struct.icm = type { i32 (%struct.tb*)*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@REG_FW_STS = common dso_local global i64 0, align 8
@REG_FW_STS_CIO_RESET_REQ = common dso_local global i32 0, align 4
@REG_FW_STS_ICM_EN_INVERT = common dso_local global i32 0, align 4
@REG_FW_STS_ICM_EN_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_nhi*)* @icm_firmware_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_firmware_reset(%struct.tb* %0, %struct.tb_nhi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_nhi*, align 8
  %6 = alloca %struct.icm*, align 8
  %7 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_nhi* %1, %struct.tb_nhi** %5, align 8
  %8 = load %struct.tb*, %struct.tb** %4, align 8
  %9 = call %struct.icm* @tb_priv(%struct.tb* %8)
  store %struct.icm* %9, %struct.icm** %6, align 8
  %10 = load %struct.icm*, %struct.icm** %6, align 8
  %11 = getelementptr inbounds %struct.icm, %struct.icm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %19 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_FW_STS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread32(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @REG_FW_STS_CIO_RESET_REQ, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %29 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REG_FW_STS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite32(i32 %27, i64 %32)
  %34 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %35 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REG_FW_STS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @ioread32(i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @REG_FW_STS_ICM_EN_INVERT, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @REG_FW_STS_ICM_EN_CPU, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %48 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @REG_FW_STS, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @iowrite32(i32 %46, i64 %51)
  %53 = load %struct.icm*, %struct.icm** %6, align 8
  %54 = getelementptr inbounds %struct.icm, %struct.icm* %53, i32 0, i32 0
  %55 = load i32 (%struct.tb*)*, i32 (%struct.tb*)** %54, align 8
  %56 = load %struct.tb*, %struct.tb** %4, align 8
  %57 = call i32 %55(%struct.tb* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %17, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.icm* @tb_priv(%struct.tb*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
