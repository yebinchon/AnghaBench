; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_set_bus_times.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_set_bus_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@CMD_BUSON_TIME = common dso_local global i32 0, align 4
@CMD_BUSOFF_TIME = common dso_local global i32 0, align 4
@CMD_DMASPEED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"setting bus on/off-time failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, i32, i32, i32)* @aha1542_set_bus_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aha1542_set_bus_times(%struct.Scsi_Host* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %16 = load i32, i32* @CMD_BUSON_TIME, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @clamp(i32 %18, i32 2, i32 15)
  store i32 %19, i32* %17, align 4
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @aha1542_intr_reset(i32 %22)
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %28 = call i64 @aha1542_out(i32 %26, i32* %27, i32 2)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %80

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %37 = load i32, i32* @CMD_BUSOFF_TIME, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @clamp(i32 %39, i32 1, i32 64)
  store i32 %40, i32* %38, align 4
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @aha1542_intr_reset(i32 %43)
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %49 = call i64 @aha1542_out(i32 %47, i32* %48, i32 2)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  br label %80

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dma_speed_hw(i32 %54)
  %56 = icmp ne i32 %55, 255
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %59 = load i32, i32* @CMD_DMASPEED, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds i32, i32* %58, i64 1
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dma_speed_hw(i32 %61)
  store i32 %62, i32* %60, align 4
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @aha1542_intr_reset(i32 %65)
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %71 = call i64 @aha1542_out(i32 %69, i32* %70, i32 2)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %80

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %53
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %77 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @aha1542_intr_reset(i32 %78)
  br label %88

80:                                               ; preds = %73, %51, %30
  %81 = load i32, i32* @KERN_ERR, align 4
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %83 = call i32 @shost_printk(i32 %81, %struct.Scsi_Host* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %85 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @aha1542_intr_reset(i32 %86)
  br label %88

88:                                               ; preds = %80, %75
  ret void
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @aha1542_intr_reset(i32) #1

declare dso_local i64 @aha1542_out(i32, i32*, i32) #1

declare dso_local i32 @dma_speed_hw(i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
