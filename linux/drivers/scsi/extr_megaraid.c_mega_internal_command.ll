; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_mega_internal_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_mega_internal_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }

@CMDID_INT_CMDS = common dso_local global i32 0, align 4
@SCB_ACTIVE = common dso_local global i32 0, align 4
@SCB_PENDQ = common dso_local global i32 0, align 4
@MEGA_MBOXCMD_PASSTHRU = common dso_local global i64 0, align 8
@trace_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"cmd [%x, %x, %x] status:[%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32*)* @mega_internal_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mega_internal_command(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 7
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %8, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %16 = call i32 @memset(%struct.TYPE_11__* %15, i32 0, i32 24)
  %17 = load i32, i32* @CMDID_INT_CMDS, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @SCB_ACTIVE, align 4
  %21 = load i32, i32* @SCB_PENDQ, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = call i32 @memcpy(i32 %29, %struct.TYPE_12__* %30, i32 24)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MEGA_MBOXCMD_PASSTHRU, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  br label %41

41:                                               ; preds = %37, %3
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 6
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 5
  %53 = call i64 @atomic_read(i32* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @mega_runpendq(%struct.TYPE_13__* %56)
  br label %58

58:                                               ; preds = %55, %41
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = call i32 @wait_for_completion(i32* %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %9, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %58
  %74 = load i64, i64* @trace_level, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @dev_info(i32* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %83, i32 %86, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %76, %73, %58
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mega_runpendq(%struct.TYPE_13__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
