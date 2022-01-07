; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_do_analysis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_do_analysis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dasd_fba_private* }
%struct.dasd_fba_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown blocksize %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*)* @dasd_fba_do_analysis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_fba_do_analysis(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca %struct.dasd_fba_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %7 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %10, align 8
  store %struct.dasd_fba_private* %11, %struct.dasd_fba_private** %4, align 8
  %12 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %13 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dasd_check_blocksize(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i32, i32* @DBF_WARNING, align 4
  %21 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %22 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %25 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DBF_DEV_EVENT(i32 %20, %struct.TYPE_4__* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %61

30:                                               ; preds = %1
  %31 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %32 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %36 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %38 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %42 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %44 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  store i32 512, i32* %5, align 4
  br label %45

45:                                               ; preds = %57, %30
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %48 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %54 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %45

60:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @dasd_check_blocksize(i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
