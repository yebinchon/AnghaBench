; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_fib_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_fib_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32, i32*, i32*, i32, %struct.TYPE_4__*, i32, %struct.fib* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.aac_dev = type { i32, %struct.fib* }

@FSAFS_NTC_FIB_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fib* @aac_fib_alloc(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.fib*, align 8
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca i64, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  %6 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %7 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %11 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %10, i32 0, i32 1
  %12 = load %struct.fib*, %struct.fib** %11, align 8
  store %struct.fib* %12, %struct.fib** %4, align 8
  %13 = load %struct.fib*, %struct.fib** %4, align 8
  %14 = icmp ne %struct.fib* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %17 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load %struct.fib*, %struct.fib** %4, align 8
  store %struct.fib* %20, %struct.fib** %2, align 8
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.fib*, %struct.fib** %4, align 8
  %23 = getelementptr inbounds %struct.fib, %struct.fib* %22, i32 0, i32 6
  %24 = load %struct.fib*, %struct.fib** %23, align 8
  %25 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %26 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %25, i32 0, i32 1
  store %struct.fib* %24, %struct.fib** %26, align 8
  %27 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %28 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* @FSAFS_NTC_FIB_CONTEXT, align 4
  %32 = load %struct.fib*, %struct.fib** %4, align 8
  %33 = getelementptr inbounds %struct.fib, %struct.fib* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.fib*, %struct.fib** %4, align 8
  %35 = getelementptr inbounds %struct.fib, %struct.fib* %34, i32 0, i32 0
  store i32 56, i32* %35, align 8
  %36 = load %struct.fib*, %struct.fib** %4, align 8
  %37 = getelementptr inbounds %struct.fib, %struct.fib* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.fib*, %struct.fib** %4, align 8
  %42 = getelementptr inbounds %struct.fib, %struct.fib* %41, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = load %struct.fib*, %struct.fib** %4, align 8
  %44 = getelementptr inbounds %struct.fib, %struct.fib* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load %struct.fib*, %struct.fib** %4, align 8
  %46 = getelementptr inbounds %struct.fib, %struct.fib* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.fib*, %struct.fib** %4, align 8
  store %struct.fib* %47, %struct.fib** %2, align 8
  br label %48

48:                                               ; preds = %21, %15
  %49 = load %struct.fib*, %struct.fib** %2, align 8
  ret %struct.fib* %49
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
