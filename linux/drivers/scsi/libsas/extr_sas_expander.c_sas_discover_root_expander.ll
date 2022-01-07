; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_discover_root_expander.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_discover_root_expander.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sas_expander_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_discover_root_expander(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_expander_device*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %6 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %7 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.sas_expander_device* @rphy_to_expander_device(i32 %8)
  store %struct.sas_expander_device* %9, %struct.sas_expander_device** %5, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @sas_rphy_add(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %19 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sas_expander_device*, %struct.sas_expander_device** %5, align 8
  %25 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %27 = call i32 @sas_discover_expander(%struct.domain_device* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %37

31:                                               ; preds = %17
  %32 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %33 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @sas_ex_bfs_disc(%struct.TYPE_4__* %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %44

37:                                               ; preds = %30
  %38 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %39 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sas_rphy_remove(i32 %40)
  br label %42

42:                                               ; preds = %37, %16
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %31
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.sas_expander_device* @rphy_to_expander_device(i32) #1

declare dso_local i32 @sas_rphy_add(i32) #1

declare dso_local i32 @sas_discover_expander(%struct.domain_device*) #1

declare dso_local i32 @sas_ex_bfs_disc(%struct.TYPE_4__*) #1

declare dso_local i32 @sas_rphy_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
