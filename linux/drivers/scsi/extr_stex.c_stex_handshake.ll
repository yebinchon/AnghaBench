; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_handshake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { i64, i32, %struct.TYPE_2__*, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@st_yel = common dso_local global i64 0, align 8
@st_P3 = common dso_local global i64 0, align 8
@MU_STATE_STARTED = common dso_local global i32 0, align 4
@MU_STATE_FAILED = common dso_local global i32 0, align 4
@MU_STATE_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_hba*)* @stex_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stex_handshake(%struct.st_hba* %0) #0 {
  %2 = alloca %struct.st_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.st_hba* %0, %struct.st_hba** %2, align 8
  %6 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %7 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @st_yel, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %13 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @st_P3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %1
  %18 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %19 = call i32 @stex_ss_handshake(%struct.st_hba* %18)
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %11
  %21 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %22 = call i32 @stex_common_handshake(%struct.st_hba* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %25 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_lock_irqsave(i32 %28, i64 %29)
  %31 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %32 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %23
  %37 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %38 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %37, i32 0, i32 8
  store i64 0, i64* %38, align 8
  %39 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %40 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %42 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %44 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %46 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @MU_STATE_STARTED, align 4
  %48 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %49 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %23
  %51 = load i32, i32* @MU_STATE_FAILED, align 4
  %52 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %53 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %36
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MU_STATE_RESETTING, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %60 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %59, i32 0, i32 3
  %61 = call i32 @wake_up_all(i32* %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %64 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32 %67, i64 %68)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @stex_ss_handshake(%struct.st_hba*) #1

declare dso_local i32 @stex_common_handshake(%struct.st_hba*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
