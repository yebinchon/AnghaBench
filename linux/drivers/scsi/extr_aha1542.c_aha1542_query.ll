; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.aha1542_hostdata = type { i32 }

@DF = common dso_local global i32 0, align 4
@CMD_INQUIRY = common dso_local global i32 0, align 4
@INTRMASK = common dso_local global i32 0, align 4
@HACC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error querying card type\0A\00", align 1
@BIOS_TRANSLATION_6432 = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Emulation mode not supported for AHA-1740 hardware, use aha1740 driver instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @aha1542_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha1542_query(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.aha1542_hostdata*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = call %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host* %7)
  store %struct.aha1542_hostdata* %8, %struct.aha1542_hostdata** %4, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @STATUS(i32 %11)
  %13 = call i32 @inb(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DATA(i32 %21)
  %23 = call i32 @inb(i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CMD_INQUIRY, align 4
  %29 = call i32 @aha1542_outb(i32 %27, i32 %28)
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %34 = call i32 @aha1542_in(i32 %32, i32* %33, i32 4, i32 0)
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @INTRFLAGS(i32 %37)
  %39 = load i32, i32* @INTRMASK, align 4
  %40 = load i32, i32* @HACC, align 4
  %41 = call i32 @wait_mask(i32 %38, i32 %39, i32 %40, i32 0, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %24
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %46 = call i32 @shost_printk(i32 %44, %struct.Scsi_Host* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %24
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @aha1542_intr_reset(i32 %50)
  %52 = load i32, i32* @BIOS_TRANSLATION_6432, align 4
  %53 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %54 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = icmp eq i32 %56, 67
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %61 = call i32 @shost_printk(i32 %59, %struct.Scsi_Host* %60, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %67

62:                                               ; preds = %47
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %64 = call i32 @aha1542_mbenable(%struct.Scsi_Host* %63)
  %65 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %66 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @STATUS(i32) #1

declare dso_local i32 @DATA(i32) #1

declare dso_local i32 @aha1542_outb(i32, i32) #1

declare dso_local i32 @aha1542_in(i32, i32*, i32, i32) #1

declare dso_local i32 @wait_mask(i32, i32, i32, i32, i32) #1

declare dso_local i32 @INTRFLAGS(i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @aha1542_intr_reset(i32) #1

declare dso_local i32 @aha1542_mbenable(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
