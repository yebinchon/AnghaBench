; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_wq_copy_cmpl_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_wq_copy_cmpl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.misc_stats }
%struct.misc_stats = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@fnic_fcpio_cmpl_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_wq_copy_cmpl_handler(%struct.fnic* %0, i32 %1) #0 {
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.misc_stats*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load %struct.fnic*, %struct.fnic** %3, align 8
  %15 = getelementptr inbounds %struct.fnic, %struct.fnic* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.misc_stats* %16, %struct.misc_stats** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %73, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.fnic*, %struct.fnic** %3, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.fnic*, %struct.fnic** %3, align 8
  %26 = getelementptr inbounds %struct.fnic, %struct.fnic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %24, %27
  %29 = load %struct.fnic*, %struct.fnic** %3, align 8
  %30 = getelementptr inbounds %struct.fnic, %struct.fnic* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load i64, i64* @jiffies, align 8
  store i64 %33, i64* %10, align 8
  %34 = load %struct.fnic*, %struct.fnic** %3, align 8
  %35 = getelementptr inbounds %struct.fnic, %struct.fnic* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* @fnic_fcpio_cmpl_handler, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @vnic_cq_copy_service(i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i64, i64* @jiffies, align 8
  store i64 %43, i64* %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.misc_stats*, %struct.misc_stats** %9, align 8
  %52 = getelementptr inbounds %struct.misc_stats, %struct.misc_stats* %51, i32 0, i32 2
  %53 = call i64 @atomic64_read(i32* %52)
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %23
  %56 = load %struct.misc_stats*, %struct.misc_stats** %9, align 8
  %57 = getelementptr inbounds %struct.misc_stats, %struct.misc_stats* %56, i32 0, i32 2
  %58 = load i64, i64* %12, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @atomic64_set(i32* %57, i32 %59)
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @jiffies_to_msecs(i64 %61)
  store i64 %62, i64* %13, align 8
  %63 = load %struct.misc_stats*, %struct.misc_stats** %9, align 8
  %64 = getelementptr inbounds %struct.misc_stats, %struct.misc_stats* %63, i32 0, i32 1
  %65 = load i64, i64* %13, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @atomic64_set(i32* %64, i32 %66)
  %68 = load %struct.misc_stats*, %struct.misc_stats** %9, align 8
  %69 = getelementptr inbounds %struct.misc_stats, %struct.misc_stats* %68, i32 0, i32 0
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @atomic64_set(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %55, %23
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %17

76:                                               ; preds = %17
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @vnic_cq_copy_service(i32*, i32, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
