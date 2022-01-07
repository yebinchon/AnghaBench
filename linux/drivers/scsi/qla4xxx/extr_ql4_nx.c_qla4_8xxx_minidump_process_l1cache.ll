; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_minidump_process_l1cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_minidump_process_l1cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.scsi_qla_host*, i64, i64*)*, i32 (%struct.scsi_qla_host*, i64, i64)* }
%struct.qla8xxx_minidump_entry_hdr = type { i32 }
%struct.qla8xxx_minidump_entry_cache = type { i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.qla8xxx_minidump_entry_hdr*, i64**)* @qla4_8xxx_minidump_process_l1cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_8xxx_minidump_process_l1cache(%struct.scsi_qla_host* %0, %struct.qla8xxx_minidump_entry_hdr* %1, i64** %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.qla8xxx_minidump_entry_hdr*, align 8
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
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.qla8xxx_minidump_entry_cache*, align 8
  %19 = alloca i64*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.qla8xxx_minidump_entry_hdr* %1, %struct.qla8xxx_minidump_entry_hdr** %5, align 8
  store i64** %2, i64*** %6, align 8
  %20 = load i64**, i64*** %6, align 8
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %19, align 8
  %22 = load %struct.qla8xxx_minidump_entry_hdr*, %struct.qla8xxx_minidump_entry_hdr** %5, align 8
  %23 = bitcast %struct.qla8xxx_minidump_entry_hdr* %22 to %struct.qla8xxx_minidump_entry_cache*
  store %struct.qla8xxx_minidump_entry_cache* %23, %struct.qla8xxx_minidump_entry_cache** %18, align 8
  %24 = load %struct.qla8xxx_minidump_entry_cache*, %struct.qla8xxx_minidump_entry_cache** %18, align 8
  %25 = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, %struct.qla8xxx_minidump_entry_cache* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.qla8xxx_minidump_entry_cache*, %struct.qla8xxx_minidump_entry_cache** %18, align 8
  %28 = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, %struct.qla8xxx_minidump_entry_cache* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.qla8xxx_minidump_entry_cache*, %struct.qla8xxx_minidump_entry_cache** %18, align 8
  %31 = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, %struct.qla8xxx_minidump_entry_cache* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.qla8xxx_minidump_entry_cache*, %struct.qla8xxx_minidump_entry_cache** %18, align 8
  %34 = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, %struct.qla8xxx_minidump_entry_cache* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %17, align 8
  %37 = load %struct.qla8xxx_minidump_entry_cache*, %struct.qla8xxx_minidump_entry_cache** %18, align 8
  %38 = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, %struct.qla8xxx_minidump_entry_cache* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load %struct.qla8xxx_minidump_entry_cache*, %struct.qla8xxx_minidump_entry_cache** %18, align 8
  %41 = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, %struct.qla8xxx_minidump_entry_cache* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load %struct.qla8xxx_minidump_entry_cache*, %struct.qla8xxx_minidump_entry_cache** %18, align 8
  %45 = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, %struct.qla8xxx_minidump_entry_cache* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %15, align 8
  store i64 0, i64* %11, align 8
  br label %48

48:                                               ; preds = %106, %3
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %109

52:                                               ; preds = %48
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32 (%struct.scsi_qla_host*, i64, i64)*, i32 (%struct.scsi_qla_host*, i64, i64)** %56, align 8
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i32 %57(%struct.scsi_qla_host* %58, i64 %59, i64 %60)
  %62 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32 (%struct.scsi_qla_host*, i64, i64)*, i32 (%struct.scsi_qla_host*, i64, i64)** %65, align 8
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %17, align 8
  %70 = call i32 %66(%struct.scsi_qla_host* %67, i64 %68, i64 %69)
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %7, align 8
  store i64 0, i64* %12, align 8
  br label %72

72:                                               ; preds = %96, %52
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %78 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32 (%struct.scsi_qla_host*, i64, i64*)*, i32 (%struct.scsi_qla_host*, i64, i64*)** %80, align 8
  %82 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 %81(%struct.scsi_qla_host* %82, i64 %83, i64* %16)
  %85 = load i64, i64* %16, align 8
  %86 = call i32 @cpu_to_le32(i64 %85)
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %19, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %19, align 8
  store i64 %87, i64* %88, align 8
  %90 = load %struct.qla8xxx_minidump_entry_cache*, %struct.qla8xxx_minidump_entry_cache** %18, align 8
  %91 = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, %struct.qla8xxx_minidump_entry_cache* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %76
  %97 = load i64, i64* %12, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %12, align 8
  br label %72

99:                                               ; preds = %72
  %100 = load %struct.qla8xxx_minidump_entry_cache*, %struct.qla8xxx_minidump_entry_cache** %18, align 8
  %101 = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, %struct.qla8xxx_minidump_entry_cache* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %14, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %14, align 8
  br label %106

106:                                              ; preds = %99
  %107 = load i64, i64* %11, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %11, align 8
  br label %48

109:                                              ; preds = %48
  %110 = load i64*, i64** %19, align 8
  %111 = load i64**, i64*** %6, align 8
  store i64* %110, i64** %111, align 8
  ret void
}

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
