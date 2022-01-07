; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }
%union.nvme_result = type { i32 }

@NVME_QID_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32, i32, i32, i8*, i64, i32*)* @nvme_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_features(%struct.nvme_ctrl* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.nvme_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.nvme_command, align 8
  %16 = alloca %union.nvme_result, align 4
  %17 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = call i32 @memset(%struct.nvme_command* %15, i32 0, i32 24)
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %15, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %8, align 8
  %31 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i32, i32* @NVME_QID_ANY, align 4
  %36 = call i32 @__nvme_submit_sync_cmd(i32 %32, %struct.nvme_command* %15, %union.nvme_result* %16, i8* %33, i64 %34, i32 0, i32 %35, i32 0, i32 0, i32 0)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %7
  %40 = load i32*, i32** %14, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = bitcast %union.nvme_result* %16 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = load i32*, i32** %14, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %39, %7
  %48 = load i32, i32* %17, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @__nvme_submit_sync_cmd(i32, %struct.nvme_command*, %union.nvme_result*, i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
