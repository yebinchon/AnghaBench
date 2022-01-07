; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla24xx_dump_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla24xx_dump_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@RISC_SRAM_DUMP_CMPL = common dso_local global i32 0, align 4
@RISC_EXT_MEM_DUMP_CMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32*, i32, i8**)* @qla24xx_dump_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_dump_memory(%struct.qla_hw_data* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load i32, i32* %8, align 4
  %15 = sdiv i32 %14, 4
  %16 = load i8**, i8*** %9, align 8
  %17 = call i32 @qla24xx_dump_ram(%struct.qla_hw_data* %11, i32 131072, i8* %13, i32 %15, i8** %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @QLA_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %48

23:                                               ; preds = %4
  %24 = load i32, i32* @RISC_SRAM_DUMP_CMPL, align 4
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 1
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1048576
  %35 = add nsw i32 %34, 1
  %36 = load i8**, i8*** %9, align 8
  %37 = call i32 @qla24xx_dump_ram(%struct.qla_hw_data* %28, i32 1048576, i8* %30, i32 %35, i8** %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @QLA_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = load i32, i32* @RISC_EXT_MEM_DUMP_CMPL, align 4
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 1
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %41, %23
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %21
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @qla24xx_dump_ram(%struct.qla_hw_data*, i32, i8*, i32, i8**) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
