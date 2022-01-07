; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_NCR5380.c_NCR5380_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_NCR5380.c_NCR5380_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.NCR5380_hostdata = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8, i32, i32 }

@SR_IO = common dso_local global i8 0, align 1
@BUS_AND_STATUS_REG = common dso_local global i32 0, align 4
@BASR_PHASE_MATCH = common dso_local global i8 0, align 1
@BASR_ACK = common dso_local global i8 0, align 1
@INPUT_DATA_REG = common dso_local global i32 0, align 4
@NDEBUG_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"read overrun handled\0A\00", align 1
@MODE_REG = common dso_local global i32 0, align 4
@MR_BASE = common dso_local global i32 0, align 4
@INITIATOR_COMMAND_REG = common dso_local global i32 0, align 4
@ICR_BASE = common dso_local global i32 0, align 4
@RESET_PARITY_INTERRUPT_REG = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i32 0, align 4
@PHASE_MASK = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Got an input overrun, using saved byte\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Doing %d byte PIO to 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @NCR5380_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NCR5380_dma_complete(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.NCR5380_hostdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %13 = call %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.NCR5380_hostdata* %13, %struct.NCR5380_hostdata** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %15 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %1
  %19 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %20 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 4
  store i8 %24, i8* %9, align 1
  %25 = load i8, i8* %9, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @SR_IO, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %18
  %32 = call i32 @udelay(i32 10)
  %33 = load i32, i32* @BUS_AND_STATUS_REG, align 4
  %34 = call zeroext i8 @NCR5380_read(i32 %33)
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @BASR_PHASE_MATCH, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @BASR_ACK, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %37, %39
  %41 = and i32 %35, %40
  %42 = load i8, i8* @BASR_PHASE_MATCH, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @BASR_ACK, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %43, %45
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %31
  %49 = load i32, i32* @INPUT_DATA_REG, align 4
  %50 = call zeroext i8 @NCR5380_read(i32 %49)
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %52 = load i32, i32* @NDEBUG_DMA, align 4
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %54 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @dsprintk(i32 %52, %struct.Scsi_Host* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %48, %31
  br label %56

56:                                               ; preds = %55, %18
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i32, i32* @MODE_REG, align 4
  %59 = load i32, i32* @MR_BASE, align 4
  %60 = call i32 @NCR5380_write(i32 %58, i32 %59)
  %61 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %62 = load i32, i32* @ICR_BASE, align 4
  %63 = call i32 @NCR5380_write(i32 %61, i32 %62)
  %64 = load i32, i32* @RESET_PARITY_INTERRUPT_REG, align 4
  %65 = call zeroext i8 @NCR5380_read(i32 %64)
  %66 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %67 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %70 = call i32 @NCR5380_dma_residual(%struct.NCR5380_hostdata* %69)
  %71 = sub nsw i32 %68, %70
  store i32 %71, i32* %4, align 4
  %72 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %73 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %75 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = bitcast i32* %78 to i8**
  store i8** %79, i8*** %5, align 8
  %80 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %81 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32* %84, i32** %6, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i8**, i8*** %5, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = sext i32 %85 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %86, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %95 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %158

98:                                               ; preds = %57
  %99 = load i32, i32* @STATUS_REG, align 4
  %100 = call zeroext i8 @NCR5380_read(i32 %99)
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @PHASE_MASK, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %101, %103
  %105 = load i8, i8* %9, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %157

108:                                              ; preds = %98
  %109 = load i8, i8* %9, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @SR_IO, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %157

115:                                              ; preds = %108
  %116 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %117 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %11, align 4
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %115
  %122 = load i32, i32* @NDEBUG_DMA, align 4
  %123 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %124 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @dsprintk(i32 %122, %struct.Scsi_Host* %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* %7, align 4
  %126 = trunc i32 %125 to i8
  %127 = load i8**, i8*** %5, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %127, align 8
  store i8 %126, i8* %128, align 1
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %121, %115
  %138 = load i32, i32* %11, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %137
  %141 = load i32, i32* @NDEBUG_DMA, align 4
  %142 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i8**, i8*** %5, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @dsprintk(i32 %141, %struct.Scsi_Host* %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %143, i8* %145)
  %147 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %148 = load i8**, i8*** %5, align 8
  %149 = call i32 @NCR5380_transfer_pio(%struct.Scsi_Host* %147, i8* %9, i32* %10, i8** %148)
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = sub nsw i32 %150, %151
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, %152
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %140, %137
  br label %157

157:                                              ; preds = %156, %108, %98
  br label %158

158:                                              ; preds = %157, %57
  ret void
}

declare dso_local %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @NCR5380_read(i32) #1

declare dso_local i32 @dsprintk(i32, %struct.Scsi_Host*, i8*, ...) #1

declare dso_local i32 @NCR5380_write(i32, i32) #1

declare dso_local i32 @NCR5380_dma_residual(%struct.NCR5380_hostdata*) #1

declare dso_local i32 @NCR5380_transfer_pio(%struct.Scsi_Host*, i8*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
