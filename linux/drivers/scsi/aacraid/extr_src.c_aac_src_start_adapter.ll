; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_start_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_start_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, i32*, i32, i64, i64, %union.aac_init*, i64, i32, i32* }
%union.aac_init = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@AAC_COMM_MESSAGE_TYPE3 = common dso_local global i64 0, align 8
@INIT_STRUCT_BASE_ADDRESS = common dso_local global i32 0, align 4
@AAC_MAX_HRRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*)* @aac_src_start_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_src_start_adapter(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca %union.aac_init*, align 8
  %4 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %8 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %5
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %14 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %12, %15
  %17 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %18 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %16, i32* %22, align 4
  %23 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %24 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @atomic_set(i32* %28, i32 0)
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %5

33:                                               ; preds = %5
  %34 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %35 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %34, i32 0, i32 7
  %36 = call i32 @atomic_set(i32* %35, i32 0)
  %37 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %38 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %40 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %39, i32 0, i32 5
  %41 = load %union.aac_init*, %union.aac_init** %40, align 8
  store %union.aac_init* %41, %union.aac_init** %3, align 8
  %42 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %43 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AAC_COMM_MESSAGE_TYPE3, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %33
  %48 = call i32 (...) @ktime_get_real_seconds()
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %union.aac_init*, %union.aac_init** %3, align 8
  %51 = bitcast %union.aac_init* %50 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  %53 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %54 = load i32, i32* @INIT_STRUCT_BASE_ADDRESS, align 4
  %55 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %56 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @lower_32_bits(i64 %57)
  %59 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %60 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @upper_32_bits(i64 %61)
  %63 = load i32, i32* @AAC_MAX_HRRQ, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = add i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @src_sync_cmd(%struct.aac_dev* %53, i32 %54, i32 %58, i32 %62, i32 %68, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null)
  br label %83

70:                                               ; preds = %33
  %71 = call i32 (...) @ktime_get_real_seconds()
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %union.aac_init*, %union.aac_init** %3, align 8
  %74 = bitcast %union.aac_init* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %77 = load i32, i32* @INIT_STRUCT_BASE_ADDRESS, align 4
  %78 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %79 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @src_sync_cmd(%struct.aac_dev* %76, i32 %77, i32 %81, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null)
  br label %83

83:                                               ; preds = %70, %47
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @src_sync_cmd(%struct.aac_dev*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
