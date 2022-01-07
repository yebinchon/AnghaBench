; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_device_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_device_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.report_phys_lun_extended = type { i32 }
%struct.report_log_lun_extended = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.report_lun_header = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"report physical LUNs failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"report logical LUNs failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.report_phys_lun_extended**, %struct.report_log_lun_extended**)* @pqi_get_device_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_get_device_lists(%struct.pqi_ctrl_info* %0, %struct.report_phys_lun_extended** %1, %struct.report_log_lun_extended** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pqi_ctrl_info*, align 8
  %6 = alloca %struct.report_phys_lun_extended**, align 8
  %7 = alloca %struct.report_log_lun_extended**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.report_log_lun_extended*, align 8
  %12 = alloca %struct.report_log_lun_extended*, align 8
  %13 = alloca %struct.report_lun_header, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %5, align 8
  store %struct.report_phys_lun_extended** %1, %struct.report_phys_lun_extended*** %6, align 8
  store %struct.report_log_lun_extended** %2, %struct.report_log_lun_extended*** %7, align 8
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %15 = load %struct.report_phys_lun_extended**, %struct.report_phys_lun_extended*** %6, align 8
  %16 = bitcast %struct.report_phys_lun_extended** %15 to i8**
  %17 = call i32 @pqi_report_phys_luns(%struct.pqi_ctrl_info* %14, i8** %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %22 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %20, %3
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %28 = load %struct.report_log_lun_extended**, %struct.report_log_lun_extended*** %7, align 8
  %29 = bitcast %struct.report_log_lun_extended** %28 to i8**
  %30 = call i32 @pqi_report_logical_luns(%struct.pqi_ctrl_info* %27, i8** %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %35 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.report_log_lun_extended**, %struct.report_log_lun_extended*** %7, align 8
  %41 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %40, align 8
  store %struct.report_log_lun_extended* %41, %struct.report_log_lun_extended** %12, align 8
  %42 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %12, align 8
  %43 = icmp ne %struct.report_log_lun_extended* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %12, align 8
  %46 = getelementptr inbounds %struct.report_log_lun_extended, %struct.report_log_lun_extended* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i64 @get_unaligned_be32(i32* %47)
  store i64 %48, i64* %9, align 8
  br label %52

49:                                               ; preds = %39
  %50 = call i32 @memset(%struct.report_lun_header* %13, i32 0, i32 4)
  %51 = bitcast %struct.report_lun_header* %13 to %struct.report_log_lun_extended*
  store %struct.report_log_lun_extended* %51, %struct.report_log_lun_extended** %12, align 8
  store i64 0, i64* %9, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i64, i64* %9, align 8
  %54 = add i64 4, %53
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.report_log_lun_extended* @kmalloc(i64 %56, i32 %57)
  store %struct.report_log_lun_extended* %58, %struct.report_log_lun_extended** %11, align 8
  %59 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %11, align 8
  %60 = icmp ne %struct.report_log_lun_extended* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %52
  %62 = load %struct.report_log_lun_extended**, %struct.report_log_lun_extended*** %7, align 8
  %63 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %62, align 8
  %64 = call i32 @kfree(%struct.report_log_lun_extended* %63)
  %65 = load %struct.report_log_lun_extended**, %struct.report_log_lun_extended*** %7, align 8
  store %struct.report_log_lun_extended* null, %struct.report_log_lun_extended** %65, align 8
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %89

68:                                               ; preds = %52
  %69 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %11, align 8
  %70 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %12, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @memcpy(%struct.report_log_lun_extended* %69, %struct.report_log_lun_extended* %70, i64 %71)
  %73 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %11, align 8
  %74 = bitcast %struct.report_log_lun_extended* %73 to %struct.report_lun_header*
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.report_lun_header, %struct.report_lun_header* %74, i64 %75
  %77 = call i32 @memset(%struct.report_lun_header* %76, i32 0, i32 4)
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 4
  %80 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %11, align 8
  %81 = getelementptr inbounds %struct.report_log_lun_extended, %struct.report_log_lun_extended* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32 @put_unaligned_be32(i64 %79, i32* %82)
  %84 = load %struct.report_log_lun_extended**, %struct.report_log_lun_extended*** %7, align 8
  %85 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %84, align 8
  %86 = call i32 @kfree(%struct.report_log_lun_extended* %85)
  %87 = load %struct.report_log_lun_extended*, %struct.report_log_lun_extended** %11, align 8
  %88 = load %struct.report_log_lun_extended**, %struct.report_log_lun_extended*** %7, align 8
  store %struct.report_log_lun_extended* %87, %struct.report_log_lun_extended** %88, align 8
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %68, %61
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @pqi_report_phys_luns(%struct.pqi_ctrl_info*, i8**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pqi_report_logical_luns(%struct.pqi_ctrl_info*, i8**) #1

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i32 @memset(%struct.report_lun_header*, i32, i32) #1

declare dso_local %struct.report_log_lun_extended* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.report_log_lun_extended*) #1

declare dso_local i32 @memcpy(%struct.report_log_lun_extended*, %struct.report_log_lun_extended*, i64) #1

declare dso_local i32 @put_unaligned_be32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
