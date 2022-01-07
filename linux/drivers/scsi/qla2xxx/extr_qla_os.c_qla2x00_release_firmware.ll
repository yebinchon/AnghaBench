; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_release_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_release_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_blob = type { i32, i64 }

@qla_fw_lock = common dso_local global i32 0, align 4
@qla_fw_blobs = common dso_local global %struct.fw_blob* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @qla2x00_release_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_release_firmware() #0 {
  %1 = alloca %struct.fw_blob*, align 8
  %2 = call i32 @mutex_lock(i32* @qla_fw_lock)
  %3 = load %struct.fw_blob*, %struct.fw_blob** @qla_fw_blobs, align 8
  store %struct.fw_blob* %3, %struct.fw_blob** %1, align 8
  br label %4

4:                                                ; preds = %14, %0
  %5 = load %struct.fw_blob*, %struct.fw_blob** %1, align 8
  %6 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %struct.fw_blob*, %struct.fw_blob** %1, align 8
  %11 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @release_firmware(i32 %12)
  br label %14

14:                                               ; preds = %9
  %15 = load %struct.fw_blob*, %struct.fw_blob** %1, align 8
  %16 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %15, i32 1
  store %struct.fw_blob* %16, %struct.fw_blob** %1, align 8
  br label %4

17:                                               ; preds = %4
  %18 = call i32 @mutex_unlock(i32* @qla_fw_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
