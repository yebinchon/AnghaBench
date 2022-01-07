; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitGetConfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitGetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.asc_board = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@ASC_INIT_STATE_BEG_GET_CFG = common dso_local global i32 0, align 4
@ASC_INIT_STATE_END_GET_CFG = common dso_local global i32 0, align 4
@ASC_MAX_SCSI_RESET_WAIT = common dso_local global i64 0, align 8
@ASC_IERR_BAD_SIGNATURE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"I/O port address modified\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"I/O port increment switch enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EEPROM checksum error\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"IRQ modified\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"tag queuing enabled w/o disconnects\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unknown warning: 0x%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"error 0x%x at init_state 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @AscInitGetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscInitGetConfig(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.asc_board*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i16, align 2
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %7)
  store %struct.asc_board* %8, %struct.asc_board** %4, align 8
  %9 = load %struct.asc_board*, %struct.asc_board** %4, align 8
  %10 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  store i16 0, i16* %6, align 2
  %12 = load i32, i32* @ASC_INIT_STATE_BEG_GET_CFG, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %105

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @AscFindSignature(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = call i32 @AscInitAscDvcVar(%struct.TYPE_6__* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call zeroext i16 @AscInitFromEEP(%struct.TYPE_6__* %33)
  store i16 %34, i16* %6, align 2
  %35 = load i32, i32* @ASC_INIT_STATE_END_GET_CFG, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ASC_MAX_SCSI_RESET_WAIT, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load i64, i64* @ASC_MAX_SCSI_RESET_WAIT, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %30
  br label %55

50:                                               ; preds = %24
  %51 = load i32, i32* @ASC_IERR_BAD_SIGNATURE, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %50, %49
  %56 = load i16, i16* %6, align 2
  %57 = zext i16 %56 to i32
  switch i32 %57, label %79 [
    i32 0, label %58
    i32 129, label %59
    i32 132, label %63
    i32 130, label %67
    i32 128, label %71
    i32 131, label %75
  ]

58:                                               ; preds = %55
  br label %85

59:                                               ; preds = %55
  %60 = load i32, i32* @KERN_WARNING, align 4
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %62 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %60, %struct.Scsi_Host* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %85

63:                                               ; preds = %55
  %64 = load i32, i32* @KERN_WARNING, align 4
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %66 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %64, %struct.Scsi_Host* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %85

67:                                               ; preds = %55
  %68 = load i32, i32* @KERN_WARNING, align 4
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %70 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %68, %struct.Scsi_Host* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %85

71:                                               ; preds = %55
  %72 = load i32, i32* @KERN_WARNING, align 4
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %74 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %72, %struct.Scsi_Host* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %85

75:                                               ; preds = %55
  %76 = load i32, i32* @KERN_WARNING, align 4
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %78 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %76, %struct.Scsi_Host* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %85

79:                                               ; preds = %55
  %80 = load i32, i32* @KERN_WARNING, align 4
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %82 = load i16, i16* %6, align 2
  %83 = zext i16 %82 to i32
  %84 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %80, %struct.Scsi_Host* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %75, %71, %67, %63, %59, %58
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i32, i32* @KERN_ERR, align 4
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %91, %struct.Scsi_Host* %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %95, i32 %98)
  br label %100

100:                                              ; preds = %90, %85
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %100, %19
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @AscFindSignature(i32) #1

declare dso_local i32 @AscInitAscDvcVar(%struct.TYPE_6__*) #1

declare dso_local zeroext i16 @AscInitFromEEP(%struct.TYPE_6__*) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
