; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla2xxx_copy_atioqueues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla2xxx_copy_atioqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.qla2xxx_mqueue_chain = type { i32, i8* }
%struct.qla2xxx_mqueue_header = type { i8*, i8*, i8* }
%struct.anon = type { i32, i8* }

@DUMP_CHAIN_QUEUE = common dso_local global i32 0, align 4
@TYPE_ATIO_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qla_hw_data*, i8*, i32**)* @qla2xxx_copy_atioqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla2xxx_copy_atioqueues(%struct.qla_hw_data* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.qla2xxx_mqueue_chain*, align 8
  %9 = alloca %struct.qla2xxx_mqueue_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.anon, align 8
  %13 = alloca %struct.anon*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %4, align 8
  br label %105

21:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  store %struct.anon* %12, %struct.anon** %13, align 8
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.anon*, %struct.anon** %13, align 8
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.anon*, %struct.anon** %13, align 8
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %100, %21
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %103

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to %struct.qla2xxx_mqueue_chain*
  store %struct.qla2xxx_mqueue_chain* %40, %struct.qla2xxx_mqueue_chain** %8, align 8
  %41 = load %struct.qla2xxx_mqueue_chain*, %struct.qla2xxx_mqueue_chain** %8, align 8
  %42 = getelementptr inbounds %struct.qla2xxx_mqueue_chain, %struct.qla2xxx_mqueue_chain* %41, i32 0, i32 0
  %43 = load i32**, i32*** %7, align 8
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* @DUMP_CHAIN_QUEUE, align 4
  %45 = call i8* @htonl(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.qla2xxx_mqueue_chain*, %struct.qla2xxx_mqueue_chain** %8, align 8
  %48 = getelementptr inbounds %struct.qla2xxx_mqueue_chain, %struct.qla2xxx_mqueue_chain* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.anon*, %struct.anon** %13, align 8
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = add i64 40, %53
  %55 = trunc i64 %54 to i32
  %56 = call i8* @htonl(i32 %55)
  %57 = load %struct.qla2xxx_mqueue_chain*, %struct.qla2xxx_mqueue_chain** %8, align 8
  %58 = getelementptr inbounds %struct.qla2xxx_mqueue_chain, %struct.qla2xxx_mqueue_chain* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr i8, i8* %59, i64 16
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = bitcast i8* %61 to %struct.qla2xxx_mqueue_header*
  store %struct.qla2xxx_mqueue_header* %62, %struct.qla2xxx_mqueue_header** %9, align 8
  %63 = load i32, i32* @TYPE_ATIO_QUEUE, align 4
  %64 = call i8* @htonl(i32 %63)
  %65 = load %struct.qla2xxx_mqueue_header*, %struct.qla2xxx_mqueue_header** %9, align 8
  %66 = getelementptr inbounds %struct.qla2xxx_mqueue_header, %struct.qla2xxx_mqueue_header* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i8* @htonl(i32 %67)
  %69 = load %struct.qla2xxx_mqueue_header*, %struct.qla2xxx_mqueue_header** %9, align 8
  %70 = getelementptr inbounds %struct.qla2xxx_mqueue_header, %struct.qla2xxx_mqueue_header* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.anon*, %struct.anon** %13, align 8
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i8* @htonl(i32 %76)
  %78 = load %struct.qla2xxx_mqueue_header*, %struct.qla2xxx_mqueue_header** %9, align 8
  %79 = getelementptr inbounds %struct.qla2xxx_mqueue_header, %struct.qla2xxx_mqueue_header* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr i8, i8* %80, i64 24
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.anon*, %struct.anon** %13, align 8
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.anon*, %struct.anon** %13, align 8
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memcpy(i8* %82, i8* %85, i32 %91)
  %93 = load %struct.anon*, %struct.anon** %13, align 8
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr i8, i8* %98, i64 %97
  store i8* %99, i8** %6, align 8
  br label %100

100:                                              ; preds = %38
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %34

103:                                              ; preds = %34
  %104 = load i8*, i8** %6, align 8
  store i8* %104, i8** %4, align 8
  br label %105

105:                                              ; preds = %103, %19
  %106 = load i8*, i8** %4, align 8
  ret i8* %106
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
