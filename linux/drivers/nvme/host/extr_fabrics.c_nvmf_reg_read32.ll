; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_reg_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_reg_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%union.nvme_result = type { i32 }

@nvme_fabrics_command = common dso_local global i32 0, align 4
@nvme_fabrics_type_property_get = common dso_local global i32 0, align 4
@NVME_QID_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Property Get error: %d, offset %#x\0A\00", align 1
@NVME_SC_DNR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmf_reg_read32(%struct.nvme_ctrl* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nvme_command, align 4
  %8 = alloca %union.nvme_result, align 4
  %9 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = call i32 @memset(%struct.nvme_command* %7, i32 0, i32 12)
  %11 = load i32, i32* @nvme_fabrics_command, align 4
  %12 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @nvme_fabrics_type_property_get, align 4
  %15 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NVME_QID_ANY, align 4
  %25 = call i32 @__nvme_submit_sync_cmd(i32 %23, %struct.nvme_command* %7, %union.nvme_result* %8, i32* null, i32 0, i32 0, i32 %24, i32 0, i32 0, i32 0)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = bitcast %union.nvme_result* %8 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le64_to_cpu(i32 %30)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @NVME_SC_DNR, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  br label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = phi i32 [ %49, %45 ], [ %51, %50 ]
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %33
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @__nvme_submit_sync_cmd(i32, %struct.nvme_command*, %union.nvme_result*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
