; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_reg_write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_reg_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }

@nvme_fabrics_command = common dso_local global i32 0, align 4
@nvme_fabrics_type_property_set = common dso_local global i32 0, align 4
@NVME_QID_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Property Set error: %d, offset %#x\0A\00", align 1
@NVME_SC_DNR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmf_reg_write32(%struct.nvme_ctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_command, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @memset(%struct.nvme_command* %7, i32 0, i32 24)
  %10 = load i32, i32* @nvme_fabrics_command, align 4
  %11 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @nvme_fabrics_type_property_set, align 4
  %14 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  %20 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @cpu_to_le64(i32 %22)
  %24 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NVME_QID_ANY, align 4
  %30 = call i32 @__nvme_submit_sync_cmd(i32 %28, %struct.nvme_command* %7, i32* null, i32* null, i32 0, i32 0, i32 %29, i32 0, i32 0, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %3
  %35 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %36 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @NVME_SC_DNR, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  br label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi i32 [ %44, %40 ], [ %46, %45 ]
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %3
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @__nvme_submit_sync_cmd(i32, %struct.nvme_command*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
