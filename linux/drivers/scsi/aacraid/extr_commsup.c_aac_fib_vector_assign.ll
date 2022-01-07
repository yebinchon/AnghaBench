; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_fib_vector_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_fib_vector_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, i64, %struct.TYPE_2__*, %struct.fib* }
%struct.TYPE_2__ = type { i64 }
%struct.fib = type { i64 }

@AAC_NUM_MGT_FIB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_fib_vector_assign(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fib*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 1, i64* %4, align 8
  store %struct.fib* null, %struct.fib** %5, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %7 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %6, i32 0, i32 3
  %8 = load %struct.fib*, %struct.fib** %7, align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.fib, %struct.fib* %8, i64 %9
  store %struct.fib* %10, %struct.fib** %5, align 8
  br label %11

11:                                               ; preds = %59, %1
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %14 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AAC_NUM_MGT_FIB, align 8
  %19 = add i64 %17, %18
  %20 = icmp ult i64 %12, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %11
  %22 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %23 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %29 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AAC_NUM_MGT_FIB, align 8
  %34 = add i64 %32, %33
  %35 = sub i64 %34, 1
  %36 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %37 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = icmp ugt i64 %27, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %26, %21
  %42 = load %struct.fib*, %struct.fib** %5, align 8
  %43 = getelementptr inbounds %struct.fib, %struct.fib* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %58

44:                                               ; preds = %26
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.fib*, %struct.fib** %5, align 8
  %47 = getelementptr inbounds %struct.fib, %struct.fib* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %52 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i64 1, i64* %4, align 8
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %3, align 8
  %62 = load %struct.fib*, %struct.fib** %5, align 8
  %63 = getelementptr inbounds %struct.fib, %struct.fib* %62, i32 1
  store %struct.fib* %63, %struct.fib** %5, align 8
  br label %11

64:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
