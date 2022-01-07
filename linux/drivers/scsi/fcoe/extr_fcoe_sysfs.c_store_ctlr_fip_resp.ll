; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_sysfs.c_store_ctlr_fip_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_sysfs.c_store_ctlr_fip_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fcoe_ctlr_device = type { i32 }
%struct.fcoe_ctlr = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_ctlr_fip_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_ctlr_fip_resp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fcoe_ctlr_device*, align 8
  %11 = alloca %struct.fcoe_ctlr*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.fcoe_ctlr_device* @dev_to_ctlr(%struct.device* %12)
  store %struct.fcoe_ctlr_device* %13, %struct.fcoe_ctlr_device** %10, align 8
  %14 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %15 = call %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device* %14)
  store %struct.fcoe_ctlr* %15, %struct.fcoe_ctlr** %11, align 8
  %16 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %11, align 8
  %17 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %30, %4
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 49
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %11, align 8
  %44 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %11, align 8
  %46 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %5, align 8
  br label %69

49:                                               ; preds = %36
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 48
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %11, align 8
  %57 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %11, align 8
  %59 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i64, i64* %9, align 8
  store i64 %61, i64* %5, align 8
  br label %69

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %30, %24
  %64 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %11, align 8
  %65 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* @EINVAL, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %63, %55, %42
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local %struct.fcoe_ctlr_device* @dev_to_ctlr(%struct.device*) #1

declare dso_local %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
