; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_intr_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_intr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CSIO_HW_CHIP_MASK = common dso_local global i32 0, align 4
@PL_WHOAMI_A = common dso_local global i32 0, align 4
@CSIO_HWF_HW_INTR_ENABLED = common dso_local global i32 0, align 4
@PL_PF_INT_ENABLE_A = common dso_local global i32 0, align 4
@PL_INT_MAP0_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_hw_intr_disable(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %5 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CSIO_HW_CHIP_MASK, align 4
  %10 = and i32 %8, %9
  %11 = call i64 @csio_is_t5(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %15 = load i32, i32* @PL_WHOAMI_A, align 4
  %16 = call i32 @csio_rd_reg32(%struct.csio_hw* %14, i32 %15)
  %17 = call i32 @SOURCEPF_G(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %20 = load i32, i32* @PL_WHOAMI_A, align 4
  %21 = call i32 @csio_rd_reg32(%struct.csio_hw* %19, i32 %20)
  %22 = call i32 @T6_SOURCEPF_G(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %25 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CSIO_HWF_HW_INTR_ENABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %54

31:                                               ; preds = %23
  %32 = load i32, i32* @CSIO_HWF_HW_INTR_ENABLED, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %35 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %39 = load i32, i32* @PL_PF_INT_ENABLE_A, align 4
  %40 = call i32 @MYPF_REG(i32 %39)
  %41 = call i32 @csio_wr_reg32(%struct.csio_hw* %38, i32 0, i32 %40)
  %42 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %43 = call i64 @csio_is_hw_master(%struct.csio_hw* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %47 = load i32, i32* @PL_INT_MAP0_A, align 4
  %48 = load i32, i32* %3, align 4
  %49 = shl i32 1, %48
  %50 = call i32 @csio_set_reg_field(%struct.csio_hw* %46, i32 %47, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %45, %31
  %52 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %53 = call i32 @csio_mb_intr_disable(%struct.csio_hw* %52)
  br label %54

54:                                               ; preds = %51, %30
  ret void
}

declare dso_local i64 @csio_is_t5(i32) #1

declare dso_local i32 @SOURCEPF_G(i32) #1

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @T6_SOURCEPF_G(i32) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i64 @csio_is_hw_master(%struct.csio_hw*) #1

declare dso_local i32 @csio_set_reg_field(%struct.csio_hw*, i32, i32, i32) #1

declare dso_local i32 @csio_mb_intr_disable(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
