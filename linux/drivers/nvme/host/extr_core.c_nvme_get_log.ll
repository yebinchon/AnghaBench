; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_get_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_get_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@nvme_admin_get_log_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_get_log(%struct.nvme_ctrl* %0, i32 %1, i8* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.nvme_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nvme_command, align 8
  %16 = alloca i64, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = bitcast %struct.nvme_command* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 64, i1 false)
  %18 = load i64, i64* %13, align 8
  %19 = udiv i64 %18, 4
  %20 = sub i64 %19, 1
  store i64 %20, i64* %16, align 8
  %21 = load i32, i32* @nvme_admin_get_log_page, align 4
  %22 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %16, align 8
  %35 = and i64 %34, 65535
  %36 = call i8* @cpu_to_le16(i64 %35)
  %37 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %16, align 8
  %40 = lshr i64 %39, 16
  %41 = call i8* @cpu_to_le16(i64 %40)
  %42 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @lower_32_bits(i32 %44)
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @upper_32_bits(i32 %49)
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %8, align 8
  %55 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @nvme_submit_sync_cmd(i32 %56, %struct.nvme_command* %15, i8* %57, i64 %58)
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i8* @cpu_to_le16(i64) #2

declare dso_local i32 @lower_32_bits(i32) #2

declare dso_local i32 @upper_32_bits(i32) #2

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
