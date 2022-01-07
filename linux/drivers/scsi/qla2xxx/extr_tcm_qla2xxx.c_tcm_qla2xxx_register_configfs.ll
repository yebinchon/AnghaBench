; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_register_configfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_register_configfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"TCM QLOGIC QLA2XXX fabric module %s on %s/%s on %s\0A\00", align 1
@QLA2XXX_VERSION = common dso_local global i32 0, align 4
@tcm_qla2xxx_ops = common dso_local global i32 0, align 4
@tcm_qla2xxx_npiv_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"tcm_qla2xxx_free\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@tcm_qla2xxx_free_wq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tcm_qla2xxx_register_configfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_qla2xxx_register_configfs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @QLA2XXX_VERSION, align 4
  %4 = call %struct.TYPE_2__* (...) @utsname()
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.TYPE_2__* (...) @utsname()
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_2__* (...) @utsname()
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %6, i32 %9, i32 %12)
  %14 = call i32 @target_register_template(i32* @tcm_qla2xxx_ops)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %38

19:                                               ; preds = %0
  %20 = call i32 @target_register_template(i32* @tcm_qla2xxx_npiv_ops)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %35

24:                                               ; preds = %19
  %25 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %26 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 0)
  store i32 %26, i32* @tcm_qla2xxx_free_wq, align 4
  %27 = load i32, i32* @tcm_qla2xxx_free_wq, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %38

33:                                               ; preds = %29
  %34 = call i32 @target_unregister_template(i32* @tcm_qla2xxx_npiv_ops)
  br label %35

35:                                               ; preds = %33, %23
  %36 = call i32 @target_unregister_template(i32* @tcm_qla2xxx_ops)
  %37 = load i32, i32* %2, align 4
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %35, %32, %17
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @utsname(...) #1

declare dso_local i32 @target_register_template(i32*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @target_unregister_template(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
