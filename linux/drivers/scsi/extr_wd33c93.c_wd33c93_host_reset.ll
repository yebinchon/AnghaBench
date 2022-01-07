; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_wd33c93_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_wd33c93_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i32, i64 }
%struct.WD33C93_hostdata = type { i64, i64, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i64*, i32 (%struct.Scsi_Host.0*, i32*, i32)* }
%struct.Scsi_Host.0 = type opaque

@.str = private unnamed_addr constant [16 x i8] c"scsi%d: reset. \00", align 1
@DEFAULT_SX_PER = common dso_local global i32 0, align 4
@DEFAULT_SX_OFF = common dso_local global i32 0, align 4
@SS_UNSET = common dso_local global i32 0, align 4
@S_UNCONNECTED = common dso_local global i32 0, align 4
@D_DMA_OFF = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wd33c93_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.WD33C93_hostdata*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @spin_lock_irq(i32 %13)
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.WD33C93_hostdata*
  store %struct.WD33C93_hostdata* %18, %struct.WD33C93_hostdata** %4, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @disable_irq(i32 %25)
  %27 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %28 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %27, i32 0, i32 12
  %29 = load i32 (%struct.Scsi_Host.0*, i32*, i32)*, i32 (%struct.Scsi_Host.0*, i32*, i32)** %28, align 8
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %31 = bitcast %struct.Scsi_Host* %30 to %struct.Scsi_Host.0*
  %32 = call i32 %29(%struct.Scsi_Host.0* %31, i32* null, i32 0)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %63, %1
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %38 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %37, i32 0, i32 11
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @DEFAULT_SX_PER, align 4
  %44 = sdiv i32 %43, 4
  %45 = load i32, i32* @DEFAULT_SX_OFF, align 4
  %46 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %47 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @calc_sync_xfer(i32 %44, i32 %45, i32 0, i32 %48)
  %50 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %51 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %50, i32 0, i32 10
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load i32, i32* @SS_UNSET, align 4
  %57 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %58 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %36
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %33

66:                                               ; preds = %33
  %67 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %68 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %67, i32 0, i32 7
  store i32* null, i32** %68, align 8
  %69 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %70 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %69, i32 0, i32 6
  store i32* null, i32** %70, align 8
  %71 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %72 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %71, i32 0, i32 5
  store i32* null, i32** %72, align 8
  %73 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %74 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %73, i32 0, i32 4
  store i32* null, i32** %74, align 8
  %75 = load i32, i32* @S_UNCONNECTED, align 4
  %76 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %77 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @D_DMA_OFF, align 4
  %79 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %80 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %82 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %84 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %86 = call i32 @reset_wd33c93(%struct.Scsi_Host* %85)
  %87 = load i32, i32* @DID_RESET, align 4
  %88 = shl i32 %87, 16
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %92 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @enable_irq(i32 %93)
  %95 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %96 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @spin_unlock_irq(i32 %97)
  %99 = load i32, i32* @SUCCESS, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @calc_sync_xfer(i32, i32, i32, i32) #1

declare dso_local i32 @reset_wd33c93(%struct.Scsi_Host*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
