; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_fake_rw_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_fake_rw_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@sdebug_fake_rw = common dso_local global i32 0, align 4
@fake_storep = common dso_local global i32* null, align 8
@sdebug_dev_size_mb = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"out of memory, 9\0A\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @fake_rw_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fake_rw_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %15 = icmp eq i32 1, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @sdebug_fake_rw, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* @sdebug_fake_rw, align 4
  %26 = load i32, i32* @sdebug_fake_rw, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 0, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i32*, i32** @fake_storep, align 8
  %34 = icmp eq i32* null, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i64, i64* @sdebug_dev_size_mb, align 8
  %37 = mul i64 %36, 1048576
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32* @vzalloc(i64 %38)
  store i32* %39, i32** @fake_storep, align 8
  %40 = load i32*, i32** @fake_storep, align 8
  %41 = icmp eq i32* null, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* @ENOMEM, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %4, align 8
  br label %54

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %32, %29
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* @sdebug_fake_rw, align 4
  br label %49

49:                                               ; preds = %47, %19
  %50 = load i64, i64* %7, align 8
  store i64 %50, i64* %4, align 8
  br label %54

51:                                               ; preds = %16, %12, %3
  %52 = load i64, i64* @EINVAL, align 8
  %53 = sub i64 0, %52
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %51, %49, %42
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32* @vzalloc(i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
