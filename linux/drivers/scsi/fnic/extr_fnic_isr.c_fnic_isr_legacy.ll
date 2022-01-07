; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_isr.c_fnic_isr_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_isr.c_fnic_isr_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@FNIC_INTX_NOTIFY = common dso_local global i32 0, align 4
@FNIC_INTX_ERR = common dso_local global i32 0, align 4
@FNIC_INTX_WQ_RQ_COPYWQ = common dso_local global i32 0, align 4
@io_completions = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fnic_isr_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_isr_legacy(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fnic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fnic*
  store %struct.fnic* %10, %struct.fnic** %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.fnic*, %struct.fnic** %6, align 8
  %12 = getelementptr inbounds %struct.fnic, %struct.fnic* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @vnic_intr_legacy_pba(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %91

19:                                               ; preds = %2
  %20 = load i32, i32* @jiffies, align 4
  %21 = load %struct.fnic*, %struct.fnic** %6, align 8
  %22 = getelementptr inbounds %struct.fnic, %struct.fnic* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.fnic*, %struct.fnic** %6, align 8
  %26 = getelementptr inbounds %struct.fnic, %struct.fnic* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @atomic64_inc(i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FNIC_INTX_NOTIFY, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %19
  %36 = load %struct.fnic*, %struct.fnic** %6, align 8
  %37 = getelementptr inbounds %struct.fnic, %struct.fnic* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @FNIC_INTX_NOTIFY, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @vnic_intr_return_all_credits(i32* %41)
  %43 = load %struct.fnic*, %struct.fnic** %6, align 8
  %44 = call i32 @fnic_handle_link_event(%struct.fnic* %43)
  br label %45

45:                                               ; preds = %35, %19
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FNIC_INTX_ERR, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.fnic*, %struct.fnic** %6, align 8
  %53 = getelementptr inbounds %struct.fnic, %struct.fnic* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @FNIC_INTX_ERR, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @vnic_intr_return_all_credits(i32* %57)
  %59 = load %struct.fnic*, %struct.fnic** %6, align 8
  %60 = call i32 @fnic_log_q_error(%struct.fnic* %59)
  br label %61

61:                                               ; preds = %51, %45
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @FNIC_INTX_WQ_RQ_COPYWQ, align 4
  %64 = shl i32 1, %63
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  %68 = load %struct.fnic*, %struct.fnic** %6, align 8
  %69 = load i32, i32* @io_completions, align 4
  %70 = call i64 @fnic_wq_copy_cmpl_handler(%struct.fnic* %68, i32 %69)
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = load %struct.fnic*, %struct.fnic** %6, align 8
  %74 = call i64 @fnic_wq_cmpl_handler(%struct.fnic* %73, i32 -1)
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %8, align 8
  %77 = load %struct.fnic*, %struct.fnic** %6, align 8
  %78 = call i64 @fnic_rq_cmpl_handler(%struct.fnic* %77, i32 -1)
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %8, align 8
  %81 = load %struct.fnic*, %struct.fnic** %6, align 8
  %82 = getelementptr inbounds %struct.fnic, %struct.fnic* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @FNIC_INTX_WQ_RQ_COPYWQ, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @vnic_intr_return_credits(i32* %86, i64 %87, i32 1, i32 1)
  br label %89

89:                                               ; preds = %67, %61
  %90 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @vnic_intr_legacy_pba(i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @vnic_intr_return_all_credits(i32*) #1

declare dso_local i32 @fnic_handle_link_event(%struct.fnic*) #1

declare dso_local i32 @fnic_log_q_error(%struct.fnic*) #1

declare dso_local i64 @fnic_wq_copy_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i64 @fnic_wq_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i64 @fnic_rq_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i32 @vnic_intr_return_credits(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
