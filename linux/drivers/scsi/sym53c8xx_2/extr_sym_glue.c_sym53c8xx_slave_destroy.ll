; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i64, i32 }
%struct.sym_hcb = type { %struct.TYPE_8__, i32, %struct.sym_tcb* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sym_tcb = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.sym_lcb = type { i64, i64 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Removing busy LCB (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @sym53c8xx_slave_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym53c8xx_slave_destroy(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_tcb*, align 8
  %5 = alloca %struct.sym_lcb*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.sym_hcb* @sym_get_hcb(i32 %9)
  store %struct.sym_hcb* %10, %struct.sym_hcb** %3, align 8
  %11 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %12 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %11, i32 0, i32 2
  %13 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %13, i64 %16
  store %struct.sym_tcb* %17, %struct.sym_tcb** %4, align 8
  %18 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.sym_lcb* @sym_lp(%struct.sym_tcb* %18, i64 %21)
  store %struct.sym_lcb* %22, %struct.sym_lcb** %5, align 8
  %23 = load %struct.sym_lcb*, %struct.sym_lcb** %5, align 8
  %24 = icmp ne %struct.sym_lcb* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %93

26:                                               ; preds = %1
  %27 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %28 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_lock_irqsave(i32 %32, i64 %33)
  %35 = load %struct.sym_lcb*, %struct.sym_lcb** %5, align 8
  %36 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %26
  %40 = load %struct.sym_lcb*, %struct.sym_lcb** %5, align 8
  %41 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39, %26
  %45 = load i32, i32* @KERN_WARNING, align 4
  %46 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %47 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %50 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @starget_printk(i32 %45, i32* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %55 = call i32 @sym_reset_scsi_bus(%struct.sym_hcb* %54, i32 1)
  br label %56

56:                                               ; preds = %44, %39
  %57 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %58 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %62 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @sym_free_lcb(%struct.sym_hcb* %57, i64 %60, i64 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %56
  %67 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %68 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %71 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %74 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %77 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %80 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %83 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %66, %56
  %85 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %86 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32 %90, i64 %91)
  br label %93

93:                                               ; preds = %84, %25
  ret void
}

declare dso_local %struct.sym_hcb* @sym_get_hcb(i32) #1

declare dso_local %struct.sym_lcb* @sym_lp(%struct.sym_tcb*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @starget_printk(i32, i32*, i8*, i32) #1

declare dso_local i32 @sym_reset_scsi_bus(%struct.sym_hcb*, i32) #1

declare dso_local i64 @sym_free_lcb(%struct.sym_hcb*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
