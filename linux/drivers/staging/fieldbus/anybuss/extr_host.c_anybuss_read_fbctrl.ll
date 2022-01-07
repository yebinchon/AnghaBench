; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_anybuss_read_fbctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_anybuss_read_fbctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_client = type { %struct.anybuss_host* }
%struct.anybuss_host = type { i32, i32, i32, i32 }
%struct.ab_task = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FBCTRL_AREA = common dso_local global i32 0, align 4
@MAX_FBCTRL_AREA_SZ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IND_AX_FBCTRL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anybuss_read_fbctrl(%struct.anybuss_client* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.anybuss_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.anybuss_host*, align 8
  %11 = alloca %struct.ab_task*, align 8
  %12 = alloca i32, align 4
  store %struct.anybuss_client* %0, %struct.anybuss_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.anybuss_client*, %struct.anybuss_client** %6, align 8
  %14 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %13, i32 0, i32 0
  %15 = load %struct.anybuss_host*, %struct.anybuss_host** %14, align 8
  store %struct.anybuss_host* %15, %struct.anybuss_host** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %67

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @FBCTRL_AREA, align 4
  %23 = load i32, i32* @MAX_FBCTRL_AREA_SZ, align 4
  %24 = call i32 @area_range_ok(i32 %20, i64 %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %67

29:                                               ; preds = %19
  %30 = load %struct.anybuss_host*, %struct.anybuss_host** %10, align 8
  %31 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IND_AX_FBCTRL, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.ab_task* @create_area_reader(i32 %32, i32 %33, i32 %34, i64 %35)
  store %struct.ab_task* %36, %struct.ab_task** %11, align 8
  %37 = load %struct.ab_task*, %struct.ab_task** %11, align 8
  %38 = icmp ne %struct.ab_task* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %67

42:                                               ; preds = %29
  %43 = load %struct.ab_task*, %struct.ab_task** %11, align 8
  %44 = load %struct.anybuss_host*, %struct.anybuss_host** %10, align 8
  %45 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.anybuss_host*, %struct.anybuss_host** %10, align 8
  %48 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %47, i32 0, i32 1
  %49 = load %struct.anybuss_host*, %struct.anybuss_host** %10, align 8
  %50 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %49, i32 0, i32 0
  %51 = call i32 @ab_task_enqueue_wait(%struct.ab_task* %43, i32 %46, i32* %48, i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %63

55:                                               ; preds = %42
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.ab_task*, %struct.ab_task** %11, align 8
  %58 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @memcpy(i8* %56, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %55, %54
  %64 = load %struct.ab_task*, %struct.ab_task** %11, align 8
  %65 = call i32 @ab_task_put(%struct.ab_task* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %39, %26, %18
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @area_range_ok(i32, i64, i32, i32) #1

declare dso_local %struct.ab_task* @create_area_reader(i32, i32, i32, i64) #1

declare dso_local i32 @ab_task_enqueue_wait(%struct.ab_task*, i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @ab_task_put(%struct.ab_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
