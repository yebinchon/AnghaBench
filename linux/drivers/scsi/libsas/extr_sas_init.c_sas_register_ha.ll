; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_register_ha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_register_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SAS_HA_REGISTERED = common dso_local global i32 0, align 4
@SAS_PHY_SHUTDOWN_THRES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't register sas phys:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"couldn't register sas ports:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't start event thread:%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"%s_event_q\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s_disco_q\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_register_ha(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %7 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %6, i32 0, i32 15
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %10 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %9, i32 0, i32 14
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %13 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %16 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sas_hash_addr(i32 %14, i32 %17)
  %19 = load i32, i32* @SAS_HA_REGISTERED, align 4
  %20 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %21 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %20, i32 0, i32 11
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %24 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %23, i32 0, i32 10
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %27 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %26, i32 0, i32 9
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %30 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %29, i32 0, i32 8
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %33 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %32, i32 0, i32 7
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %36 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %35, i32 0, i32 6
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load i32, i32* @SAS_PHY_SHUTDOWN_THRES, align 4
  %39 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %40 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %42 = call i32 @sas_register_phys(%struct.sas_ha_struct* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @pr_notice(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %116

49:                                               ; preds = %1
  %50 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %51 = call i32 @sas_register_ports(%struct.sas_ha_struct* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @pr_notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %114

57:                                               ; preds = %49
  %58 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %59 = call i32 @sas_init_events(%struct.sas_ha_struct* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @pr_notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %111

65:                                               ; preds = %57
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %69 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %70 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @dev_name(i32 %71)
  %73 = call i32 @snprintf(i8* %68, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %75 = call i8* @create_singlethread_workqueue(i8* %74)
  %76 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %77 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %79 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %65
  br label %111

83:                                               ; preds = %65
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %85 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %86 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @dev_name(i32 %87)
  %89 = call i32 @snprintf(i8* %84, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %91 = call i8* @create_singlethread_workqueue(i8* %90)
  %92 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %93 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %95 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %83
  br label %106

99:                                               ; preds = %83
  %100 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %101 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %100, i32 0, i32 2
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %104 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %103, i32 0, i32 1
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  store i32 0, i32* %2, align 4
  br label %116

106:                                              ; preds = %98
  %107 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %108 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @destroy_workqueue(i8* %109)
  br label %111

111:                                              ; preds = %106, %82, %62
  %112 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %113 = call i32 @sas_unregister_ports(%struct.sas_ha_struct* %112)
  br label %114

114:                                              ; preds = %111, %54
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %99, %45
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sas_hash_addr(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sas_register_phys(%struct.sas_ha_struct*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @sas_register_ports(%struct.sas_ha_struct*) #1

declare dso_local i32 @sas_init_events(%struct.sas_ha_struct*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

declare dso_local i32 @sas_unregister_ports(%struct.sas_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
