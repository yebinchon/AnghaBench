; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_firmware_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_firmware_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_nhi = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_FW_STS = common dso_local global i64 0, align 8
@REG_FW_STS_ICM_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"starting ICM firmware\0A\00", align 1
@REG_FW_STS_NVM_AUTH_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_nhi*)* @icm_firmware_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_firmware_start(%struct.tb* %0, %struct.tb_nhi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_nhi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_nhi* %1, %struct.tb_nhi** %5, align 8
  store i32 10, i32* %6, align 4
  %9 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %10 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REG_FW_STS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @ioread32(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @REG_FW_STS_ICM_EN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %22 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.tb*, %struct.tb** %4, align 8
  %27 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %28 = call i32 @icm_firmware_reset(%struct.tb* %26, %struct.tb_nhi* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %48, %33
  %35 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %36 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_FW_STS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @ioread32(i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @REG_FW_STS_NVM_AUTH_DONE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %55

46:                                               ; preds = %34
  %47 = call i32 @msleep(i32 300)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %34, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %45, %31, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @icm_firmware_reset(%struct.tb*, %struct.tb_nhi*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
