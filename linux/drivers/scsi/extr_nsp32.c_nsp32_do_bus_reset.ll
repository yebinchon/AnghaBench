; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_do_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_do_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@NSP32_DEBUG_BUSRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@TRANSFER_CONTROL = common dso_local global i32 0, align 4
@BM_CNT = common dso_local global i32 0, align 4
@CLR_COUNTER = common dso_local global i32 0, align 4
@CLRCOUNTER_ALLMASK = common dso_local global i32 0, align 4
@SCSI_BUS_CONTROL = common dso_local global i32 0, align 4
@BUSCTL_RST = common dso_local global i32 0, align 4
@RESET_HOLD_TIME = common dso_local global i32 0, align 4
@IRQ_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"irq:1: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @nsp32_do_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp32_do_bus_reset(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @NSP32_DEBUG_BUSRESET, align 4
  %11 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TRANSFER_CONTROL, align 4
  %14 = call i32 @nsp32_write2(i32 %12, i32 %13, i32 0)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @BM_CNT, align 4
  %17 = call i32 @nsp32_write4(i32 %15, i32 %16, i32 0)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @CLR_COUNTER, align 4
  %20 = load i32, i32* @CLRCOUNTER_ALLMASK, align 4
  %21 = call i32 @nsp32_write4(i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %41, %1
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %26)
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %6, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = call i32 @nsp32_set_async(%struct.TYPE_8__* %38, %struct.TYPE_7__* %39)
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %22

44:                                               ; preds = %22
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SCSI_BUS_CONTROL, align 4
  %47 = load i32, i32* @BUSCTL_RST, align 4
  %48 = call i32 @nsp32_write1(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @RESET_HOLD_TIME, align 4
  %50 = sdiv i32 %49, 1000
  %51 = call i32 @mdelay(i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SCSI_BUS_CONTROL, align 4
  %54 = call i32 @nsp32_write1(i32 %52, i32 %53, i32 0)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %66, %44
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 5
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @IRQ_STATUS, align 4
  %61 = call zeroext i16 @nsp32_read2(i32 %59, i32 %60)
  store i16 %61, i16* %4, align 2
  %62 = load i32, i32* @NSP32_DEBUG_BUSRESET, align 4
  %63 = load i16, i16* %4, align 2
  %64 = zext i16 %63 to i32
  %65 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %55

69:                                               ; preds = %55
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  ret void
}

declare dso_local i32 @nsp32_dbg(i32, i8*, ...) #1

declare dso_local i32 @nsp32_write2(i32, i32, i32) #1

declare dso_local i32 @nsp32_write4(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @nsp32_set_async(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @nsp32_write1(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local zeroext i16 @nsp32_read2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
