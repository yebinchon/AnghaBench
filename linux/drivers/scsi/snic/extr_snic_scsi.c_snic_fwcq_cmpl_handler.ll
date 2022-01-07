; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_fwcq_cmpl_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_fwcq_cmpl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snic_misc_stats }
%struct.snic_misc_stats = type { i32 }

@snic_io_cmpl_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_fwcq_cmpl_handler(%struct.snic* %0, i32 %1) #0 {
  %3 = alloca %struct.snic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snic_misc_stats*, align 8
  store %struct.snic* %0, %struct.snic** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.snic*, %struct.snic** %3, align 8
  %10 = getelementptr inbounds %struct.snic, %struct.snic* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.snic_misc_stats* %11, %struct.snic_misc_stats** %8, align 8
  %12 = load %struct.snic*, %struct.snic** %3, align 8
  %13 = getelementptr inbounds %struct.snic, %struct.snic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.snic*, %struct.snic** %3, align 8
  %18 = getelementptr inbounds %struct.snic, %struct.snic* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.snic*, %struct.snic** %3, align 8
  %23 = getelementptr inbounds %struct.snic, %struct.snic* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* @snic_io_cmpl_handler, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @vnic_cq_fw_service(i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.snic_misc_stats*, %struct.snic_misc_stats** %8, align 8
  %36 = getelementptr inbounds %struct.snic_misc_stats, %struct.snic_misc_stats* %35, i32 0, i32 0
  %37 = call i32 @atomic64_read(i32* %36)
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %21
  %40 = load %struct.snic_misc_stats*, %struct.snic_misc_stats** %8, align 8
  %41 = getelementptr inbounds %struct.snic_misc_stats, %struct.snic_misc_stats* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @atomic64_set(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @vnic_cq_fw_service(i32*, i32, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
