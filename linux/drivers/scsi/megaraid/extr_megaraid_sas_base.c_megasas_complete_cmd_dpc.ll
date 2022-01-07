; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_complete_cmd_dpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_complete_cmd_dpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_cmd = type { i32 }
%struct.megasas_instance = type { i64, i32, i32*, %struct.megasas_cmd**, %struct.TYPE_2__*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@MEGASAS_HW_CRITICAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unexpected context value %x\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @megasas_complete_cmd_dpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_complete_cmd_dpc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.megasas_cmd*, align 8
  %7 = alloca %struct.megasas_instance*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.megasas_instance*
  store %struct.megasas_instance* %10, %struct.megasas_instance** %7, align 8
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 7
  %13 = call i64 @atomic_read(i32* %12)
  %14 = load i64, i64* @MEGASAS_HW_CRITICAL_ERROR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %90

17:                                               ; preds = %1
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %23 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  store i64 %26, i64* %3, align 8
  %27 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %28 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %77, %17
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %32
  %37 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %38 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @le32_to_cpu(i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %46 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %36
  %50 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %51 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %49, %36
  %58 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %59 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %58, i32 0, i32 3
  %60 = load %struct.megasas_cmd**, %struct.megasas_cmd*** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.megasas_cmd*, %struct.megasas_cmd** %60, i64 %61
  %63 = load %struct.megasas_cmd*, %struct.megasas_cmd** %62, align 8
  store %struct.megasas_cmd* %63, %struct.megasas_cmd** %6, align 8
  %64 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %65 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %66 = load i32, i32* @DID_OK, align 4
  %67 = call i32 @megasas_complete_cmd(%struct.megasas_instance* %64, %struct.megasas_cmd* %65, i32 %66)
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %72 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  %75 = icmp eq i64 %70, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  store i64 0, i64* %4, align 8
  br label %77

77:                                               ; preds = %76, %57
  br label %32

78:                                               ; preds = %32
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @cpu_to_le32(i64 %79)
  %81 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %82 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  store i32 %80, i32* %83, align 4
  %84 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %85 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %84, i32 0, i32 1
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %89 = call i32 @megasas_check_and_restore_queue_depth(%struct.megasas_instance* %88)
  br label %90

90:                                               ; preds = %78, %16
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @megasas_complete_cmd(%struct.megasas_instance*, %struct.megasas_cmd*, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @megasas_check_and_restore_queue_depth(%struct.megasas_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
