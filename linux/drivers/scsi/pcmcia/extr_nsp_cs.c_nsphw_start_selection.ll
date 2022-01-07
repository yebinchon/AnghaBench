; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsphw_start_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsphw_start_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@SCSIBUSMON = common dso_local global i32 0, align 4
@BUSMON_BUS_FREE = common dso_local global i8 0, align 1
@FALSE = common dso_local global i32 0, align 4
@PH_ARBSTART = common dso_local global i32 0, align 4
@SETARBIT = common dso_local global i32 0, align 4
@ARBIT_GO = common dso_local global i32 0, align 4
@ARBITSTATUS = common dso_local global i32 0, align 4
@ARBIT_WIN = common dso_local global i8 0, align 1
@ARBIT_FAIL = common dso_local global i8 0, align 1
@ARBIT_FLAG_CLEAR = common dso_local global i32 0, align 4
@PH_SELSTART = common dso_local global i32 0, align 4
@SCSIDATALATCH = common dso_local global i32 0, align 4
@SCSIBUSCTRL = common dso_local global i32 0, align 4
@SCSI_SEL = common dso_local global i32 0, align 4
@SCSI_BSY = common dso_local global i32 0, align 4
@SCSI_ATN = common dso_local global i32 0, align 4
@SCSI_DATAOUT_ENB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @nsphw_start_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsphw_start_selection(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = call zeroext i8 @scmd_id(%struct.scsi_cmnd* %25)
  store i8 %26, i8* %6, align 1
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SCSIBUSMON, align 4
  %37 = call zeroext i8 @nsp_index_read(i32 %35, i32 %36)
  store i8 %37, i8* %9, align 1
  %38 = load i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @BUSMON_BUS_FREE, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %2, align 4
  br label %139

45:                                               ; preds = %1
  %46 = load i32, i32* @PH_ARBSTART, align 4
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SETARBIT, align 4
  %52 = load i32, i32* @ARBIT_GO, align 4
  %53 = call i32 @nsp_index_write(i32 %50, i32 %51, i32 %52)
  store i32 1000, i32* %8, align 4
  br label %54

54:                                               ; preds = %73, %45
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @ARBITSTATUS, align 4
  %57 = call zeroext i8 @nsp_index_read(i32 %55, i32 %56)
  store i8 %57, i8* %10, align 1
  %58 = call i32 @udelay(i32 1)
  br label %59

59:                                               ; preds = %54
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @ARBIT_WIN, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @ARBIT_FAIL, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %63, %65
  %67 = and i32 %61, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %8, align 4
  %72 = icmp ne i32 %70, 0
  br label %73

73:                                               ; preds = %69, %59
  %74 = phi i1 [ false, %59 ], [ %72, %69 ]
  br i1 %74, label %54, label %75

75:                                               ; preds = %73
  %76 = load i8, i8* %10, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @ARBIT_WIN, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @SETARBIT, align 4
  %85 = load i32, i32* @ARBIT_FLAG_CLEAR, align 4
  %86 = call i32 @nsp_index_write(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %2, align 4
  br label %139

88:                                               ; preds = %75
  %89 = load i32, i32* @PH_SELSTART, align 4
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = call i32 @udelay(i32 3)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @SCSIDATALATCH, align 4
  %96 = load i32, i32* %4, align 4
  %97 = trunc i32 %96 to i8
  %98 = call i32 @BIT(i8 zeroext %97)
  %99 = load i8, i8* %6, align 1
  %100 = call i32 @BIT(i8 zeroext %99)
  %101 = or i32 %98, %100
  %102 = call i32 @nsp_index_write(i32 %94, i32 %95, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @SCSIBUSCTRL, align 4
  %105 = load i32, i32* @SCSI_SEL, align 4
  %106 = load i32, i32* @SCSI_BSY, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SCSI_ATN, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @nsp_index_write(i32 %103, i32 %104, i32 %109)
  %111 = call i32 @udelay(i32 2)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @SCSIBUSCTRL, align 4
  %114 = load i32, i32* @SCSI_SEL, align 4
  %115 = load i32, i32* @SCSI_BSY, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SCSI_DATAOUT_ENB, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @SCSI_ATN, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @nsp_index_write(i32 %112, i32 %113, i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @SETARBIT, align 4
  %124 = load i32, i32* @ARBIT_FLAG_CLEAR, align 4
  %125 = call i32 @nsp_index_write(i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @SCSIBUSCTRL, align 4
  %128 = load i32, i32* @SCSI_SEL, align 4
  %129 = load i32, i32* @SCSI_DATAOUT_ENB, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @SCSI_ATN, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @nsp_index_write(i32 %126, i32 %127, i32 %132)
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %135 = call i32 @nsp_start_timer(%struct.scsi_cmnd* %134, i32 19)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  %138 = load i32, i32* @TRUE, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %88, %82, %43
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local zeroext i8 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local zeroext i8 @nsp_index_read(i32, i32) #1

declare dso_local i32 @nsp_index_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BIT(i8 zeroext) #1

declare dso_local i32 @nsp_start_timer(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
