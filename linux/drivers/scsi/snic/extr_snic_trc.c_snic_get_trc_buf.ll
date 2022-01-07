; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_trc.c_snic_get_trc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_trc.c_snic_get_trc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.snic_trc }
%struct.snic_trc = type { i64, i64, i64, i32, %struct.snic_trc_data* }
%struct.snic_trc_data = type { i64 }

@snic_glob = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snic_trc_data* @snic_get_trc_buf() #0 {
  %1 = alloca %struct.snic_trc*, align 8
  %2 = alloca %struct.snic_trc_data*, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @snic_glob, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store %struct.snic_trc* %5, %struct.snic_trc** %1, align 8
  store %struct.snic_trc_data* null, %struct.snic_trc_data** %2, align 8
  %6 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %7 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %6, i32 0, i32 3
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %11 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %10, i32 0, i32 4
  %12 = load %struct.snic_trc_data*, %struct.snic_trc_data** %11, align 8
  %13 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %14 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %12, i64 %15
  store %struct.snic_trc_data* %16, %struct.snic_trc_data** %2, align 8
  %17 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %18 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %22 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %25 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %0
  %29 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %30 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %0
  %32 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %33 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %36 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %41 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %40, i32 0, i32 3
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %66

44:                                               ; preds = %31
  %45 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %46 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %50 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %53 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %58 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %44
  %60 = load %struct.snic_trc_data*, %struct.snic_trc_data** %2, align 8
  %61 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %63 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %62, i32 0, i32 3
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %59, %39
  %67 = load %struct.snic_trc_data*, %struct.snic_trc_data** %2, align 8
  ret %struct.snic_trc_data* %67
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
