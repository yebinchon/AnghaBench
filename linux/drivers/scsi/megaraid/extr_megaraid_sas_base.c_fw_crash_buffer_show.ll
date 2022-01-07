; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_fw_crash_buffer_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_fw_crash_buffer_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.megasas_instance = type { i64, i64, i64, i32, i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CRASH_DMA_BUF_SIZE = common dso_local global i64 0, align 8
@AVAILABLE = common dso_local global i64 0, align 8
@COPYING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Firmware crash dump is not available\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Firmware crash dump offset is out of range\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @fw_crash_buffer_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fw_crash_buffer_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.megasas_instance*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %8, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.megasas_instance*
  store %struct.megasas_instance* %21, %struct.megasas_instance** %9, align 8
  %22 = load i64, i64* @CRASH_DMA_BUF_SIZE, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %24 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %23, i32 0, i32 3
  %25 = load i64, i64* %14, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %28 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %15, align 8
  %30 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %31 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %3
  %35 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %36 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AVAILABLE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %58, label %40

40:                                               ; preds = %34
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %42 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @COPYING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %48 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %53 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %52, i32 0, i32 3
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i64, i64* @EINVAL, align 8
  %57 = sub i64 0, %56
  store i64 %57, i64* %4, align 8
  br label %130

58:                                               ; preds = %40, %34, %3
  %59 = load i64, i64* %15, align 8
  %60 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %61 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = mul i64 %62, %63
  %65 = icmp ugt i64 %59, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %68 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %73 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %72, i32 0, i32 3
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  store i64 0, i64* %4, align 8
  br label %130

76:                                               ; preds = %58
  %77 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %78 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = mul i64 %79, %80
  %82 = load i64, i64* %15, align 8
  %83 = sub i64 %81, %82
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %11, align 8
  %87 = urem i64 %85, %86
  %88 = sub i64 %84, %87
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = load i64, i64* %12, align 8
  br label %96

94:                                               ; preds = %76
  %95 = load i64, i64* %10, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i64 [ %93, %92 ], [ %95, %94 ]
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @PAGE_SIZE, align 8
  %100 = icmp uge i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i64, i64* @PAGE_SIZE, align 8
  %103 = sub i64 %102, 1
  br label %106

104:                                              ; preds = %96
  %105 = load i64, i64* %10, align 8
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i64 [ %103, %101 ], [ %105, %104 ]
  store i64 %107, i64* %10, align 8
  %108 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %109 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %108, i32 0, i32 4
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %11, align 8
  %113 = udiv i64 %111, %112
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %11, align 8
  %118 = urem i64 %116, %117
  %119 = add i64 %115, %118
  store i64 %119, i64* %13, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = load i64, i64* %13, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @memcpy(i8* %120, i8* %122, i64 %123)
  %125 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %126 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %125, i32 0, i32 3
  %127 = load i64, i64* %14, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  %129 = load i64, i64* %10, align 8
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %106, %66, %46
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
