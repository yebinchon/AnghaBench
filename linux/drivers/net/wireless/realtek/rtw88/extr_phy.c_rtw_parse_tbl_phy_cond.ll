; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_parse_tbl_phy_cond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_parse_tbl_phy_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_table = type { i32, i32 (%struct.rtw_dev.0*, %struct.rtw_table*, i32, i32)*, %union.phy_table_tile* }
%struct.rtw_dev.0 = type opaque
%union.phy_table_tile = type { %struct.rtw_phy_cond }
%struct.rtw_phy_cond = type { i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_parse_tbl_phy_cond(%struct.rtw_dev* %0, %struct.rtw_table* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_table*, align 8
  %5 = alloca %union.phy_table_tile*, align 8
  %6 = alloca %union.phy_table_tile*, align 8
  %7 = alloca %struct.rtw_phy_cond, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_table* %1, %struct.rtw_table** %4, align 8
  %10 = load %struct.rtw_table*, %struct.rtw_table** %4, align 8
  %11 = getelementptr inbounds %struct.rtw_table, %struct.rtw_table* %10, i32 0, i32 2
  %12 = load %union.phy_table_tile*, %union.phy_table_tile** %11, align 8
  store %union.phy_table_tile* %12, %union.phy_table_tile** %5, align 8
  %13 = load %union.phy_table_tile*, %union.phy_table_tile** %5, align 8
  %14 = load %struct.rtw_table*, %struct.rtw_table** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_table, %struct.rtw_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %union.phy_table_tile, %union.phy_table_tile* %13, i64 %18
  store %union.phy_table_tile* %19, %union.phy_table_tile** %6, align 8
  %20 = bitcast %struct.rtw_phy_cond* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = call i32 @BUILD_BUG_ON(i32 1)
  br label %22

22:                                               ; preds = %90, %2
  %23 = load %union.phy_table_tile*, %union.phy_table_tile** %5, align 8
  %24 = load %union.phy_table_tile*, %union.phy_table_tile** %6, align 8
  %25 = icmp ult %union.phy_table_tile* %23, %24
  br i1 %25, label %26, label %93

26:                                               ; preds = %22
  %27 = load %union.phy_table_tile*, %union.phy_table_tile** %5, align 8
  %28 = bitcast %union.phy_table_tile* %27 to %struct.rtw_phy_cond*
  %29 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %union.phy_table_tile*, %union.phy_table_tile** %5, align 8
  %34 = bitcast %union.phy_table_tile* %33 to %struct.rtw_phy_cond*
  %35 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %44 [
    i32 129, label %37
    i32 130, label %38
    i32 128, label %43
    i32 131, label %43
  ]

37:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %49

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  store i32 %42, i32* %8, align 4
  br label %49

43:                                               ; preds = %32, %32
  br label %44

44:                                               ; preds = %32, %43
  %45 = load %union.phy_table_tile*, %union.phy_table_tile** %5, align 8
  %46 = bitcast %union.phy_table_tile* %45 to %struct.rtw_phy_cond*
  %47 = bitcast %struct.rtw_phy_cond* %7 to i8*
  %48 = bitcast %struct.rtw_phy_cond* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 32, i1 false)
  br label %49

49:                                               ; preds = %44, %38, %37
  br label %89

50:                                               ; preds = %26
  %51 = load %union.phy_table_tile*, %union.phy_table_tile** %5, align 8
  %52 = bitcast %union.phy_table_tile* %51 to %struct.rtw_phy_cond*
  %53 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %61 = call i64 @check_positive(%struct.rtw_dev* %60, %struct.rtw_phy_cond* byval(%struct.rtw_phy_cond) align 8 %7)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %65

64:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %63
  br label %67

66:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %65
  br label %88

68:                                               ; preds = %50
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load %struct.rtw_table*, %struct.rtw_table** %4, align 8
  %73 = getelementptr inbounds %struct.rtw_table, %struct.rtw_table* %72, i32 0, i32 1
  %74 = load i32 (%struct.rtw_dev.0*, %struct.rtw_table*, i32, i32)*, i32 (%struct.rtw_dev.0*, %struct.rtw_table*, i32, i32)** %73, align 8
  %75 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %76 = bitcast %struct.rtw_dev* %75 to %struct.rtw_dev.0*
  %77 = load %struct.rtw_table*, %struct.rtw_table** %4, align 8
  %78 = load %union.phy_table_tile*, %union.phy_table_tile** %5, align 8
  %79 = bitcast %union.phy_table_tile* %78 to %struct.TYPE_2__*
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %union.phy_table_tile*, %union.phy_table_tile** %5, align 8
  %83 = bitcast %union.phy_table_tile* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %74(%struct.rtw_dev.0* %76, %struct.rtw_table* %77, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %71, %68
  br label %88

88:                                               ; preds = %87, %67
  br label %89

89:                                               ; preds = %88, %49
  br label %90

90:                                               ; preds = %89
  %91 = load %union.phy_table_tile*, %union.phy_table_tile** %5, align 8
  %92 = getelementptr inbounds %union.phy_table_tile, %union.phy_table_tile* %91, i32 1
  store %union.phy_table_tile* %92, %union.phy_table_tile** %5, align 8
  br label %22

93:                                               ; preds = %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @check_positive(%struct.rtw_dev*, %struct.rtw_phy_cond* byval(%struct.rtw_phy_cond) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
