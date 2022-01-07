; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_claim_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_claim_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@INTR_MODE_LEGACY = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@ESAS2R_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"esas2r_claim_interrupts irq=%d (%p, %s, %lx)\00", align 1
@esas2r_interrupt = common dso_local global i32 0, align 4
@esas2r_msi_interrupt = common dso_local global i32 0, align 4
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to request IRQ %02X\00", align 1
@AF2_IRQ_CLAIMED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"claimed IRQ %d flags: 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*)* @esas2r_claim_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_claim_interrupts(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @INTR_MODE_LEGACY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i64, i64* @IRQF_SHARED, align 8
  %11 = load i64, i64* %3, align 8
  %12 = or i64 %11, %10
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %3, align 8
  %25 = call i32 (i32, i8*, i32, ...) @esas2r_log(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.esas2r_adapter* %20, i32 %23, i64 %24)
  %26 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INTR_MODE_LEGACY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %13
  %37 = load i32, i32* @esas2r_interrupt, align 4
  br label %40

38:                                               ; preds = %13
  %39 = load i32, i32* @esas2r_msi_interrupt, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %47 = call i64 @request_irq(i32 %30, i32 %41, i64 %42, i32 %45, %struct.esas2r_adapter* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %51 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, i32, ...) @esas2r_log(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %70

57:                                               ; preds = %40
  %58 = load i32, i32* @AF2_IRQ_CLAIMED, align 4
  %59 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %59, i32 0, i32 2
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %63 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %3, align 8
  %69 = call i32 (i32, i8*, i32, ...) @esas2r_log(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %67, i64 %68)
  br label %70

70:                                               ; preds = %57, %49
  ret void
}

declare dso_local i32 @esas2r_log(i32, i8*, i32, ...) #1

declare dso_local i64 @request_irq(i32, i32, i64, i32, %struct.esas2r_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
