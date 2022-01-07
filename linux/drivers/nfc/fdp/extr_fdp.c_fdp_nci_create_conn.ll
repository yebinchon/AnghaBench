; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_create_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_create_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.fdp_nci_info = type { i32 }
%struct.core_conn_create_dest_spec_params = type { i32, i32 }

@FDP_PATCH_CONN_PARAM_TYPE = common dso_local global i32 0, align 4
@FDP_PATCH_CONN_DEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @fdp_nci_create_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp_nci_create_conn(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.fdp_nci_info*, align 8
  %5 = alloca %struct.core_conn_create_dest_spec_params, align 4
  %6 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %7 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %8 = call %struct.fdp_nci_info* @nci_get_drvdata(%struct.nci_dev* %7)
  store %struct.fdp_nci_info* %8, %struct.fdp_nci_info** %4, align 8
  %9 = load i32, i32* @FDP_PATCH_CONN_PARAM_TYPE, align 4
  %10 = getelementptr inbounds %struct.core_conn_create_dest_spec_params, %struct.core_conn_create_dest_spec_params* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.core_conn_create_dest_spec_params, %struct.core_conn_create_dest_spec_params* %5, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %13 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FDP_PATCH_CONN_DEST, align 4
  %16 = call i32 @nci_core_conn_create(i32 %14, i32 %15, i32 1, i32 8, %struct.core_conn_create_dest_spec_params* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %23 = load i32, i32* @FDP_PATCH_CONN_DEST, align 4
  %24 = call i32 @nci_get_conn_info_by_dest_type_params(%struct.nci_dev* %22, i32 %23, i32* null)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.fdp_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @nci_core_conn_create(i32, i32, i32, i32, %struct.core_conn_create_dest_spec_params*) #1

declare dso_local i32 @nci_get_conn_info_by_dest_type_params(%struct.nci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
