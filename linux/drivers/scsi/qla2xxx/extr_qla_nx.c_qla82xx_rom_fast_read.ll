; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_rom_fast_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_rom_fast_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@QLA82XX_ROM_LOCK_ID = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to acquire SEM2 lock, Lock Owner %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32, i32*)* @qla82xx_rom_fast_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_rom_fast_read(%struct.qla_hw_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @pci_get_drvdata(i32 %14)
  store i32* %15, i32** %11, align 8
  br label %16

16:                                               ; preds = %25, %3
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %18 = call i64 @qla82xx_rom_lock(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 50000
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = call i32 @udelay(i32 100)
  %27 = call i32 (...) @schedule()
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %16

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 50000
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %35 = load i32, i32* @QLA82XX_ROM_LOCK_ID, align 4
  %36 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @ql_log_fatal, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ql_log(i32 %37, i32* %38, i32 185, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %4, align 4
  br label %49

41:                                               ; preds = %30
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @qla82xx_do_rom_fast_read(%struct.qla_hw_data* %42, i32 %43, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %47 = call i32 @qla82xx_rom_unlock(%struct.qla_hw_data* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %41, %33
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i64 @qla82xx_rom_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @qla82xx_do_rom_fast_read(%struct.qla_hw_data*, i32, i32*) #1

declare dso_local i32 @qla82xx_rom_unlock(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
