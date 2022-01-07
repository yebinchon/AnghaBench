; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_store_adapter_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_store_adapter_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.ipr_ioa_cfg = type { i32, i32, i32, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@IPR_INIT_HRRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"online\00", align 1
@IPR_SHUTDOWN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ipr_store_adapter_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_store_adapter_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.ipr_ioa_cfg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %20, %struct.ipr_ioa_cfg** %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %24 = call i32 @capable(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %111

29:                                               ; preds = %4
  %30 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %31 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @spin_lock_irqsave(i32 %34, i64 %35)
  %37 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %38 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %37, i32 0, i32 6
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %29
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %92, label %49

49:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %80, %49
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %53 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %58 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %57, i32 0, i32 6
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %66 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %65, i32 0, i32 6
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %73 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %72, i32 0, i32 6
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  br label %80

80:                                               ; preds = %56
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %50

83:                                               ; preds = %50
  %84 = call i32 (...) @wmb()
  %85 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %86 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %88 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %90 = load i32, i32* @IPR_SHUTDOWN_NONE, align 4
  %91 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %45, %29
  %93 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %94 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32 %97, i64 %98)
  %100 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %101 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %104 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @wait_event(i32 %102, i32 %108)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %92, %26
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
