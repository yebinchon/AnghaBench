; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_port.c_sas_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_port.c_sas_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_port = type { i32, i32, %struct.sas_ha_struct*, i32, i32, i32, i32, i32, i32 }
%struct.sas_ha_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_sas_port*, %struct.sas_ha_struct*, i32)* @sas_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_init_port(%struct.asd_sas_port* %0, %struct.sas_ha_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.asd_sas_port*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.asd_sas_port* %0, %struct.asd_sas_port** %4, align 8
  store %struct.sas_ha_struct* %1, %struct.sas_ha_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %8 = call i32 @memset(%struct.asd_sas_port* %7, i32 0, i32 40)
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %11 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %13 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %12, i32 0, i32 8
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %16 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %15, i32 0, i32 7
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %19 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %18, i32 0, i32 6
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %22 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %21, i32 0, i32 5
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %25 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %24, i32 0, i32 4
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %28 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %31 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %32 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %31, i32 0, i32 2
  store %struct.sas_ha_struct* %30, %struct.sas_ha_struct** %32, align 8
  %33 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %34 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_init(i32* %34)
  ret void
}

declare dso_local i32 @memset(%struct.asd_sas_port*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
