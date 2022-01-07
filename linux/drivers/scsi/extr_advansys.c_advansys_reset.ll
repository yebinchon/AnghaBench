; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.asc_board = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"0x%p\0A\00", align 1
@reset = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SCSI host reset started...\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"before AscInitAsc1000Driver()\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"SCSI host reset error: 0x%x, status: 0x%x\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"SCSI host reset warning: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"SCSI host reset successful\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"after AscInitAsc1000Driver()\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"before AdvResetChipAndSB()\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"SCSI host reset error\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @advansys_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.asc_board*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %3, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.asc_board* %16, %struct.asc_board** %4, align 8
  %17 = load i32, i32* @SUCCESS, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %18)
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %21 = load i32, i32* @reset, align 4
  %22 = call i32 @ASC_STATS(%struct.Scsi_Host* %20, i32 %21)
  %23 = load i32, i32* @KERN_INFO, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %25 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %23, %struct.scsi_cmnd* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.asc_board*, %struct.asc_board** %4, align 8
  %27 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %1
  %30 = load %struct.asc_board*, %struct.asc_board** %4, align 8
  %31 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  %33 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = call i32 @AscInitAsc1000Driver(%struct.TYPE_7__* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40, %29
  %46 = load i32, i32* @KERN_INFO, align 4
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %46, %struct.scsi_cmnd* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %50, i32 %51)
  %53 = load i32, i32* @FAILED, align 4
  store i32 %53, i32* %7, align 4
  br label %67

54:                                               ; preds = %40
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* @KERN_INFO, align 4
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %58, %struct.scsi_cmnd* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %66

62:                                               ; preds = %54
  %63 = load i32, i32* @KERN_INFO, align 4
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %65 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %63, %struct.scsi_cmnd* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66, %45
  %68 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %99

69:                                               ; preds = %1
  %70 = load %struct.asc_board*, %struct.asc_board** %4, align 8
  %71 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32* %72, i32** %9, align 8
  %73 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @AdvResetChipAndSB(i32* %74)
  switch i32 %75, label %81 [
    i32 128, label %76
    i32 129, label %80
  ]

76:                                               ; preds = %69
  %77 = load i32, i32* @KERN_INFO, align 4
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %79 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %77, %struct.scsi_cmnd* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %86

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %69, %80
  %82 = load i32, i32* @KERN_INFO, align 4
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %84 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %82, %struct.scsi_cmnd* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %85 = load i32, i32* @FAILED, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @spin_lock_irqsave(i32 %89, i64 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @AdvISR(i32* %92)
  %94 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %95 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32 %96, i64 %97)
  br label %99

99:                                               ; preds = %86, %67
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @ASC_DBG(i32, i8*, ...) #1

declare dso_local i32 @ASC_STATS(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, ...) #1

declare dso_local i64 @ASC_NARROW_BOARD(%struct.asc_board*) #1

declare dso_local i32 @AscInitAsc1000Driver(%struct.TYPE_7__*) #1

declare dso_local i32 @AdvResetChipAndSB(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @AdvISR(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
