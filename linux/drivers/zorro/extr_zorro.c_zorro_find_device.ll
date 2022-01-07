; ModuleID = '/home/carl/AnghaBench/linux/drivers/zorro/extr_zorro.c_zorro_find_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/zorro/extr_zorro.c_zorro_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { i64 }

@zorro_num_autocon = common dso_local global i32 0, align 4
@zorro_autocon = common dso_local global %struct.zorro_dev* null, align 8
@ZORRO_WILDCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zorro_dev* @zorro_find_device(i64 %0, %struct.zorro_dev* %1) #0 {
  %3 = alloca %struct.zorro_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zorro_dev*, align 8
  %6 = alloca %struct.zorro_dev*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.zorro_dev* %1, %struct.zorro_dev** %5, align 8
  %7 = load i32, i32* @zorro_num_autocon, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.zorro_dev* null, %struct.zorro_dev** %3, align 8
  br label %45

10:                                               ; preds = %2
  %11 = load %struct.zorro_dev*, %struct.zorro_dev** %5, align 8
  %12 = icmp ne %struct.zorro_dev* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.zorro_dev*, %struct.zorro_dev** %5, align 8
  %15 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %14, i64 1
  br label %19

16:                                               ; preds = %10
  %17 = load %struct.zorro_dev*, %struct.zorro_dev** @zorro_autocon, align 8
  %18 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %17, i64 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi %struct.zorro_dev* [ %15, %13 ], [ %18, %16 ]
  store %struct.zorro_dev* %20, %struct.zorro_dev** %6, align 8
  br label %21

21:                                               ; preds = %41, %19
  %22 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %23 = load %struct.zorro_dev*, %struct.zorro_dev** @zorro_autocon, align 8
  %24 = load i32, i32* @zorro_num_autocon, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %23, i64 %25
  %27 = icmp ult %struct.zorro_dev* %22, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @ZORRO_WILDCARD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %35 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %28
  %39 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  store %struct.zorro_dev* %39, %struct.zorro_dev** %3, align 8
  br label %45

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %43 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %42, i32 1
  store %struct.zorro_dev* %43, %struct.zorro_dev** %6, align 8
  br label %21

44:                                               ; preds = %21
  store %struct.zorro_dev* null, %struct.zorro_dev** %3, align 8
  br label %45

45:                                               ; preds = %44, %38, %9
  %46 = load %struct.zorro_dev*, %struct.zorro_dev** %3, align 8
  ret %struct.zorro_dev* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
