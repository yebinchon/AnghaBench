; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_scsi_reset_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_scsi_reset_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32, i32*, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"scsi_reset_detect: acb=%p\0A\00", align 1
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_RSTMODULE = common dso_local global i32 0, align 4
@TRM_S1040_DMA_CONTROL = common dso_local global i32 0, align 4
@DMARESETMODULE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"scsi_reset_detect\00", align 1
@RESET_DEV = common dso_local global i32 0, align 4
@RESET_DONE = common dso_local global i32 0, align 4
@RESET_DETECT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*)* @scsi_reset_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_reset_detect(%struct.AdapterCtlBlk* %0) #0 {
  %2 = alloca %struct.AdapterCtlBlk*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %2, align 8
  %3 = load i32, i32* @KERN_INFO, align 4
  %4 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %5 = call i32 @dprintkl(i32 %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.AdapterCtlBlk* %4)
  %6 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %7 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %6, i32 0, i32 4
  %8 = call i64 @timer_pending(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %12 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %11, i32 0, i32 4
  %13 = call i32 @del_timer(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %16 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %17 = load i32, i32* @DO_RSTMODULE, align 4
  %18 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %15, i32 %16, i32 %17)
  %19 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %20 = load i32, i32* @TRM_S1040_DMA_CONTROL, align 4
  %21 = load i32, i32* @DMARESETMODULE, align 4
  %22 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %19, i32 %20, i32 %21)
  %23 = call i32 @udelay(i32 500)
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 5, %25
  %27 = sdiv i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %24, %28
  %30 = load i32, i32* @HZ, align 4
  %31 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %32 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %30, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %29, %36
  %38 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %39 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %41 = call i32 @clear_fifo(%struct.AdapterCtlBlk* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %43 = call i32 @set_basic_config(%struct.AdapterCtlBlk* %42)
  %44 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %45 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RESET_DEV, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %14
  %51 = load i32, i32* @RESET_DONE, align 4
  %52 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %53 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %73

56:                                               ; preds = %14
  %57 = load i32, i32* @RESET_DETECT, align 4
  %58 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %59 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %63 = call i32 @reset_dev_param(%struct.AdapterCtlBlk* %62)
  %64 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %65 = load i32, i32* @DID_RESET, align 4
  %66 = call i32 @doing_srb_done(%struct.AdapterCtlBlk* %64, i32 %65, i32* null, i32 1)
  %67 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %68 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  %69 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %70 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %72 = call i32 @waiting_process_next(%struct.AdapterCtlBlk* %71)
  br label %73

73:                                               ; preds = %56, %50
  ret void
}

declare dso_local i32 @dprintkl(i32, i8*, %struct.AdapterCtlBlk*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clear_fifo(%struct.AdapterCtlBlk*, i8*) #1

declare dso_local i32 @set_basic_config(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @reset_dev_param(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @doing_srb_done(%struct.AdapterCtlBlk*, i32, i32*, i32) #1

declare dso_local i32 @waiting_process_next(%struct.AdapterCtlBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
