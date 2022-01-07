; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_port*, i32 }
%struct.asd_port = type { i64, i64, i32, i32 }

@ASD_MAX_PHYS = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_init_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_init_ports(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_port*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %5 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %6 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %5, i32 0, i32 1
  %7 = call i32 @spin_lock_init(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ASD_MAX_PHYS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %14 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %13, i32 0, i32 0
  %15 = load %struct.asd_port*, %struct.asd_port** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.asd_port, %struct.asd_port* %15, i64 %17
  store %struct.asd_port* %18, %struct.asd_port** %4, align 8
  %19 = load %struct.asd_port*, %struct.asd_port** %4, align 8
  %20 = getelementptr inbounds %struct.asd_port, %struct.asd_port* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %23 = call i32 @memset(i32 %21, i32 0, i32 %22)
  %24 = load %struct.asd_port*, %struct.asd_port** %4, align 8
  %25 = getelementptr inbounds %struct.asd_port, %struct.asd_port* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %28 = call i32 @memset(i32 %26, i32 0, i32 %27)
  %29 = load %struct.asd_port*, %struct.asd_port** %4, align 8
  %30 = getelementptr inbounds %struct.asd_port, %struct.asd_port* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.asd_port*, %struct.asd_port** %4, align 8
  %32 = getelementptr inbounds %struct.asd_port, %struct.asd_port* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
