; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_update_device_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_update_device_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, i64 }

@DCMD_SUCCESS = common dso_local global i32 0, align 4
@SCAN_PD_CHANNEL = common dso_local global i32 0, align 4
@SCAN_VD_CHANNEL = common dso_local global i32 0, align 4
@MR_LD_QUERY_TYPE_EXPOSED_TO_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, i32)* @megasas_update_device_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_update_device_list(%struct.megasas_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @DCMD_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %8 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %13 = call i32 @megasas_host_device_list_query(%struct.megasas_instance* %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DCMD_SUCCESS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %63

18:                                               ; preds = %11
  br label %62

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SCAN_PD_CHANNEL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %26 = call i32 @megasas_get_pd_list(%struct.megasas_instance* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @DCMD_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %63

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SCAN_VD_CHANNEL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %39 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %44 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %49 = call i64 @megasas_get_ld_vf_affiliation(%struct.megasas_instance* %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47, %37
  %52 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %53 = load i32, i32* @MR_LD_QUERY_TYPE_EXPOSED_TO_HOST, align 4
  %54 = call i32 @megasas_ld_list_query(%struct.megasas_instance* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @DCMD_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %47, %42
  br label %61

61:                                               ; preds = %60, %32
  br label %62

62:                                               ; preds = %61, %18
  br label %63

63:                                               ; preds = %62, %58, %30, %17
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @megasas_host_device_list_query(%struct.megasas_instance*, i32) #1

declare dso_local i32 @megasas_get_pd_list(%struct.megasas_instance*) #1

declare dso_local i64 @megasas_get_ld_vf_affiliation(%struct.megasas_instance*, i32) #1

declare dso_local i32 @megasas_ld_list_query(%struct.megasas_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
