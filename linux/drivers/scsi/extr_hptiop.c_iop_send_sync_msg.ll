; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_iop_send_sync_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_iop_send_sync_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.hptiop_hba*)*, i32 (%struct.hptiop_hba*)*, i32 (%struct.hptiop_hba*, i64)*, i32 (%struct.hptiop_hba*)* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hptiop_hba*, i64, i64)* @iop_send_sync_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_send_sync_msg(%struct.hptiop_hba* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hptiop_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %9 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %11 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32 (%struct.hptiop_hba*)*, i32 (%struct.hptiop_hba*)** %13, align 8
  %15 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %16 = call i32 %14(%struct.hptiop_hba* %15)
  %17 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %18 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32 (%struct.hptiop_hba*, i64)*, i32 (%struct.hptiop_hba*, i64)** %20, align 8
  %22 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 %21(%struct.hptiop_hba* %22, i64 %23)
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %56, %3
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %31 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @spin_lock_irq(i32 %34)
  %36 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %37 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32 (%struct.hptiop_hba*)*, i32 (%struct.hptiop_hba*)** %39, align 8
  %41 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %42 = call i32 %40(%struct.hptiop_hba* %41)
  %43 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %44 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @spin_unlock_irq(i32 %47)
  %49 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %50 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %29
  br label %59

54:                                               ; preds = %29
  %55 = call i32 @msleep(i32 1)
  br label %56

56:                                               ; preds = %54
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %25

59:                                               ; preds = %53, %25
  %60 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %61 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.hptiop_hba*)*, i32 (%struct.hptiop_hba*)** %63, align 8
  %65 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %66 = call i32 %64(%struct.hptiop_hba* %65)
  %67 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %68 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 -1
  ret i32 %72
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
