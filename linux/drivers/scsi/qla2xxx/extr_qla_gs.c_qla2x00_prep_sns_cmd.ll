; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_prep_sns_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_prep_sns_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sns_cmd_pkt = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.qla_hw_data* }
%struct.TYPE_8__ = type { i32 }
%struct.qla_hw_data = type { i32, %struct.sns_cmd_pkt* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sns_cmd_pkt* (%struct.TYPE_9__*, i32, i32, i32)* @qla2x00_prep_sns_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sns_cmd_pkt* @qla2x00_prep_sns_cmd(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sns_cmd_pkt*, align 8
  %11 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %11, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 1
  %17 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %16, align 8
  store %struct.sns_cmd_pkt* %17, %struct.sns_cmd_pkt** %10, align 8
  %18 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %10, align 8
  %19 = call i32 @memset(%struct.sns_cmd_pkt* %18, i32 0, i32 40)
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %10, align 8
  %25 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  store i8* %23, i8** %27, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %10, align 8
  %32 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = call i32 @put_unaligned_le64(i32 %30, i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %10, align 8
  %39 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i8* %37, i8** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %10, align 8
  %45 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 16
  %50 = sdiv i32 %49, 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %10, align 8
  %54 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* %52, i8** %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %10, align 8
  ret %struct.sns_cmd_pkt* %62
}

declare dso_local i32 @memset(%struct.sns_cmd_pkt*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
