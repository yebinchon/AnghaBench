; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_init_aen_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_init_aen_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i32*, %struct.TYPE_6__*, %struct.nvme_fc_fcp_op* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nvme_fc_fcp_op = type { %struct.TYPE_7__, i32, %struct.nvme_fc_cmd_iu }
%struct.TYPE_7__ = type { i8* }
%struct.nvme_fc_cmd_iu = type { %struct.nvme_command }
%struct.nvme_command = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.request = type { i32 }

@NVME_NR_AEN_COMMANDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVME_AQ_BLK_MQ_DEPTH = common dso_local global i64 0, align 8
@FCOP_FLAGS_AEN = common dso_local global i32 0, align 4
@nvme_admin_async_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*)* @nvme_fc_init_aen_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_init_aen_ops(%struct.nvme_fc_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_fc_ctrl*, align 8
  %4 = alloca %struct.nvme_fc_fcp_op*, align 8
  %5 = alloca %struct.nvme_fc_cmd_iu*, align 8
  %6 = alloca %struct.nvme_command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %3, align 8
  %10 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %10, i32 0, i32 2
  %12 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %11, align 8
  store %struct.nvme_fc_fcp_op* %12, %struct.nvme_fc_fcp_op** %4, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %75, %1
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NVME_NR_AEN_COMMANDS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %80

17:                                               ; preds = %13
  %18 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 %24, i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %81

32:                                               ; preds = %17
  %33 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %4, align 8
  %34 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %33, i32 0, i32 2
  store %struct.nvme_fc_cmd_iu* %34, %struct.nvme_fc_cmd_iu** %5, align 8
  %35 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %5, align 8
  %36 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %35, i32 0, i32 0
  store %struct.nvme_command* %36, %struct.nvme_command** %6, align 8
  %37 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %38 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %39 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %4, align 8
  %43 = load i64, i64* @NVME_AQ_BLK_MQ_DEPTH, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @__nvme_fc_init_request(%struct.nvme_fc_ctrl* %37, i32* %41, %struct.nvme_fc_fcp_op* %42, %struct.request* null, i64 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %32
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @kfree(i8* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %81

54:                                               ; preds = %32
  %55 = load i32, i32* @FCOP_FLAGS_AEN, align 4
  %56 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %4, align 8
  %57 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %4, align 8
  %60 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load %struct.nvme_command*, %struct.nvme_command** %6, align 8
  %63 = call i32 @memset(%struct.nvme_command* %62, i32 0, i32 16)
  %64 = load i32, i32* @nvme_admin_async_event, align 4
  %65 = load %struct.nvme_command*, %struct.nvme_command** %6, align 8
  %66 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load i64, i64* @NVME_AQ_BLK_MQ_DEPTH, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.nvme_command*, %struct.nvme_command** %6, align 8
  %73 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %4, align 8
  %79 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %78, i32 1
  store %struct.nvme_fc_fcp_op* %79, %struct.nvme_fc_fcp_op** %4, align 8
  br label %13

80:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %50, %29
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @__nvme_fc_init_request(%struct.nvme_fc_ctrl*, i32*, %struct.nvme_fc_fcp_op*, %struct.request*, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
