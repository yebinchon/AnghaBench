; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_punit_ipc.c_intel_punit_ipc_simple_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_punit_ipc.c_intel_punit_ipc_simple_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@punit_ipcdev = common dso_local global %struct.TYPE_5__* null, align 8
@IPC_PUNIT_CMD_TYPE_MASK = common dso_local global i32 0, align 4
@IPC_TYPE_OFFSET = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@CMD_PARA2_SHIFT = common dso_local global i32 0, align 4
@CMD_PARA1_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_punit_ipc_simple_command(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @punit_ipcdev, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = call i32 @reinit_completion(i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IPC_PUNIT_CMD_TYPE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @IPC_TYPE_OFFSET, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IPC_PUNIT_CMD_TYPE_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @CMD_RUN, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @CMD_PARA2_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CMD_PARA1_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ipc_write_cmd(%struct.TYPE_5__* %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @intel_punit_ipc_check_status(%struct.TYPE_5__* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ipc_write_cmd(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @intel_punit_ipc_check_status(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
