; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_flashnode_match_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_flashnode_match_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iscsi_bus_flash_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @flashnode_match_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashnode_match_index(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iscsi_bus_flash_session*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.iscsi_bus_flash_session* null, %struct.iscsi_bus_flash_session** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @iscsi_flashnode_bus_match(%struct.device* %7, i32* null)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %23

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.iscsi_bus_flash_session* @iscsi_dev_to_flash_session(%struct.device* %12)
  store %struct.iscsi_bus_flash_session* %13, %struct.iscsi_bus_flash_session** %5, align 8
  %14 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %11, %10
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @iscsi_flashnode_bus_match(%struct.device*, i32*) #1

declare dso_local %struct.iscsi_bus_flash_session* @iscsi_dev_to_flash_session(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
