; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_get_data_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_get_data_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla82xx_uri_data_desc = type { i32 }
%struct.qla_hw_data = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.qla82xx_uri_table_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qla82xx_uri_data_desc* (%struct.qla_hw_data*, i32, i32)* @qla82xx_get_data_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qla82xx_uri_data_desc* @qla82xx_get_data_desc(%struct.qla_hw_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qla82xx_uri_data_desc*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qla82xx_uri_table_desc*, align 8
  %11 = alloca i64, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  store i32 %28, i32* %9, align 4
  store %struct.qla82xx_uri_table_desc* null, %struct.qla82xx_uri_table_desc** %10, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.qla82xx_uri_table_desc* @qla82xx_get_table_desc(i32* %29, i32 %30)
  store %struct.qla82xx_uri_table_desc* %31, %struct.qla82xx_uri_table_desc** %10, align 8
  %32 = load %struct.qla82xx_uri_table_desc*, %struct.qla82xx_uri_table_desc** %10, align 8
  %33 = icmp ne %struct.qla82xx_uri_table_desc* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store %struct.qla82xx_uri_data_desc* null, %struct.qla82xx_uri_data_desc** %4, align 8
  br label %52

35:                                               ; preds = %3
  %36 = load %struct.qla82xx_uri_table_desc*, %struct.qla82xx_uri_table_desc** %10, align 8
  %37 = getelementptr inbounds %struct.qla82xx_uri_table_desc, %struct.qla82xx_uri_table_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = load %struct.qla82xx_uri_table_desc*, %struct.qla82xx_uri_table_desc** %10, align 8
  %41 = getelementptr inbounds %struct.qla82xx_uri_table_desc, %struct.qla82xx_uri_table_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %39, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %11, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = bitcast i32* %50 to %struct.qla82xx_uri_data_desc*
  store %struct.qla82xx_uri_data_desc* %51, %struct.qla82xx_uri_data_desc** %4, align 8
  br label %52

52:                                               ; preds = %35, %34
  %53 = load %struct.qla82xx_uri_data_desc*, %struct.qla82xx_uri_data_desc** %4, align 8
  ret %struct.qla82xx_uri_data_desc* %53
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.qla82xx_uri_table_desc* @qla82xx_get_table_desc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
