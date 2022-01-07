; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_adv_get_next_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_adv_get_next_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.adv_dvc_var = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [25 x i8] c"invalid vpa offset 0x%x\0A\00", align 1
@ADV_CQ_STOPPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.adv_dvc_var*)* @adv_get_next_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @adv_get_next_carrier(%struct.adv_dvc_var* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.adv_dvc_var*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.adv_dvc_var* %0, %struct.adv_dvc_var** %3, align 8
  %6 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %3, align 8
  %7 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %32

21:                                               ; preds = %15
  %22 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.TYPE_4__* @adv_get_carrier(%struct.adv_dvc_var* %22, i32 %23)
  %25 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %3, align 8
  %26 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %25, i32 0, i32 0
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load i32, i32* @ADV_CQ_STOPPER, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %2, align 8
  br label %32

32:                                               ; preds = %21, %18
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %33
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ASC_DBG(i32, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @adv_get_carrier(%struct.adv_dvc_var*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
