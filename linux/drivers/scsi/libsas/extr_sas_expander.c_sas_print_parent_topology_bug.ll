; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_print_parent_topology_bug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_print_parent_topology_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, i32, %struct.domain_device* }
%struct.ex_phy = type { i32 }

@sas_print_parent_topology_bug.ex_type = internal global [130 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"fanout\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"%s ex %016llx phy%02d <--> %s ex %016llx phy%02d has %c:%c routing link!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*, %struct.ex_phy*, %struct.ex_phy*)* @sas_print_parent_topology_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_print_parent_topology_bug(%struct.domain_device* %0, %struct.ex_phy* %1, %struct.ex_phy* %2) #0 {
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.ex_phy*, align 8
  %6 = alloca %struct.ex_phy*, align 8
  %7 = alloca %struct.domain_device*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store %struct.ex_phy* %1, %struct.ex_phy** %5, align 8
  store %struct.ex_phy* %2, %struct.ex_phy** %6, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 2
  %10 = load %struct.domain_device*, %struct.domain_device** %9, align 8
  store %struct.domain_device* %10, %struct.domain_device** %7, align 8
  %11 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds [130 x i8*], [130 x i8*]* @sas_print_parent_topology_bug.ex_type, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %17 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @SAS_ADDR(i32 %18)
  %20 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %21 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %24 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds [130 x i8*], [130 x i8*]* @sas_print_parent_topology_bug.ex_type, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SAS_ADDR(i32 %30)
  %32 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %33 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %36 = load %struct.ex_phy*, %struct.ex_phy** %5, align 8
  %37 = call i32 @sas_route_char(%struct.domain_device* %35, %struct.ex_phy* %36)
  %38 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %39 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %40 = call i32 @sas_route_char(%struct.domain_device* %38, %struct.ex_phy* %39)
  %41 = call i32 @pr_notice(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %15, i32 %19, i32 %22, i8* %27, i32 %31, i32 %34, i32 %37, i32 %40)
  ret void
}

declare dso_local i32 @pr_notice(i8*, i8*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_route_char(%struct.domain_device*, %struct.ex_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
