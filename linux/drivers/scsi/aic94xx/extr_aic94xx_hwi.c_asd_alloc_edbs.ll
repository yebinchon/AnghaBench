; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_alloc_edbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_alloc_edbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_seq_data }
%struct.asd_seq_data = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ASD_EDB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"num_edbs:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i32)* @asd_alloc_edbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_alloc_edbs(%struct.asd_ha_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_seq_data*, align 8
  %7 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %9 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %8, i32 0, i32 0
  store %struct.asd_seq_data* %9, %struct.asd_seq_data** %6, align 8
  %10 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %11 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_5__** @kmalloc_array(i32 %12, i32 8, i32 %13)
  %15 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %16 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %15, i32 0, i32 1
  store %struct.TYPE_5__** %14, %struct.TYPE_5__*** %16, align 8
  %17 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %18 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %18, align 8
  %20 = icmp ne %struct.TYPE_5__** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %99

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %28 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %33 = load i32, i32* @ASD_EDB_SIZE, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_5__* @asd_alloc_coherent(%struct.asd_ha_struct* %32, i32 %33, i32 %34)
  %36 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %37 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 %40
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %41, align 8
  %42 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %43 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 %46
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  br label %71

51:                                               ; preds = %31
  %52 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %53 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ASD_EDB_SIZE, align 4
  %62 = call i32 @memset(i32 %60, i32 0, i32 %61)
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %25

66:                                               ; preds = %25
  %67 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %68 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 0, i32* %3, align 4
  br label %99

71:                                               ; preds = %50
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %87, %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %79 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %80 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %81, i64 %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %78, %struct.TYPE_5__* %85)
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %7, align 4
  br label %74

90:                                               ; preds = %74
  %91 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %92 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %92, align 8
  %94 = call i32 @kfree(%struct.TYPE_5__** %93)
  %95 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %96 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %95, i32 0, i32 1
  store %struct.TYPE_5__** null, %struct.TYPE_5__*** %96, align 8
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %90, %66, %21
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_5__** @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @asd_alloc_coherent(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i32) #1

declare dso_local i32 @asd_free_coherent(%struct.asd_ha_struct*, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
