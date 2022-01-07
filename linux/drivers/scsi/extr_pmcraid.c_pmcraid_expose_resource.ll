; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_expose_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_expose_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_config_table_entry = type { i64, i32, i32, i32 }

@RES_TYPE_VSET = common dso_local global i64 0, align 8
@PMCRAID_FW_VERSION_1 = common dso_local global i64 0, align 8
@RES_TYPE_GSCSI = common dso_local global i64 0, align 8
@PMCRAID_VIRTUAL_ENCL_BUS_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.pmcraid_config_table_entry*)* @pmcraid_expose_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_expose_resource(i64 %0, %struct.pmcraid_config_table_entry* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pmcraid_config_table_entry*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.pmcraid_config_table_entry* %1, %struct.pmcraid_config_table_entry** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pmcraid_config_table_entry*, %struct.pmcraid_config_table_entry** %4, align 8
  %7 = getelementptr inbounds %struct.pmcraid_config_table_entry, %struct.pmcraid_config_table_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RES_TYPE_VSET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @PMCRAID_FW_VERSION_1, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.pmcraid_config_table_entry*, %struct.pmcraid_config_table_entry** %4, align 8
  %17 = getelementptr inbounds %struct.pmcraid_config_table_entry, %struct.pmcraid_config_table_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %37

22:                                               ; preds = %11
  %23 = load %struct.pmcraid_config_table_entry*, %struct.pmcraid_config_table_entry** %4, align 8
  %24 = getelementptr inbounds %struct.pmcraid_config_table_entry, %struct.pmcraid_config_table_entry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.pmcraid_config_table_entry*, %struct.pmcraid_config_table_entry** %4, align 8
  %30 = getelementptr inbounds %struct.pmcraid_config_table_entry, %struct.pmcraid_config_table_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i1 [ false, %22 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %15
  br label %53

38:                                               ; preds = %2
  %39 = load %struct.pmcraid_config_table_entry*, %struct.pmcraid_config_table_entry** %4, align 8
  %40 = getelementptr inbounds %struct.pmcraid_config_table_entry, %struct.pmcraid_config_table_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RES_TYPE_GSCSI, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.pmcraid_config_table_entry*, %struct.pmcraid_config_table_entry** %4, align 8
  %46 = getelementptr inbounds %struct.pmcraid_config_table_entry, %struct.pmcraid_config_table_entry* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @RES_BUS(i32 %47)
  %49 = load i64, i64* @PMCRAID_VIRTUAL_ENCL_BUS_ID, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %38
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @RES_BUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
