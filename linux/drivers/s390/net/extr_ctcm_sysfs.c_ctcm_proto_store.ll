; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_sysfs.c_ctcm_proto_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_sysfs.c_ctcm_proto_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ctcm_priv = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@CTCM_PROTO_S390 = common dso_local global i32 0, align 4
@CTCM_PROTO_LINUX = common dso_local global i32 0, align 4
@CTCM_PROTO_MPC = common dso_local global i32 0, align 4
@CTCM_PROTO_OS390 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ctcm_proto_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctcm_proto_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ctcm_priv*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.ctcm_priv* @dev_get_drvdata(%struct.device* %13)
  store %struct.ctcm_priv* %14, %struct.ctcm_priv** %12, align 8
  %15 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %16 = icmp ne %struct.ctcm_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @ENODEV, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %53

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoint(i8* %21, i32 0, i32* %10)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @CTCM_PROTO_S390, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @CTCM_PROTO_LINUX, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @CTCM_PROTO_MPC, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @CTCM_PROTO_OS390, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %20
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %53

44:                                               ; preds = %37, %33, %29, %25
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %47 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @SETUP, align 4
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @CTCM_DBF_DEV(i32 %48, %struct.device* %49, i8* %50)
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %44, %41, %17
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @CTCM_DBF_DEV(i32, %struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
