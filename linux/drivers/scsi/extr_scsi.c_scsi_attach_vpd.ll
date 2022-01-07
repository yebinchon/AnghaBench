; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi.c_scsi_attach_vpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi.c_scsi_attach_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32 }
%struct.scsi_vpd = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_attach_vpd(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_vpd*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = call i32 @scsi_device_supports_vpd(%struct.scsi_device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  %10 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %11 = call %struct.scsi_vpd* @scsi_get_vpd_buf(%struct.scsi_device* %10, i32 0)
  store %struct.scsi_vpd* %11, %struct.scsi_vpd** %4, align 8
  %12 = load %struct.scsi_vpd*, %struct.scsi_vpd** %4, align 8
  %13 = icmp ne %struct.scsi_vpd* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %57

15:                                               ; preds = %9
  store i32 4, i32* %3, align 4
  br label %16

16:                                               ; preds = %51, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.scsi_vpd*, %struct.scsi_vpd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_vpd, %struct.scsi_vpd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = load %struct.scsi_vpd*, %struct.scsi_vpd** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_vpd, %struct.scsi_vpd* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %33 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 1
  %35 = call i32 @scsi_update_vpd_page(%struct.scsi_device* %32, i32 128, i32* %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load %struct.scsi_vpd*, %struct.scsi_vpd** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_vpd, %struct.scsi_vpd* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 131
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %47 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %48 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %47, i32 0, i32 0
  %49 = call i32 @scsi_update_vpd_page(%struct.scsi_device* %46, i32 131, i32* %48)
  br label %50

50:                                               ; preds = %45, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %16

54:                                               ; preds = %16
  %55 = load %struct.scsi_vpd*, %struct.scsi_vpd** %4, align 8
  %56 = call i32 @kfree(%struct.scsi_vpd* %55)
  br label %57

57:                                               ; preds = %54, %14, %8
  ret void
}

declare dso_local i32 @scsi_device_supports_vpd(%struct.scsi_device*) #1

declare dso_local %struct.scsi_vpd* @scsi_get_vpd_buf(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_update_vpd_page(%struct.scsi_device*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.scsi_vpd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
