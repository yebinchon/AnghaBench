; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_minidump_process_rdmux2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_minidump_process_rdmux2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla8044_minidump_entry_hdr = type { i32 }
%struct.qla8044_minidump_entry_rdmux2 = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.qla8044_minidump_entry_hdr*, i64**)* @qla8044_minidump_process_rdmux2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla8044_minidump_process_rdmux2(%struct.scsi_qla_host* %0, %struct.qla8044_minidump_entry_hdr* %1, i64** %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.qla8044_minidump_entry_hdr*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.qla8044_minidump_entry_rdmux2*, align 8
  %17 = alloca i64*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.qla8044_minidump_entry_hdr* %1, %struct.qla8044_minidump_entry_hdr** %5, align 8
  store i64** %2, i64*** %6, align 8
  %18 = load i64**, i64*** %6, align 8
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %17, align 8
  %20 = load %struct.qla8044_minidump_entry_hdr*, %struct.qla8044_minidump_entry_hdr** %5, align 8
  %21 = bitcast %struct.qla8044_minidump_entry_hdr* %20 to %struct.qla8044_minidump_entry_rdmux2*
  store %struct.qla8044_minidump_entry_rdmux2* %21, %struct.qla8044_minidump_entry_rdmux2** %16, align 8
  %22 = load %struct.qla8044_minidump_entry_rdmux2*, %struct.qla8044_minidump_entry_rdmux2** %16, align 8
  %23 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, %struct.qla8044_minidump_entry_rdmux2* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.qla8044_minidump_entry_rdmux2*, %struct.qla8044_minidump_entry_rdmux2** %16, align 8
  %26 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, %struct.qla8044_minidump_entry_rdmux2* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.qla8044_minidump_entry_rdmux2*, %struct.qla8044_minidump_entry_rdmux2** %16, align 8
  %29 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, %struct.qla8044_minidump_entry_rdmux2* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.qla8044_minidump_entry_rdmux2*, %struct.qla8044_minidump_entry_rdmux2** %16, align 8
  %32 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, %struct.qla8044_minidump_entry_rdmux2* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  %34 = load %struct.qla8044_minidump_entry_rdmux2*, %struct.qla8044_minidump_entry_rdmux2** %16, align 8
  %35 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, %struct.qla8044_minidump_entry_rdmux2* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load %struct.qla8044_minidump_entry_rdmux2*, %struct.qla8044_minidump_entry_rdmux2** %16, align 8
  %38 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, %struct.qla8044_minidump_entry_rdmux2* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %15, align 8
  store i64 0, i64* %11, align 8
  br label %40

40:                                               ; preds = %97, %3
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.qla8044_minidump_entry_rdmux2*, %struct.qla8044_minidump_entry_rdmux2** %16, align 8
  %43 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, %struct.qla8044_minidump_entry_rdmux2* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %100

46:                                               ; preds = %40
  %47 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host* %47, i64 %48, i64 %49)
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %14, align 8
  %53 = and i64 %51, %52
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64*, i64** %17, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %17, align 8
  store i64 %54, i64* %55, align 8
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host* %57, i64 %58, i64 %59)
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host* %61, i64 %62, i64* %10)
  %64 = load i64, i64* %10, align 8
  %65 = load i64*, i64** %17, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %17, align 8
  store i64 %64, i64* %65, align 8
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host* %67, i64 %68, i64 %69)
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %14, align 8
  %73 = and i64 %71, %72
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64*, i64** %17, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %17, align 8
  store i64 %74, i64* %75, align 8
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host* %77, i64 %78, i64 %79)
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host* %81, i64 %82, i64* %10)
  %84 = load i64, i64* %10, align 8
  %85 = load i64*, i64** %17, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 1
  store i64* %86, i64** %17, align 8
  store i64 %84, i64* %85, align 8
  %87 = load %struct.qla8044_minidump_entry_rdmux2*, %struct.qla8044_minidump_entry_rdmux2** %16, align 8
  %88 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, %struct.qla8044_minidump_entry_rdmux2* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %7, align 8
  %92 = load %struct.qla8044_minidump_entry_rdmux2*, %struct.qla8044_minidump_entry_rdmux2** %16, align 8
  %93 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, %struct.qla8044_minidump_entry_rdmux2* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %8, align 8
  br label %97

97:                                               ; preds = %46
  %98 = load i64, i64* %11, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %40

100:                                              ; preds = %40
  %101 = load i64*, i64** %17, align 8
  %102 = load i64**, i64*** %6, align 8
  store i64* %101, i64** %102, align 8
  ret void
}

declare dso_local i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host*, i64, i64) #1

declare dso_local i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
