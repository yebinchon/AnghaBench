; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_hdq_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_hdq_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32, i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OMAP_HDQ_INT_STATUS_RXCOMPLETE = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_DIR = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_GO = common dso_local global i32 0, align 4
@hdq_wait_queue = common dso_local global i32 0, align 4
@OMAP_HDQ_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timeout waiting for RXCOMPLETE, %x\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@OMAP_HDQ_RX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*, i32*)* @hdq_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdq_read_byte(%struct.hdq_data* %0, i32* %1) #0 {
  %3 = alloca %struct.hdq_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdq_data* %0, %struct.hdq_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %8 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock_interruptible(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINTR, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %77

15:                                               ; preds = %2
  %16 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %17 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %73

23:                                               ; preds = %15
  %24 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %25 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OMAP_HDQ_INT_STATUS_RXCOMPLETE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %68, label %30

30:                                               ; preds = %23
  %31 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %32 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %33 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %34 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %37 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @hdq_reg_merge(%struct.hdq_data* %31, i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* @hdq_wait_queue, align 4
  %41 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %42 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OMAP_HDQ_INT_STATUS_RXCOMPLETE, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @OMAP_HDQ_TIMEOUT, align 4
  %47 = call i32 @wait_event_timeout(i32 %40, i32 %45, i32 %46)
  %48 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %49 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %50 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %51 = call i32 @hdq_reg_merge(%struct.hdq_data* %48, i32 %49, i32 0, i32 %50)
  %52 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %53 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @OMAP_HDQ_INT_STATUS_RXCOMPLETE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %30
  %60 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %61 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %73

67:                                               ; preds = %30
  br label %68

68:                                               ; preds = %67, %23
  %69 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %70 = load i32, i32* @OMAP_HDQ_RX_DATA, align 4
  %71 = call i32 @hdq_reg_in(%struct.hdq_data* %69, i32 %70)
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %59, %20
  %74 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %75 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  br label %77

77:                                               ; preds = %73, %12
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @hdq_reg_merge(%struct.hdq_data*, i32, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @hdq_reg_in(%struct.hdq_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
