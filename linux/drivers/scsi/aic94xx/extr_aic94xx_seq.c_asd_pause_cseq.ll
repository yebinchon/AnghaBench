; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_pause_cseq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_pause_cseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@PAUSE_TRIES = common dso_local global i32 0, align 4
@CARP2CTL = common dso_local global i32 0, align 4
@PAUSED = common dso_local global i32 0, align 4
@EPAUSE = common dso_local global i32 0, align 4
@PAUSE_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"couldn't pause CSEQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_pause_cseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_pause_cseq(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %6 = load i32, i32* @PAUSE_TRIES, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %8 = load i32, i32* @CARP2CTL, align 4
  %9 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PAUSED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %17 = load i32, i32* @CARP2CTL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EPAUSE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %16, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %34, %15
  %23 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %24 = load i32, i32* @CARP2CTL, align 4
  %25 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PAUSED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %40

31:                                               ; preds = %22
  %32 = load i32, i32* @PAUSE_DELAY, align 4
  %33 = call i32 @udelay(i32 %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %22, label %38

38:                                               ; preds = %34
  %39 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %30, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
