; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_unprotect_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_unprotect_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ROM Lock failed.\0A\00", align 1
@BLOCK_PROTECT_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Write disable failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*)* @qla82xx_unprotect_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_unprotect_flash(%struct.qla_hw_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @pci_get_drvdata(i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %12 = call i32 @ql82xx_rom_lock_d(%struct.qla_hw_data* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @ql_log_warn, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @ql_log(i32 %16, i32* %17, i32 45076, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %58

20:                                               ; preds = %1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %22 = call i32 @qla82xx_read_status_reg(%struct.qla_hw_data* %21, i32* %5)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %54

26:                                               ; preds = %20
  %27 = load i32, i32* @BLOCK_PROTECT_BITS, align 4
  %28 = shl i32 %27, 2
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @qla82xx_write_status_reg(%struct.qla_hw_data* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load i32, i32* @BLOCK_PROTECT_BITS, align 4
  %39 = shl i32 %38, 2
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @qla82xx_write_status_reg(%struct.qla_hw_data* %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %26
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %47 = call i64 @qla82xx_write_disable_flash(%struct.qla_hw_data* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @ql_log_warn, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @ql_log(i32 %50, i32* %51, i32 45077, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %56 = call i32 @qla82xx_rom_unlock(%struct.qla_hw_data* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i32 @ql82xx_rom_lock_d(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*) #1

declare dso_local i32 @qla82xx_read_status_reg(%struct.qla_hw_data*, i32*) #1

declare dso_local i32 @qla82xx_write_status_reg(%struct.qla_hw_data*, i32) #1

declare dso_local i64 @qla82xx_write_disable_flash(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_rom_unlock(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
