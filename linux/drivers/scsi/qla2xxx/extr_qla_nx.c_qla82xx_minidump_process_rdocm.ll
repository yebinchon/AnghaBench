; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_rdocm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_rdocm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64 }
%struct.qla82xx_md_entry_rdocm = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64**)* @qla82xx_minidump_process_rdocm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_minidump_process_rdocm(%struct.TYPE_3__* %0, i32* %1, i64** %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.qla82xx_md_entry_rdocm*, align 8
  %14 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64** %2, i64*** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  store %struct.qla_hw_data* %17, %struct.qla_hw_data** %7, align 8
  %18 = load i64**, i64*** %6, align 8
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %14, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to %struct.qla82xx_md_entry_rdocm*
  store %struct.qla82xx_md_entry_rdocm* %21, %struct.qla82xx_md_entry_rdocm** %13, align 8
  %22 = load %struct.qla82xx_md_entry_rdocm*, %struct.qla82xx_md_entry_rdocm** %13, align 8
  %23 = getelementptr inbounds %struct.qla82xx_md_entry_rdocm, %struct.qla82xx_md_entry_rdocm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.qla82xx_md_entry_rdocm*, %struct.qla82xx_md_entry_rdocm** %13, align 8
  %26 = getelementptr inbounds %struct.qla82xx_md_entry_rdocm, %struct.qla82xx_md_entry_rdocm* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.qla82xx_md_entry_rdocm*, %struct.qla82xx_md_entry_rdocm** %13, align 8
  %29 = getelementptr inbounds %struct.qla82xx_md_entry_rdocm, %struct.qla82xx_md_entry_rdocm* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %50, %3
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = call i64 @RD_REG_DWORD(i64 %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @cpu_to_le32(i64 %42)
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %14, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %14, align 8
  store i64 %44, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %35
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %11, align 8
  br label %31

53:                                               ; preds = %31
  %54 = load i64*, i64** %14, align 8
  %55 = load i64**, i64*** %6, align 8
  store i64* %54, i64** %55, align 8
  ret void
}

declare dso_local i64 @RD_REG_DWORD(i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
