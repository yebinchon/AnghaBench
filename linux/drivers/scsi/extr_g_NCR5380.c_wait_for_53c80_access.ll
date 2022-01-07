; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_g_NCR5380.c_wait_for_53c80_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_g_NCR5380.c_wait_for_53c80_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NCR5380_hostdata = type { i64, i32, i32 }

@BOARD_DTC3181E = common dso_local global i64 0, align 8
@CSR_53C80_REG = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"53c80 registers not accessible, device will be reset\0A\00", align 1
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NCR5380_hostdata*)* @wait_for_53c80_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_53c80_access(%struct.NCR5380_hostdata* %0) #0 {
  %2 = alloca %struct.NCR5380_hostdata*, align 8
  %3 = alloca i32, align 4
  store %struct.NCR5380_hostdata* %0, %struct.NCR5380_hostdata** %2, align 8
  store i32 10000, i32* %3, align 4
  br label %4

4:                                                ; preds = %22, %1
  %5 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %2, align 8
  %6 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BOARD_DTC3181E, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = call i32 @udelay(i32 4)
  br label %12

12:                                               ; preds = %10, %4
  %13 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %2, align 8
  %14 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @NCR5380_read(i32 %15)
  %17 = load i32, i32* @CSR_53C80_REG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %42

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %3, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %4, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %2, align 8
  %29 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @scmd_printk(i32 %27, i32 %30, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %2, align 8
  %33 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CSR_RESET, align 4
  %36 = call i32 @NCR5380_write(i32 %34, i32 %35)
  %37 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %2, align 8
  %38 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CSR_BASE, align 4
  %41 = call i32 @NCR5380_write(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @NCR5380_read(i32) #1

declare dso_local i32 @scmd_printk(i32, i32, i8*) #1

declare dso_local i32 @NCR5380_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
