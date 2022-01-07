; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla83xx_minidump_process_rdmux2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla83xx_minidump_process_rdmux2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scsi_qla_host*, i64, i64*)*, i32 (%struct.scsi_qla_host*, i64, i64)* }
%struct.qla8xxx_minidump_entry_hdr = type { i32 }
%struct.qla83xx_minidump_entry_rdmux2 = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.qla8xxx_minidump_entry_hdr*, i64**)* @qla83xx_minidump_process_rdmux2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla83xx_minidump_process_rdmux2(%struct.scsi_qla_host* %0, %struct.qla8xxx_minidump_entry_hdr* %1, i64** %2) #0 {
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
  %16 = alloca %struct.qla83xx_minidump_entry_rdmux2*, align 8
  %17 = alloca i64*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.qla8xxx_minidump_entry_hdr* %1, %struct.qla8xxx_minidump_entry_hdr** %5, align 8
  store i64** %2, i64*** %6, align 8
  %18 = load i64**, i64*** %6, align 8
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %17, align 8
  %20 = load %struct.qla8xxx_minidump_entry_hdr*, %struct.qla8xxx_minidump_entry_hdr** %5, align 8
  %21 = bitcast %struct.qla8xxx_minidump_entry_hdr* %20 to %struct.qla83xx_minidump_entry_rdmux2*
  store %struct.qla83xx_minidump_entry_rdmux2* %21, %struct.qla83xx_minidump_entry_rdmux2** %16, align 8
  %22 = load %struct.qla83xx_minidump_entry_rdmux2*, %struct.qla83xx_minidump_entry_rdmux2** %16, align 8
  %23 = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, %struct.qla83xx_minidump_entry_rdmux2* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.qla83xx_minidump_entry_rdmux2*, %struct.qla83xx_minidump_entry_rdmux2** %16, align 8
  %27 = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, %struct.qla83xx_minidump_entry_rdmux2* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.qla83xx_minidump_entry_rdmux2*, %struct.qla83xx_minidump_entry_rdmux2** %16, align 8
  %31 = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, %struct.qla83xx_minidump_entry_rdmux2* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.qla83xx_minidump_entry_rdmux2*, %struct.qla83xx_minidump_entry_rdmux2** %16, align 8
  %35 = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, %struct.qla83xx_minidump_entry_rdmux2* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @le32_to_cpu(i32 %36)
  store i64 %37, i64* %13, align 8
  %38 = load %struct.qla83xx_minidump_entry_rdmux2*, %struct.qla83xx_minidump_entry_rdmux2** %16, align 8
  %39 = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, %struct.qla83xx_minidump_entry_rdmux2* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  store i64 %41, i64* %14, align 8
  %42 = load %struct.qla83xx_minidump_entry_rdmux2*, %struct.qla83xx_minidump_entry_rdmux2** %16, align 8
  %43 = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, %struct.qla83xx_minidump_entry_rdmux2* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @le32_to_cpu(i32 %44)
  store i64 %45, i64* %15, align 8
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %141, %3
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.qla83xx_minidump_entry_rdmux2*, %struct.qla83xx_minidump_entry_rdmux2** %16, align 8
  %49 = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, %struct.qla83xx_minidump_entry_rdmux2* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %144

52:                                               ; preds = %46
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (%struct.scsi_qla_host*, i64, i64)*, i32 (%struct.scsi_qla_host*, i64, i64)** %56, align 8
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 %57(%struct.scsi_qla_host* %58, i64 %59, i64 %60)
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %14, align 8
  %64 = and i64 %62, %63
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i8* @cpu_to_le32(i64 %65)
  %67 = ptrtoint i8* %66 to i64
  %68 = load i64*, i64** %17, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %17, align 8
  store i64 %67, i64* %68, align 8
  %70 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %71 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32 (%struct.scsi_qla_host*, i64, i64)*, i32 (%struct.scsi_qla_host*, i64, i64)** %73, align 8
  %75 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 %74(%struct.scsi_qla_host* %75, i64 %76, i64 %77)
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %80 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (%struct.scsi_qla_host*, i64, i64*)*, i32 (%struct.scsi_qla_host*, i64, i64*)** %82, align 8
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %85 = load i64, i64* %15, align 8
  %86 = call i32 %83(%struct.scsi_qla_host* %84, i64 %85, i64* %10)
  %87 = load i64, i64* %10, align 8
  %88 = call i8* @cpu_to_le32(i64 %87)
  %89 = ptrtoint i8* %88 to i64
  %90 = load i64*, i64** %17, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %17, align 8
  store i64 %89, i64* %90, align 8
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %93 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32 (%struct.scsi_qla_host*, i64, i64)*, i32 (%struct.scsi_qla_host*, i64, i64)** %95, align 8
  %97 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 %96(%struct.scsi_qla_host* %97, i64 %98, i64 %99)
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %14, align 8
  %103 = and i64 %101, %102
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i8* @cpu_to_le32(i64 %104)
  %106 = ptrtoint i8* %105 to i64
  %107 = load i64*, i64** %17, align 8
  %108 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %108, i64** %17, align 8
  store i64 %106, i64* %107, align 8
  %109 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %110 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32 (%struct.scsi_qla_host*, i64, i64)*, i32 (%struct.scsi_qla_host*, i64, i64)** %112, align 8
  %114 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 %113(%struct.scsi_qla_host* %114, i64 %115, i64 %116)
  %118 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %119 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32 (%struct.scsi_qla_host*, i64, i64*)*, i32 (%struct.scsi_qla_host*, i64, i64*)** %121, align 8
  %123 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %124 = load i64, i64* %15, align 8
  %125 = call i32 %122(%struct.scsi_qla_host* %123, i64 %124, i64* %10)
  %126 = load i64, i64* %10, align 8
  %127 = call i8* @cpu_to_le32(i64 %126)
  %128 = ptrtoint i8* %127 to i64
  %129 = load i64*, i64** %17, align 8
  %130 = getelementptr inbounds i64, i64* %129, i32 1
  store i64* %130, i64** %17, align 8
  store i64 %128, i64* %129, align 8
  %131 = load %struct.qla83xx_minidump_entry_rdmux2*, %struct.qla83xx_minidump_entry_rdmux2** %16, align 8
  %132 = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, %struct.qla83xx_minidump_entry_rdmux2* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %7, align 8
  %136 = load %struct.qla83xx_minidump_entry_rdmux2*, %struct.qla83xx_minidump_entry_rdmux2** %16, align 8
  %137 = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, %struct.qla83xx_minidump_entry_rdmux2* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %8, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %8, align 8
  br label %141

141:                                              ; preds = %52
  %142 = load i64, i64* %11, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %11, align 8
  br label %46

144:                                              ; preds = %46
  %145 = load i64*, i64** %17, align 8
  %146 = load i64**, i64*** %6, align 8
  store i64* %145, i64** %146, align 8
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
