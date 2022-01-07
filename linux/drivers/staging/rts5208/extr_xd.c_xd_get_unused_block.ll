; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_get_unused_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_get_unused_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.xd_info }
%struct.xd_info = type { i32, %struct.zone_entry* }
%struct.zone_entry = type { i64, i64, i64, i32* }

@.str = private unnamed_addr constant [66 x i8] c"Get unused block from invalid zone (zone_no = %d, zone_cnt = %d)\0A\00", align 1
@BLK_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Get unused block fail, no unused block available\0A\00", align 1
@XD_FREE_TABLE_CNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Get unused block fail, invalid get_index\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Get unused block from index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @xd_get_unused_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_get_unused_block(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xd_info*, align 8
  %7 = alloca %struct.zone_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 0
  store %struct.xd_info* %10, %struct.xd_info** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.xd_info*, %struct.xd_info** %6, align 8
  %13 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %18 = call i32 @rtsx_dev(%struct.rtsx_chip* %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.xd_info*, %struct.xd_info** %6, align 8
  %21 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* @BLK_NOT_FOUND, align 4
  store i32 %24, i32* %3, align 4
  br label %110

25:                                               ; preds = %2
  %26 = load %struct.xd_info*, %struct.xd_info** %6, align 8
  %27 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %26, i32 0, i32 1
  %28 = load %struct.zone_entry*, %struct.zone_entry** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %28, i64 %30
  store %struct.zone_entry* %31, %struct.zone_entry** %7, align 8
  %32 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %33 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %25
  %37 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %38 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %41 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36, %25
  %45 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %46 = call i32 @free_zone(%struct.zone_entry* %45)
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %48 = call i32 @rtsx_dev(%struct.rtsx_chip* %47)
  %49 = call i32 (i32, i8*, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @BLK_NOT_FOUND, align 4
  store i32 %50, i32* %3, align 4
  br label %110

51:                                               ; preds = %36
  %52 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %53 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XD_FREE_TABLE_CNT, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %59 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57, %51
  %63 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %64 = call i32 @free_zone(%struct.zone_entry* %63)
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %66 = call i32 @rtsx_dev(%struct.rtsx_chip* %65)
  %67 = call i32 (i32, i8*, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @BLK_NOT_FOUND, align 4
  store i32 %68, i32* %3, align 4
  br label %110

69:                                               ; preds = %57
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %71 = call i32 @rtsx_dev(%struct.rtsx_chip* %70)
  %72 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %73 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  %76 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %77 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %80 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  %84 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %85 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %88 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 65535, i32* %91, align 4
  %92 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %93 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @XD_FREE_TABLE_CNT, align 8
  %96 = icmp uge i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %69
  %98 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %99 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %69
  %101 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %102 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, -1
  store i64 %104, i64* %102, align 8
  %105 = load i32, i32* %5, align 4
  %106 = shl i32 %105, 10
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %100, %62, %44, %16
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @free_zone(%struct.zone_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
