; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_adisc_npr_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_adisc_npr_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.lpfc_iocbq* }

@NLP_NODEV_REMOVE = common dso_local global i32 0, align 4
@NLP_STE_FREED_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_cmpl_adisc_npr_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_adisc_npr_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %14, %struct.lpfc_iocbq** %10, align 8
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  store %struct.lpfc_iocbq* %18, %struct.lpfc_iocbq** %11, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %12, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %27 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NLP_NODEV_REMOVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %35 = call i32 @lpfc_drop_node(%struct.lpfc_vport* %33, %struct.lpfc_nodelist* %34)
  %36 = load i32, i32* @NLP_STE_FREED_NODE, align 4
  store i32 %36, i32* %5, align 4
  br label %41

37:                                               ; preds = %25, %4
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %39 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @lpfc_drop_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
