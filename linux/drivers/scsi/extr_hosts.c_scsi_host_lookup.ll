; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hosts.c_scsi_host_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hosts.c_scsi_host_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.device = type { i32 }

@shost_class = common dso_local global i32 0, align 4
@__scsi_host_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Scsi_Host* @scsi_host_lookup(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store i16 %0, i16* %2, align 2
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %4, align 8
  %5 = load i32, i32* @__scsi_host_match, align 4
  %6 = call %struct.device* @class_find_device(i32* @shost_class, i32* null, i16* %2, i32 %5)
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @class_to_shost(%struct.device* %10)
  %12 = call %struct.Scsi_Host* @scsi_host_get(i32 %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %4, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @put_device(%struct.device* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  ret %struct.Scsi_Host* %16
}

declare dso_local %struct.device* @class_find_device(i32*, i32*, i16*, i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_get(i32) #1

declare dso_local i32 @class_to_shost(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
