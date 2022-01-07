; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_fail_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_fail_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { i32 (%struct.ibmvfc_event*)*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IBMVFC_MAD_DRIVER_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*, i32)* @ibmvfc_fail_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_fail_request(%struct.ibmvfc_event* %0, i32 %1) #0 {
  %3 = alloca %struct.ibmvfc_event*, align 8
  %4 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %3, align 8
  %6 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %5, i32 0, i32 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 16
  %12 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %3, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %3, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %16, i32 0, i32 0
  store i32 (%struct.ibmvfc_event*)* @ibmvfc_scsi_eh_done, i32 (%struct.ibmvfc_event*)** %17, align 8
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* @IBMVFC_MAD_DRIVER_FAILED, align 4
  %20 = call i32 @cpu_to_be16(i32 %19)
  %21 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %3, align 8
  %22 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %9
  %27 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %27, i32 0, i32 2
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %3, align 8
  %31 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %30, i32 0, i32 1
  %32 = call i32 @del_timer(i32* %31)
  %33 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %3, align 8
  %34 = call i32 @ibmvfc_trc_end(%struct.ibmvfc_event* %33)
  %35 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %3, align 8
  %36 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %35, i32 0, i32 0
  %37 = load i32 (%struct.ibmvfc_event*)*, i32 (%struct.ibmvfc_event*)** %36, align 8
  %38 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %3, align 8
  %39 = call i32 %37(%struct.ibmvfc_event* %38)
  ret void
}

declare dso_local i32 @ibmvfc_scsi_eh_done(%struct.ibmvfc_event*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ibmvfc_trc_end(%struct.ibmvfc_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
