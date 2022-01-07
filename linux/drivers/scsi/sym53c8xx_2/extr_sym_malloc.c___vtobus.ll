; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_malloc.c___vtobus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_malloc.c___vtobus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i8*, i64, %struct.TYPE_4__* }

@SYM_MEM_CLUSTER_MASK = common dso_local global i64 0, align 8
@sym53c8xx_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sym: VTOBUS FAILED!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__vtobus(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @VTOB_HASH_CODE(i8* %11)
  store i32 %12, i32* %7, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load i64, i64* @SYM_MEM_CLUSTER_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @sym53c8xx_lock, i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.TYPE_5__* @___get_dma_pool(i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %8, align 8
  br label %33

33:                                               ; preds = %44, %25
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %39, %40
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i1 [ false, %33 ], [ %41, %36 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %8, align 8
  br label %33

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = add nsw i64 %57, %62
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* @sym53c8xx_lock, i64 %64)
  %66 = load i64, i64* %10, align 8
  ret i64 %66
}

declare dso_local i32 @VTOB_HASH_CODE(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_5__* @___get_dma_pool(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
