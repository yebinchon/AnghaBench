; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_passthru_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_passthru_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.nvme_ns = type { i32 }

@NVME_CMD_EFFECTS_CSUPP = common dso_local global i32 0, align 4
@NVME_CMD_EFFECTS_LBCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"IO command:%02x has unhandled effects:%08x\0A\00", align 1
@NVME_CMD_EFFECTS_CSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, %struct.nvme_ns*, i64)* @nvme_passthru_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_passthru_start(%struct.nvme_ctrl* %0, %struct.nvme_ns* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %5, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %10 = icmp ne %struct.nvme_ns* %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %3
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %18 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %16, %11
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NVME_CMD_EFFECTS_CSUPP, align 4
  %29 = load i32, i32* @NVME_CMD_EFFECTS_LBCC, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %36 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %26
  store i32 0, i32* %4, align 4
  br label %91

42:                                               ; preds = %3
  %43 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %44 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %49 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %47, %42
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @nvme_known_admin_effects(i64 %58)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @NVME_CMD_EFFECTS_LBCC, align 4
  %64 = load i32, i32* @NVME_CMD_EFFECTS_CSE_MASK, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %57
  %69 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %70 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %69, i32 0, i32 1
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %73 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %78 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call i32 @nvme_mpath_start_freeze(%struct.TYPE_5__* %79)
  %81 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %82 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = call i32 @nvme_mpath_wait_freeze(%struct.TYPE_5__* %83)
  %85 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %86 = call i32 @nvme_start_freeze(%struct.nvme_ctrl* %85)
  %87 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %88 = call i32 @nvme_wait_freeze(%struct.nvme_ctrl* %87)
  br label %89

89:                                               ; preds = %68, %57
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %41
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i32) #1

declare dso_local i32 @nvme_known_admin_effects(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvme_mpath_start_freeze(%struct.TYPE_5__*) #1

declare dso_local i32 @nvme_mpath_wait_freeze(%struct.TYPE_5__*) #1

declare dso_local i32 @nvme_start_freeze(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_wait_freeze(%struct.nvme_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
