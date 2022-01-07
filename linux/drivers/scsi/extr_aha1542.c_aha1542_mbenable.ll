; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_mbenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_mbenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@aha1542_mbenable.mbenable_cmd = internal global [3 x i32] zeroinitializer, align 4
@aha1542_mbenable.mbenable_result = internal global [2 x i32] zeroinitializer, align 4
@BIOS_TRANSLATION_6432 = common dso_local global i32 0, align 4
@CMD_EXTBIOS = common dso_local global i32 0, align 4
@INTRMASK = common dso_local global i32 0, align 4
@HACC = common dso_local global i32 0, align 4
@CMD_MBENABLE = common dso_local global i32 0, align 4
@BIOS_TRANSLATION_25563 = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Mailbox init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @aha1542_mbenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha1542_mbenable(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %5 = load i32, i32* @BIOS_TRANSLATION_6432, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CMD_EXTBIOS, align 4
  %10 = call i32 @aha1542_outb(i32 %8, i32 %9)
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @aha1542_in(i32 %13, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @aha1542_mbenable.mbenable_result, i64 0, i64 0), i32 2, i32 100)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %72

18:                                               ; preds = %1
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @INTRFLAGS(i32 %21)
  %23 = load i32, i32* @INTRMASK, align 4
  %24 = load i32, i32* @HACC, align 4
  %25 = call i32 @wait_mask(i32 %22, i32 %23, i32 %24, i32 0, i32 100)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %62

28:                                               ; preds = %18
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @aha1542_intr_reset(i32 %31)
  %33 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @aha1542_mbenable.mbenable_result, i64 0, i64 0), align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @aha1542_mbenable.mbenable_result, i64 0, i64 1), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36, %28
  %40 = load i32, i32* @CMD_MBENABLE, align 4
  store i32 %40, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @aha1542_mbenable.mbenable_cmd, i64 0, i64 0), align 4
  store i32 0, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @aha1542_mbenable.mbenable_cmd, i64 0, i64 1), align 4
  %41 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @aha1542_mbenable.mbenable_result, i64 0, i64 1), align 4
  store i32 %41, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @aha1542_mbenable.mbenable_cmd, i64 0, i64 2), align 4
  %42 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @aha1542_mbenable.mbenable_result, i64 0, i64 0), align 4
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @aha1542_mbenable.mbenable_result, i64 0, i64 1), align 4
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @BIOS_TRANSLATION_25563, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %45, %39
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @aha1542_out(i32 %54, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @aha1542_mbenable.mbenable_cmd, i64 0, i64 0), i32 3)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %62

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %62, %59
  br i1 false, label %61, label %66

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61, %57, %27
  %63 = load i32, i32* @KERN_ERR, align 4
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %65 = call i32 @shost_printk(i32 %63, %struct.Scsi_Host* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %60

66:                                               ; preds = %60
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @aha1542_intr_reset(i32 %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %16
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @aha1542_outb(i32, i32) #1

declare dso_local i64 @aha1542_in(i32, i32*, i32, i32) #1

declare dso_local i32 @wait_mask(i32, i32, i32, i32, i32) #1

declare dso_local i32 @INTRFLAGS(i32) #1

declare dso_local i32 @aha1542_intr_reset(i32) #1

declare dso_local i64 @aha1542_out(i32, i32*, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
