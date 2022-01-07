; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_initialize_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_initialize_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_vport*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@lpfc_els_retry_delay = common dso_local global i32 0, align 4
@NLP_NO_SID = common dso_local global i32 0, align 4
@NLP_FC4_NONE = common dso_local global i32 0, align 4
@NLP_EVT_NOTHING_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32)* @lpfc_initialize_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_initialize_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %8 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %7, i32 0, i32 11
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %11, i32 0, i32 10
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %15, i32 0, i32 9
  %17 = load i32, i32* @lpfc_els_retry_delay, align 4
  %18 = call i32 @timer_setup(i32* %16, i32 %17, i32 0)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %24 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %23, i32 0, i32 7
  store %struct.lpfc_vport* %22, %struct.lpfc_vport** %24, align 8
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @NLP_NO_SID, align 4
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %32 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @NLP_FC4_NONE, align 4
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %36, i32 0, i32 3
  %38 = call i32 @kref_init(i32* %37)
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %40 = call i32 @NLP_INT_NODE_ACT(%struct.lpfc_nodelist* %39)
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %41, i32 0, i32 2
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %48 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @NLP_EVT_NOTHING_PENDING, align 4
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @NLP_INT_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
