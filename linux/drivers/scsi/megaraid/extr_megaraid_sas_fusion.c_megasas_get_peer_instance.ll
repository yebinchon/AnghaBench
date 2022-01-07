; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_get_peer_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_get_peer_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.megasas_instance** }
%struct.megasas_instance = type { i32, i64, i64 }

@MAX_MGMT_ADAPTERS = common dso_local global i32 0, align 4
@megasas_mgmt_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MEGASAS_CLUSTER_ID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.megasas_instance* (%struct.megasas_instance*)* @megasas_get_peer_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.megasas_instance* @megasas_get_peer_instance(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %63, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MAX_MGMT_ADAPTERS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %66

9:                                                ; preds = %5
  %10 = load %struct.megasas_instance**, %struct.megasas_instance*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.megasas_instance*, %struct.megasas_instance** %10, i64 %12
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %13, align 8
  %15 = icmp ne %struct.megasas_instance* %14, null
  br i1 %15, label %16, label %62

16:                                               ; preds = %9
  %17 = load %struct.megasas_instance**, %struct.megasas_instance*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.megasas_instance*, %struct.megasas_instance** %17, i64 %19
  %21 = load %struct.megasas_instance*, %struct.megasas_instance** %20, align 8
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %23 = icmp ne %struct.megasas_instance* %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %16
  %25 = load %struct.megasas_instance**, %struct.megasas_instance*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.megasas_instance*, %struct.megasas_instance** %25, i64 %27
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %28, align 8
  %30 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %24
  %34 = load %struct.megasas_instance**, %struct.megasas_instance*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.megasas_instance*, %struct.megasas_instance** %34, i64 %36
  %38 = load %struct.megasas_instance*, %struct.megasas_instance** %37, align 8
  %39 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %33
  %43 = load %struct.megasas_instance**, %struct.megasas_instance*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.megasas_instance*, %struct.megasas_instance** %43, i64 %45
  %47 = load %struct.megasas_instance*, %struct.megasas_instance** %46, align 8
  %48 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %51 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MEGASAS_CLUSTER_ID_SIZE, align 4
  %54 = call i64 @memcmp(i32 %49, i32 %52, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %42
  %57 = load %struct.megasas_instance**, %struct.megasas_instance*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.megasas_instance*, %struct.megasas_instance** %57, i64 %59
  %61 = load %struct.megasas_instance*, %struct.megasas_instance** %60, align 8
  store %struct.megasas_instance* %61, %struct.megasas_instance** %2, align 8
  br label %67

62:                                               ; preds = %42, %33, %24, %16, %9
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %5

66:                                               ; preds = %5
  store %struct.megasas_instance* null, %struct.megasas_instance** %2, align 8
  br label %67

67:                                               ; preds = %66, %56
  %68 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  ret %struct.megasas_instance* %68
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
