; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_return_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_return_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, i32, %struct.TYPE_7__, i32, %struct.fusion_context* }
%struct.TYPE_7__ = type { i32 }
%struct.fusion_context = type { %struct.megasas_cmd_fusion** }
%struct.megasas_cmd_fusion = type { i32 }
%struct.megasas_cmd = type { i32, i64, i32, %struct.TYPE_8__*, i64, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@DRV_DCMD_POLLED_MODE = common dso_local global i32 0, align 4
@reset_devices = common dso_local global i64 0, align 8
@MFI_CMD_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_return_cmd(%struct.megasas_instance* %0, %struct.megasas_cmd* %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.megasas_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.megasas_cmd_fusion*, align 8
  %8 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store %struct.megasas_cmd* %1, %struct.megasas_cmd** %4, align 8
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %10 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %9, i32 0, i32 4
  %11 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  store %struct.fusion_context* %11, %struct.fusion_context** %8, align 8
  %12 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DRV_DCMD_POLLED_MODE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.fusion_context*, %struct.fusion_context** %8, align 8
  %25 = icmp ne %struct.fusion_context* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %28 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %29, %32
  store i64 %33, i64* %6, align 8
  %34 = load %struct.fusion_context*, %struct.fusion_context** %8, align 8
  %35 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %34, i32 0, i32 0
  %36 = load %struct.megasas_cmd_fusion**, %struct.megasas_cmd_fusion*** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %36, i64 %37
  %39 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %38, align 8
  store %struct.megasas_cmd_fusion* %39, %struct.megasas_cmd_fusion** %7, align 8
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %41 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %7, align 8
  %42 = call i32 @megasas_return_cmd_fusion(%struct.megasas_instance* %40, %struct.megasas_cmd_fusion* %41)
  br label %43

43:                                               ; preds = %26, %19
  %44 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %44, i32 0, i32 5
  store i32* null, i32** %45, align 8
  %46 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %54 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memset(%struct.TYPE_8__* %52, i32 0, i32 %55)
  %57 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @cpu_to_le32(i64 %59)
  %61 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %61, i32 0, i32 3
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 4
  %66 = load %struct.fusion_context*, %struct.fusion_context** %8, align 8
  %67 = icmp ne %struct.fusion_context* %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %43
  %69 = load i64, i64* @reset_devices, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* @MFI_CMD_INVALID, align 4
  %73 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %68, %43
  %79 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %80 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %79, i32 0, i32 2
  %81 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %82 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @list_add(i32* %80, i32 %84)
  %86 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %87 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %86, i32 0, i32 1
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %78, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @megasas_return_cmd_fusion(%struct.megasas_instance*, %struct.megasas_cmd_fusion*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @list_add(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
