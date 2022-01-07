; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscResetChipAndScsiBus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscResetChipAndScsiBus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CSW_SCSI_RESET_ACTIVE = common dso_local global i32 0, align 4
@CC_CHIP_RESET = common dso_local global i32 0, align 4
@CC_SCSI_RESET = common dso_local global i32 0, align 4
@CC_HALT = common dso_local global i32 0, align 4
@INS_RFLAG_WTM = common dso_local global i32 0, align 4
@INS_HALT = common dso_local global i32 0, align 4
@CIW_CLR_SCSI_RESET_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @AscResetChipAndScsiBus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscResetChipAndScsiBus(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 10, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @AscGetChipStatus(i32 %9)
  %11 = load i32, i32* @CSW_SCSI_RESET_ACTIVE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp sgt i32 %15, 0
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i1 [ false, %8 ], [ %17, %14 ]
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = call i32 @mdelay(i32 100)
  br label %8

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @AscStopChip(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CC_CHIP_RESET, align 4
  %27 = load i32, i32* @CC_SCSI_RESET, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CC_HALT, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @AscSetChipControl(i32 %25, i32 %30)
  %32 = call i32 @udelay(i32 60)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @INS_RFLAG_WTM, align 4
  %35 = call i32 @AscSetChipIH(i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @INS_HALT, align 4
  %38 = call i32 @AscSetChipIH(i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @CC_CHIP_RESET, align 4
  %41 = load i32, i32* @CC_HALT, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @AscSetChipControl(i32 %39, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @CC_HALT, align 4
  %46 = call i32 @AscSetChipControl(i32 %44, i32 %45)
  %47 = call i32 @mdelay(i32 200)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @CIW_CLR_SCSI_RESET_INT, align 4
  %50 = call i32 @AscSetChipStatus(i32 %48, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @AscSetChipStatus(i32 %51, i32 0)
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @AscIsChipHalted(i32 %53)
  ret i32 %54
}

declare dso_local i32 @AscGetChipStatus(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @AscStopChip(i32) #1

declare dso_local i32 @AscSetChipControl(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AscSetChipIH(i32, i32) #1

declare dso_local i32 @AscSetChipStatus(i32, i32) #1

declare dso_local i32 @AscIsChipHalted(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
