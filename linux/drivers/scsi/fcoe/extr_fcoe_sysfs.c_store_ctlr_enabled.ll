; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_sysfs.c_store_ctlr_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_sysfs.c_store_ctlr_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fcoe_ctlr_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fcoe_ctlr_device*)* }

@EINVAL = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_ctlr_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_ctlr_enabled(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fcoe_ctlr_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.fcoe_ctlr_device* @dev_to_ctlr(%struct.device* %13)
  store %struct.fcoe_ctlr_device* %14, %struct.fcoe_ctlr_device** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 49
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %30

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 48
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %68

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %32 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %53 [
    i32 129, label %34
    i32 130, label %42
    i32 128, label %50
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %5, align 8
  br label %68

39:                                               ; preds = %34
  %40 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %41 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %40, i32 0, i32 0
  store i32 130, i32* %41, align 8
  br label %53

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %5, align 8
  br label %68

47:                                               ; preds = %42
  %48 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %49 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %48, i32 0, i32 0
  store i32 129, i32* %49, align 8
  br label %53

50:                                               ; preds = %30
  %51 = load i64, i64* @ENOTSUPP, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %5, align 8
  br label %68

53:                                               ; preds = %30, %47, %39
  %54 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %55 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.fcoe_ctlr_device*)*, i32 (%struct.fcoe_ctlr_device*)** %57, align 8
  %59 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %60 = call i32 %58(%struct.fcoe_ctlr_device* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %5, align 8
  br label %68

66:                                               ; preds = %53
  %67 = load i64, i64* %9, align 8
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %66, %63, %50, %45, %37, %26
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local %struct.fcoe_ctlr_device* @dev_to_ctlr(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
