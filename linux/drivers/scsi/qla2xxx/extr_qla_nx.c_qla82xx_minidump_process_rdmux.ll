; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_rdmux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_rdmux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla82xx_md_entry_mux = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64**)* @qla82xx_minidump_process_rdmux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_minidump_process_rdmux(%struct.TYPE_3__* %0, i32* %1, i64** %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.qla82xx_md_entry_mux*, align 8
  %16 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64** %2, i64*** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %7, align 8
  %20 = load i64**, i64*** %6, align 8
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %16, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = bitcast i32* %22 to %struct.qla82xx_md_entry_mux*
  store %struct.qla82xx_md_entry_mux* %23, %struct.qla82xx_md_entry_mux** %15, align 8
  %24 = load %struct.qla82xx_md_entry_mux*, %struct.qla82xx_md_entry_mux** %15, align 8
  %25 = getelementptr inbounds %struct.qla82xx_md_entry_mux, %struct.qla82xx_md_entry_mux* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.qla82xx_md_entry_mux*, %struct.qla82xx_md_entry_mux** %15, align 8
  %28 = getelementptr inbounds %struct.qla82xx_md_entry_mux, %struct.qla82xx_md_entry_mux* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.qla82xx_md_entry_mux*, %struct.qla82xx_md_entry_mux** %15, align 8
  %31 = getelementptr inbounds %struct.qla82xx_md_entry_mux, %struct.qla82xx_md_entry_mux* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.qla82xx_md_entry_mux*, %struct.qla82xx_md_entry_mux** %15, align 8
  %34 = getelementptr inbounds %struct.qla82xx_md_entry_mux, %struct.qla82xx_md_entry_mux* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load %struct.qla82xx_md_entry_mux*, %struct.qla82xx_md_entry_mux** %15, align 8
  %37 = getelementptr inbounds %struct.qla82xx_md_entry_mux, %struct.qla82xx_md_entry_mux* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %39

39:                                               ; preds = %64, %3
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %44, i64 %45, i64 %46, i32 1)
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %48, i64 %49, i64 0, i32 0)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i8* @cpu_to_le32(i64 %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load i64*, i64** %16, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %16, align 8
  store i64 %53, i64* %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i8* @cpu_to_le32(i64 %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = load i64*, i64** %16, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %16, align 8
  store i64 %58, i64* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %43
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %13, align 8
  br label %39

67:                                               ; preds = %39
  %68 = load i64*, i64** %16, align 8
  %69 = load i64**, i64*** %6, align 8
  store i64* %68, i64** %69, align 8
  ret void
}

declare dso_local i64 @qla82xx_md_rw_32(%struct.qla_hw_data*, i64, i64, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
