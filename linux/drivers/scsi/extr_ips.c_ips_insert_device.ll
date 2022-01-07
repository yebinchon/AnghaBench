; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_insert_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_insert_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ips_insert_device\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ips\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@ips_hotplug = common dso_local global i64 0, align 8
@ips_ha = common dso_local global i32* null, align 8
@ips_num_controllers = common dso_local global i64 0, align 8
@ips_next_controller = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ips_sh = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ips_insert_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_insert_device(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 -1, i32* %6, align 4
  %8 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 1)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_request_regions(%struct.pci_dev* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %70

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @ips_init_phase1(%struct.pci_dev* %22, i32* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ips_init_phase2(i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i64, i64* @ips_hotplug, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @ips_register_scsi(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32*, i32** @ips_ha, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ips_free(i32 %42)
  store i32 -1, i32* %7, align 4
  br label %44

44:                                               ; preds = %37, %33
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SUCCESS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* @ips_num_controllers, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* @ips_num_controllers, align 8
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i64, i64* @ips_num_controllers, align 8
  store i64 %53, i64* @ips_next_controller, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %67

59:                                               ; preds = %52
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load i32*, i32** @ips_sh, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pci_set_drvdata(%struct.pci_dev* %60, i32 %65)
  store i32 0, i32* %3, align 4
  br label %74

67:                                               ; preds = %56
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_release_regions(%struct.pci_dev* %68)
  br label %70

70:                                               ; preds = %67, %20
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = call i32 @pci_disable_device(%struct.pci_dev* %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %59, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @ips_init_phase1(%struct.pci_dev*, i32*) #1

declare dso_local i32 @ips_init_phase2(i32) #1

declare dso_local i64 @ips_register_scsi(i32) #1

declare dso_local i32 @ips_free(i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
