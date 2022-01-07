; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_sata_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_sata_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ipr_sata_port* }
%struct.ipr_sata_port = type { %struct.ipr_resource_entry*, %struct.ipr_ioa_cfg* }
%struct.ipr_resource_entry = type { i32 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@ipr_match_res = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@IPR_SHUTDOWN_ABBREV = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @ipr_sata_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_sata_reset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ipr_sata_port*, align 8
  %8 = alloca %struct.ipr_ioa_cfg*, align 8
  %9 = alloca %struct.ipr_resource_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %16, align 8
  store %struct.ipr_sata_port* %17, %struct.ipr_sata_port** %7, align 8
  %18 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %7, align 8
  %19 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %18, i32 0, i32 1
  %20 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %19, align 8
  store %struct.ipr_ioa_cfg* %20, %struct.ipr_ioa_cfg** %8, align 8
  store i64 0, i64* %10, align 8
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @ENTER, align 4
  %24 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %25 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @spin_lock_irqsave(i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %36, %3
  %32 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %33 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %38 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32 %41, i64 %42)
  %44 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %45 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %48 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @wait_event(i32 %46, i32 %52)
  %54 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %55 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @spin_lock_irqsave(i32 %58, i64 %59)
  br label %31

61:                                               ; preds = %31
  %62 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %7, align 8
  %63 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %62, i32 0, i32 0
  %64 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %63, align 8
  store %struct.ipr_resource_entry* %64, %struct.ipr_resource_entry** %9, align 8
  %65 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %66 = icmp ne %struct.ipr_resource_entry* %65, null
  br i1 %66, label %67, label %118

67:                                               ; preds = %61
  %68 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %69 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %70 = call i32 @ipr_device_reset(%struct.ipr_ioa_cfg* %68, %struct.ipr_resource_entry* %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %72 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %76 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32 %79, i64 %80)
  %82 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %83 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %84 = load i32, i32* @ipr_match_res, align 4
  %85 = call i32 @ipr_wait_for_ops(%struct.ipr_ioa_cfg* %82, %struct.ipr_resource_entry* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %67
  %90 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %91 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @spin_lock_irqsave(i32 %94, i64 %95)
  %97 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %98 = load i32, i32* @IPR_SHUTDOWN_ABBREV, align 4
  %99 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %97, i32 %98)
  %100 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %101 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32 %104, i64 %105)
  %107 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %108 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %111 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @wait_event(i32 %109, i32 %115)
  br label %117

117:                                              ; preds = %89, %67
  br label %126

118:                                              ; preds = %61
  %119 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %120 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32 %123, i64 %124)
  br label %126

126:                                              ; preds = %118, %117
  %127 = load i32, i32* @LEAVE, align 4
  %128 = load i32, i32* %11, align 4
  ret i32 %128
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @ipr_device_reset(%struct.ipr_ioa_cfg*, %struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_wait_for_ops(%struct.ipr_ioa_cfg*, %struct.ipr_resource_entry*, i32) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
