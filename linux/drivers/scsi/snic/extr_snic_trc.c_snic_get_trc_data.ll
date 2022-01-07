; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_trc.c_snic_get_trc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_trc.c_snic_get_trc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.snic_trc }
%struct.snic_trc = type { i64, i64, i64, i32, %struct.snic_trc_data* }
%struct.snic_trc_data = type { i64 }

@snic_glob = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_get_trc_data(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snic_trc_data*, align 8
  %7 = alloca %struct.snic_trc*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snic_trc_data* null, %struct.snic_trc_data** %6, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @snic_glob, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.snic_trc* %10, %struct.snic_trc** %7, align 8
  %11 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %12 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %11, i32 0, i32 3
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %16 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %19 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %24 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %23, i32 0, i32 3
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  store i32 -1, i32* %3, align 4
  br label %68

27:                                               ; preds = %2
  %28 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %29 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %28, i32 0, i32 4
  %30 = load %struct.snic_trc_data*, %struct.snic_trc_data** %29, align 8
  %31 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %32 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %30, i64 %33
  store %struct.snic_trc_data* %34, %struct.snic_trc_data** %6, align 8
  %35 = load %struct.snic_trc_data*, %struct.snic_trc_data** %6, align 8
  %36 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %41 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %40, i32 0, i32 3
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  store i32 -1, i32* %3, align 4
  br label %68

44:                                               ; preds = %27
  %45 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %46 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %50 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %53 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %58 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %44
  %60 = load %struct.snic_trc*, %struct.snic_trc** %7, align 8
  %61 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %60, i32 0, i32 3
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.snic_trc_data*, %struct.snic_trc_data** %6, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @snic_fmt_trc_data(%struct.snic_trc_data* %64, i8* %65, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %59, %39, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snic_fmt_trc_data(%struct.snic_trc_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
