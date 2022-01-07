; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_rdrom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_rdrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla82xx_md_entry_rdrom = type { i32, i32 }

@MD_DIRECT_ROM_WINDOW = common dso_local global i64 0, align 8
@MD_DIRECT_ROM_READ_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32**)* @qla82xx_minidump_process_rdrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_minidump_process_rdrom(%struct.TYPE_3__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qla82xx_md_entry_rdrom*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %7, align 8
  %17 = load i32**, i32*** %6, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to %struct.qla82xx_md_entry_rdrom*
  store %struct.qla82xx_md_entry_rdrom* %20, %struct.qla82xx_md_entry_rdrom** %12, align 8
  %21 = load %struct.qla82xx_md_entry_rdrom*, %struct.qla82xx_md_entry_rdrom** %12, align 8
  %22 = getelementptr inbounds %struct.qla82xx_md_entry_rdrom, %struct.qla82xx_md_entry_rdrom* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.qla82xx_md_entry_rdrom*, %struct.qla82xx_md_entry_rdrom** %12, align 8
  %25 = getelementptr inbounds %struct.qla82xx_md_entry_rdrom, %struct.qla82xx_md_entry_rdrom* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %55, %3
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %36 = load i64, i64* @MD_DIRECT_ROM_WINDOW, align 8
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, -65536
  %39 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %35, i64 %36, i32 %38, i32 1)
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %41 = load i64, i64* @MD_DIRECT_ROM_READ_BASE, align 8
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 65535
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i32 @qla82xx_md_rw_32(%struct.qla_hw_data* %40, i64 %45, i32 0, i32 0)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load i32*, i32** %13, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %34
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %30

58:                                               ; preds = %30
  %59 = load i32*, i32** %13, align 8
  %60 = load i32**, i32*** %6, align 8
  store i32* %59, i32** %60, align 8
  ret void
}

declare dso_local i32 @qla82xx_md_rw_32(%struct.qla_hw_data*, i64, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
