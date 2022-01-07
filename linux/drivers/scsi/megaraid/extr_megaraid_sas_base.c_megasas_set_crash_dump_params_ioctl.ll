; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_crash_dump_params_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_crash_dump_params_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.megasas_instance** }
%struct.megasas_instance = type { i32, %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.megasas_cmd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@megasas_mgmt_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MEGASAS_HBA_OPERATIONAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Application firmware crash dump mode set success\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Application firmware crash dump mode set failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_cmd*)* @megasas_set_crash_dump_params_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_set_crash_dump_params_ioctl(%struct.megasas_cmd* %0) #0 {
  %2 = alloca %struct.megasas_cmd*, align 8
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.megasas_cmd* %0, %struct.megasas_cmd** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.megasas_cmd*, %struct.megasas_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %61, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = load %struct.megasas_instance**, %struct.megasas_instance*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @megasas_mgmt_info, i32 0, i32 1), align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.megasas_instance*, %struct.megasas_instance** %21, i64 %23
  %25 = load %struct.megasas_instance*, %struct.megasas_instance** %24, align 8
  store %struct.megasas_instance* %25, %struct.megasas_instance** %3, align 8
  %26 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %27 = icmp ne %struct.megasas_instance* %26, null
  br i1 %27, label %28, label %60

28:                                               ; preds = %20
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %30 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %35 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %34, i32 0, i32 2
  %36 = call i64 @atomic_read(i32* %35)
  %37 = load i64, i64* @MEGASAS_HBA_OPERATIONAL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @megasas_set_crash_dump_params(%struct.megasas_instance* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %47 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %49 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %59

53:                                               ; preds = %39, %33
  %54 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %55 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = call i32 @dev_info(i32* %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %59

59:                                               ; preds = %53, %44
  br label %60

60:                                               ; preds = %59, %28, %20
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @megasas_set_crash_dump_params(%struct.megasas_instance*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
