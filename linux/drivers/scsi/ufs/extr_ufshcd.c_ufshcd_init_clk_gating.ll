; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_init_clk_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_init_clk_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32 }

@ufshcd_gate_work = common dso_local global i32 0, align 4
@ufshcd_ungate_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ufs_clk_gating_%d\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ufshcd_clkgate_delay_show = common dso_local global i32 0, align 4
@ufshcd_clkgate_delay_store = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"clkgate_delay_ms\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to create sysfs for clkgate_delay\0A\00", align 1
@ufshcd_clkgate_enable_show = common dso_local global i32 0, align 4
@ufshcd_clkgate_enable_store = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"clkgate_enable\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to create sysfs for clkgate_enable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_init_clk_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_init_clk_gating(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca [18 x i8], align 16
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = call i32 @ufshcd_is_clkgating_allowed(%struct.ufs_hba* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %117

8:                                                ; preds = %1
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 150, i32* %11, align 8
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %13 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %15 = load i32, i32* @ufshcd_gate_work, align 4
  %16 = call i32 @INIT_DELAYED_WORK(i32* %14, i32 %15)
  %17 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %18 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 5
  %20 = load i32, i32* @ufshcd_ungate_work, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 0
  %23 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i8* %23)
  %25 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %26 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snprintf(i8* %22, i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 0
  %32 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %33 = call i32 @alloc_ordered_workqueue(i8* %31, i32 %32)
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %35 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %38 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @ufshcd_clkgate_delay_show, align 4
  %41 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %42 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @ufshcd_clkgate_delay_store, align 4
  %46 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %47 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 8
  %50 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %51 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %53)
  %55 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %56 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %59, align 8
  %60 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %61 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 420, i32* %64, align 8
  %65 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %66 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %69 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = call i64 @device_create_file(i32 %67, %struct.TYPE_8__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %8
  %74 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %75 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %8
  %79 = load i32, i32* @ufshcd_clkgate_enable_show, align 4
  %80 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %81 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* @ufshcd_clkgate_enable_store, align 4
  %85 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %86 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 8
  %89 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %90 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %92)
  %94 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %95 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %98, align 8
  %99 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %100 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store i32 420, i32* %103, align 8
  %104 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %105 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %108 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = call i64 @device_create_file(i32 %106, %struct.TYPE_8__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %78
  %113 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %114 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %7, %112, %78
  ret void
}

declare dso_local i32 @ufshcd_is_clkgating_allowed(%struct.ufs_hba*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_7__*) #1

declare dso_local i64 @device_create_file(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
