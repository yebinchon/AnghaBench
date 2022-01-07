; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_store_diagnostics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_store_diagnostics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@IPR_SHUTDOWN_NORMAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ipr_store_diagnostics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_store_diagnostics(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.ipr_ioa_cfg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %10, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %19, %struct.ipr_ioa_cfg** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load i64, i64* %9, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %23 = call i32 @capable(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %134

28:                                               ; preds = %4
  %29 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %30 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_lock_irqsave(i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %41, %28
  %37 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %38 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %43 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32 %46, i64 %47)
  %49 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %50 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %53 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @wait_event(i32 %51, i32 %57)
  %59 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %60 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @spin_lock_irqsave(i32 %63, i64 %64)
  br label %36

66:                                               ; preds = %36
  %67 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %68 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %70 = load i32, i32* @IPR_SHUTDOWN_NORMAL, align 4
  %71 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %69, i32 %70)
  %72 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %73 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %66
  %77 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %78 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32 %81, i64 %82)
  %84 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %85 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %88 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @wait_event(i32 %86, i32 %92)
  %94 = call i32 @msleep(i32 1000)
  br label %105

95:                                               ; preds = %66
  %96 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %97 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32 %100, i64 %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %134

105:                                              ; preds = %76
  %106 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %107 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @spin_lock_irqsave(i32 %110, i64 %111)
  %113 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %114 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %105
  %118 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %119 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %105
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %127 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32 %130, i64 %131)
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %125, %95, %25
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
