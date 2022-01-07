; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_rom_fast_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_rom_fast_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: qla4_82xx_rom_lock failed\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, i32*)* @qla4_82xx_rom_fast_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_82xx_rom_fast_read(%struct.scsi_qla_host* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %19, %3
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %12 = call i64 @qla4_82xx_rom_lock(%struct.scsi_qla_host* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 50000
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = call i32 @udelay(i32 100)
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %10

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 50000
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @KERN_WARNING, align 4
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %29 = load i32, i32* @DRIVER_NAME, align 4
  %30 = call i32 @ql4_printk(i32 %27, %struct.scsi_qla_host* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %4, align 4
  br label %39

31:                                               ; preds = %23
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @qla4_82xx_do_rom_fast_read(%struct.scsi_qla_host* %32, i32 %33, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %37 = call i32 @qla4_82xx_rom_unlock(%struct.scsi_qla_host* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %26
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @qla4_82xx_rom_lock(%struct.scsi_qla_host*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i32) #1

declare dso_local i32 @qla4_82xx_do_rom_fast_read(%struct.scsi_qla_host*, i32, i32*) #1

declare dso_local i32 @qla4_82xx_rom_unlock(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
