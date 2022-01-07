; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_hdq_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_hdq_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32, i32, i32 }

@OMAP_HDQ_INT_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_TX_DATA = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_GO = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_DIR = common dso_local global i32 0, align 4
@hdq_wait_queue = common dso_local global i32 0, align 4
@OMAP_HDQ_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"TX wait elapsed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@OMAP_HDQ_INT_STATUS_TXCOMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"timeout waiting for TXCOMPLETE/RXCOMPLETE, %x\00", align 1
@OMAP_HDQ_FLAG_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"timeout waiting GO bit return to zero, %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*, i32, i32*)* @hdq_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdq_write_byte(%struct.hdq_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hdq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hdq_data* %0, %struct.hdq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %12 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %11, i32 0, i32 2
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %16 = load i32, i32* @OMAP_HDQ_INT_STATUS, align 4
  %17 = call i32 @hdq_reg_in(%struct.hdq_data* %15, i32 %16)
  %18 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %19 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %21 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %20, i32 0, i32 2
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %25 = load i32, i32* @OMAP_HDQ_TX_DATA, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @hdq_reg_out(%struct.hdq_data* %24, i32 %25, i32 %26)
  %28 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %29 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %30 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %31 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %32 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @hdq_reg_merge(%struct.hdq_data* %28, i32 %29, i32 %30, i32 %33)
  %35 = load i32, i32* @hdq_wait_queue, align 4
  %36 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %37 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OMAP_HDQ_TIMEOUT, align 4
  %40 = call i32 @wait_event_timeout(i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %3
  %44 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %45 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %84

50:                                               ; preds = %3
  %51 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %52 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OMAP_HDQ_INT_STATUS_TXCOMPLETE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %50
  %61 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %62 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @ETIMEDOUT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %84

69:                                               ; preds = %50
  %70 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %71 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %72 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %73 = load i32, i32* @OMAP_HDQ_FLAG_CLEAR, align 4
  %74 = call i32 @hdq_wait_for_flag(%struct.hdq_data* %70, i32 %71, i32 %72, i32 %73, i32* %8)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %79 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (i32, i8*, ...) @dev_dbg(i32 %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %69
  br label %84

84:                                               ; preds = %83, %60, %43
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdq_reg_in(%struct.hdq_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hdq_reg_out(%struct.hdq_data*, i32, i32) #1

declare dso_local i32 @hdq_reg_merge(%struct.hdq_data*, i32, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @hdq_wait_for_flag(%struct.hdq_data*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
