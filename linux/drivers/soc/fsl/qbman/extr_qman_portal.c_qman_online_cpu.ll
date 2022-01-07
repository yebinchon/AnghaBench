; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_portal.c_qman_online_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_portal.c_qman_online_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qm_portal_config = type { i32 }

@affine_portals = common dso_local global %struct.qman_portal** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qman_online_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_online_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qman_portal*, align 8
  %4 = alloca %struct.qm_portal_config*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.qman_portal**, %struct.qman_portal*** @affine_portals, align 8
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.qman_portal*, %struct.qman_portal** %5, i64 %7
  %9 = load %struct.qman_portal*, %struct.qman_portal** %8, align 8
  store %struct.qman_portal* %9, %struct.qman_portal** %3, align 8
  %10 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %11 = icmp ne %struct.qman_portal* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %14 = call %struct.qm_portal_config* @qman_get_qm_portal_config(%struct.qman_portal* %13)
  store %struct.qm_portal_config* %14, %struct.qm_portal_config** %4, align 8
  %15 = load %struct.qm_portal_config*, %struct.qm_portal_config** %4, align 8
  %16 = icmp ne %struct.qm_portal_config* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.qm_portal_config*, %struct.qm_portal_config** %4, align 8
  %19 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @cpumask_of(i32 %21)
  %23 = call i32 @irq_set_affinity(i32 %20, i32 %22)
  %24 = load %struct.qm_portal_config*, %struct.qm_portal_config** %4, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @qman_portal_update_sdest(%struct.qm_portal_config* %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %12
  br label %28

28:                                               ; preds = %27, %1
  ret i32 0
}

declare dso_local %struct.qm_portal_config* @qman_get_qm_portal_config(%struct.qman_portal*) #1

declare dso_local i32 @irq_set_affinity(i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @qman_portal_update_sdest(%struct.qm_portal_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
