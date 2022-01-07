; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_unit.c_zfcp_unit_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_unit.c_zfcp_unit_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, i32, i32, i32 }
%struct.zfcp_unit = type { i32, %struct.TYPE_4__, i32, i64, %struct.zfcp_port* }
%struct.TYPE_4__ = type { i32, i32, i32* }

@zfcp_sysfs_port_units_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zfcp_unit_release = common dso_local global i32 0, align 4
@zfcp_unit_attr_groups = common dso_local global i32 0, align 4
@zfcp_unit_scsi_scan_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"0x%016llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_unit_add(%struct.zfcp_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zfcp_unit*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_port* %0, %struct.zfcp_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @mutex_lock(i32* @zfcp_sysfs_port_units_mutex)
  %9 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %10 = call i64 @zfcp_sysfs_port_is_removing(%struct.zfcp_port* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %99

15:                                               ; preds = %2
  %16 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.zfcp_unit* @zfcp_unit_find(%struct.zfcp_port* %16, i64 %17)
  store %struct.zfcp_unit* %18, %struct.zfcp_unit** %6, align 8
  %19 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %20 = icmp ne %struct.zfcp_unit* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %23 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %22, i32 0, i32 1
  %24 = call i32 @put_device(%struct.TYPE_4__* %23)
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %99

27:                                               ; preds = %15
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.zfcp_unit* @kzalloc(i32 48, i32 %28)
  store %struct.zfcp_unit* %29, %struct.zfcp_unit** %6, align 8
  %30 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %31 = icmp ne %struct.zfcp_unit* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %99

35:                                               ; preds = %27
  %36 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %37 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %38 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %37, i32 0, i32 4
  store %struct.zfcp_port* %36, %struct.zfcp_port** %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %41 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %43 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %42, i32 0, i32 3
  %44 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %45 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32* %43, i32** %46, align 8
  %47 = load i32, i32* @zfcp_unit_release, align 4
  %48 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %49 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @zfcp_unit_attr_groups, align 4
  %52 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %53 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %56 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %55, i32 0, i32 2
  %57 = load i32, i32* @zfcp_unit_scsi_scan_work, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %60 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %59, i32 0, i32 1
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @dev_set_name(%struct.TYPE_4__* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %35
  %65 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %66 = call i32 @kfree(%struct.zfcp_unit* %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %99

69:                                               ; preds = %35
  %70 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %71 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %70, i32 0, i32 1
  %72 = call i64 @device_register(%struct.TYPE_4__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %76 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %75, i32 0, i32 1
  %77 = call i32 @put_device(%struct.TYPE_4__* %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %99

80:                                               ; preds = %69
  %81 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %82 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %81, i32 0, i32 2
  %83 = call i32 @atomic_inc(i32* %82)
  %84 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %85 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %84, i32 0, i32 0
  %86 = call i32 @write_lock_irq(i32* %85)
  %87 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %88 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %87, i32 0, i32 0
  %89 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %90 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %89, i32 0, i32 1
  %91 = call i32 @list_add_tail(i32* %88, i32* %90)
  %92 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %93 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %92, i32 0, i32 0
  %94 = call i32 @write_unlock_irq(i32* %93)
  %95 = call i32 @mutex_unlock(i32* @zfcp_sysfs_port_units_mutex)
  %96 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %97 = call i32 @zfcp_unit_scsi_scan(%struct.zfcp_unit* %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %102

99:                                               ; preds = %74, %64, %32, %21, %12
  %100 = call i32 @mutex_unlock(i32* @zfcp_sysfs_port_units_mutex)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %80
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @zfcp_sysfs_port_is_removing(%struct.zfcp_port*) #1

declare dso_local %struct.zfcp_unit* @zfcp_unit_find(%struct.zfcp_port*, i64) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

declare dso_local %struct.zfcp_unit* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @dev_set_name(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.zfcp_unit*) #1

declare dso_local i64 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @zfcp_unit_scsi_scan(%struct.zfcp_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
