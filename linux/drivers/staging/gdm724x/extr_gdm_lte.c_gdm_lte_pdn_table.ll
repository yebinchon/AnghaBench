; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_pdn_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_pdn_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nic = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i8*, i64 }
%struct.TYPE_3__ = type { i32, i32 (i32)* }
%struct.hci_pdn_table_ind = type { i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"pdn deactivated\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"pdn activated, nic_type=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*, i32)* @gdm_lte_pdn_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdm_lte_pdn_table(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nic*, align 8
  %8 = alloca %struct.hci_pdn_table_ind*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.nic* @netdev_priv(%struct.net_device* %10)
  store %struct.nic* %11, %struct.nic** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.hci_pdn_table_ind*
  store %struct.hci_pdn_table_ind* %13, %struct.hci_pdn_table_ind** %8, align 8
  %14 = load %struct.nic*, %struct.nic** %7, align 8
  %15 = getelementptr inbounds %struct.nic, %struct.nic* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.nic*, %struct.nic** %7, align 8
  %20 = getelementptr inbounds %struct.nic, %struct.nic* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %18(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.hci_pdn_table_ind*, %struct.hci_pdn_table_ind** %8, align 8
  %26 = getelementptr inbounds %struct.hci_pdn_table_ind, %struct.hci_pdn_table_ind* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %3
  %30 = load %struct.nic*, %struct.nic** %7, align 8
  %31 = getelementptr inbounds %struct.nic, %struct.nic* %30, i32 0, i32 0
  %32 = call i32 @memset(%struct.TYPE_4__* %31, i32 0, i32 4)
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %64

35:                                               ; preds = %3
  %36 = load %struct.hci_pdn_table_ind*, %struct.hci_pdn_table_ind** %8, align 8
  %37 = getelementptr inbounds %struct.hci_pdn_table_ind, %struct.hci_pdn_table_ind* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nic*, %struct.nic** %7, align 8
  %40 = getelementptr inbounds %struct.nic, %struct.nic* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i64 %38, i64* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.hci_pdn_table_ind*, %struct.hci_pdn_table_ind** %8, align 8
  %44 = getelementptr inbounds %struct.hci_pdn_table_ind, %struct.hci_pdn_table_ind* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @gdm_dev32_to_cpu(i32 %42, i32 %45)
  %47 = load %struct.nic*, %struct.nic** %7, align 8
  %48 = getelementptr inbounds %struct.nic, %struct.nic* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.hci_pdn_table_ind*, %struct.hci_pdn_table_ind** %8, align 8
  %52 = getelementptr inbounds %struct.hci_pdn_table_ind, %struct.hci_pdn_table_ind* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @gdm_dev32_to_cpu(i32 %50, i32 %53)
  %55 = load %struct.nic*, %struct.nic** %7, align 8
  %56 = getelementptr inbounds %struct.nic, %struct.nic* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = load %struct.nic*, %struct.nic** %7, align 8
  %60 = getelementptr inbounds %struct.nic, %struct.nic* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %35, %29
  ret void
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i8* @gdm_dev32_to_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
