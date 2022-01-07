; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_set_unused_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_set_unused_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.xd_info }
%struct.xd_info = type { i32, %struct.zone_entry* }
%struct.zone_entry = type { i32, i32, i64* }

@.str = private unnamed_addr constant [64 x i8] c"Set unused block to invalid zone (zone_no = %d, zone_cnt = %d)\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@XD_FREE_TABLE_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Set unused block fail, invalid set_index\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Set unused block to index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*, i32)* @xd_set_unused_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xd_set_unused_block(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xd_info*, align 8
  %6 = alloca %struct.zone_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  store %struct.xd_info* %9, %struct.xd_info** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.xd_info*, %struct.xd_info** %5, align 8
  %14 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %19 = call i32 @rtsx_dev(%struct.rtsx_chip* %18)
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.xd_info*, %struct.xd_info** %5, align 8
  %22 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @dev_dbg(i32 %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.xd_info*, %struct.xd_info** %5, align 8
  %27 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %26, i32 0, i32 1
  %28 = load %struct.zone_entry*, %struct.zone_entry** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %28, i64 %30
  store %struct.zone_entry* %31, %struct.zone_entry** %6, align 8
  %32 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %33 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %25
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @xd_build_l2p_tbl(%struct.rtsx_chip* %37, i32 %38)
  %40 = load i64, i64* @STATUS_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %93

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %46 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @XD_FREE_TABLE_CNT, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %52 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50, %44
  %56 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %57 = call i32 @free_zone(%struct.zone_entry* %56)
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %59 = call i32 @rtsx_dev(%struct.rtsx_chip* %58)
  %60 = call i32 (i32, i8*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %93

61:                                               ; preds = %50
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %63 = call i32 @rtsx_dev(%struct.rtsx_chip* %62)
  %64 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %65 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 1023
  %70 = sext i32 %69 to i64
  %71 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %72 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %75 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %73, i64 %78
  store i64 %70, i64* %79, align 8
  %80 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %81 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @XD_FREE_TABLE_CNT, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %61
  %86 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %87 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %61
  %89 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %90 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %88, %55, %42, %17
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i64 @xd_build_l2p_tbl(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @free_zone(%struct.zone_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
