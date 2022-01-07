; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_int_initio_scsi_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_int_initio_scsi_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, %struct.TYPE_2__*, i32*, i32*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_ctrl_blk = type { i32 }

@TUL_XStatus = common dso_local global i64 0, align 8
@TAX_X_ABT = common dso_local global i32 0, align 4
@TAX_X_CLR_FIFO = common dso_local global i32 0, align 4
@TUL_XCmd = common dso_local global i64 0, align 8
@TUL_Int = common dso_local global i64 0, align 8
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@HOST_BAD_PHAS = common dso_local global i32 0, align 4
@TCF_SYNC_DONE = common dso_local global i32 0, align 4
@TCF_WDTR_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @int_initio_scsi_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_initio_scsi_rst(%struct.initio_host* %0) #0 {
  %2 = alloca %struct.initio_host*, align 8
  %3 = alloca %struct.scsi_ctrl_blk*, align 8
  %4 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %2, align 8
  %5 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %6 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TUL_XStatus, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @inb(i64 %9)
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load i32, i32* @TAX_X_ABT, align 4
  %15 = load i32, i32* @TAX_X_CLR_FIFO, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %18 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TUL_XCmd, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 %16, i64 %21)
  br label %23

23:                                               ; preds = %32, %13
  %24 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %25 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TUL_Int, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inb(i64 %28)
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 (...) @cpu_relax()
  br label %23

34:                                               ; preds = %23
  %35 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %36 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %37 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TUL_SCtrl0, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %34, %1
  br label %43

43:                                               ; preds = %47, %42
  %44 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %45 = call %struct.scsi_ctrl_blk* @initio_pop_busy_scb(%struct.initio_host* %44)
  store %struct.scsi_ctrl_blk* %45, %struct.scsi_ctrl_blk** %3, align 8
  %46 = icmp ne %struct.scsi_ctrl_blk* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* @HOST_BAD_PHAS, align 4
  %49 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %52 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %53 = call i32 @initio_append_done_scb(%struct.initio_host* %51, %struct.scsi_ctrl_blk* %52)
  br label %43

54:                                               ; preds = %43
  %55 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %56 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %58 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %79, %54
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %62 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load i32, i32* @TCF_SYNC_DONE, align 4
  %67 = load i32, i32* @TCF_WDTR_DONE, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %71 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %69
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %59

82:                                               ; preds = %59
  ret i32 -1
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local %struct.scsi_ctrl_blk* @initio_pop_busy_scb(%struct.initio_host*) #1

declare dso_local i32 @initio_append_done_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
