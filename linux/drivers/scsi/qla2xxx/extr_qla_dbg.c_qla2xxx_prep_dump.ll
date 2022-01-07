; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla2xxx_prep_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla2xxx_prep_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.qla2xxx_fw_dump = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*, %struct.qla2xxx_fw_dump*)* @qla2xxx_prep_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2xxx_prep_dump(%struct.qla_hw_data* %0, %struct.qla2xxx_fw_dump* %1) #0 {
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.qla2xxx_fw_dump*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store %struct.qla2xxx_fw_dump* %1, %struct.qla2xxx_fw_dump** %4, align 8
  %5 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %6 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @htonl(i32 %7)
  %9 = load %struct.qla2xxx_fw_dump*, %struct.qla2xxx_fw_dump** %4, align 8
  %10 = getelementptr inbounds %struct.qla2xxx_fw_dump, %struct.qla2xxx_fw_dump* %9, i32 0, i32 7
  store i8* %8, i8** %10, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @htonl(i32 %13)
  %15 = load %struct.qla2xxx_fw_dump*, %struct.qla2xxx_fw_dump** %4, align 8
  %16 = getelementptr inbounds %struct.qla2xxx_fw_dump, %struct.qla2xxx_fw_dump* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @htonl(i32 %19)
  %21 = load %struct.qla2xxx_fw_dump*, %struct.qla2xxx_fw_dump** %4, align 8
  %22 = getelementptr inbounds %struct.qla2xxx_fw_dump, %struct.qla2xxx_fw_dump* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @htonl(i32 %25)
  %27 = load %struct.qla2xxx_fw_dump*, %struct.qla2xxx_fw_dump** %4, align 8
  %28 = getelementptr inbounds %struct.qla2xxx_fw_dump, %struct.qla2xxx_fw_dump* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @htonl(i32 %33)
  %35 = load %struct.qla2xxx_fw_dump*, %struct.qla2xxx_fw_dump** %4, align 8
  %36 = getelementptr inbounds %struct.qla2xxx_fw_dump, %struct.qla2xxx_fw_dump* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @htonl(i32 %41)
  %43 = load %struct.qla2xxx_fw_dump*, %struct.qla2xxx_fw_dump** %4, align 8
  %44 = getelementptr inbounds %struct.qla2xxx_fw_dump, %struct.qla2xxx_fw_dump* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @htonl(i32 %49)
  %51 = load %struct.qla2xxx_fw_dump*, %struct.qla2xxx_fw_dump** %4, align 8
  %52 = getelementptr inbounds %struct.qla2xxx_fw_dump, %struct.qla2xxx_fw_dump* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @htonl(i32 %57)
  %59 = load %struct.qla2xxx_fw_dump*, %struct.qla2xxx_fw_dump** %4, align 8
  %60 = getelementptr inbounds %struct.qla2xxx_fw_dump, %struct.qla2xxx_fw_dump* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  ret void
}

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
