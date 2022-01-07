; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_megaraid_biosparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_megaraid_biosparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.block_device = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"invalid partition on this disk on channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.block_device*, i64, i32*)* @megaraid_biosparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megaraid_biosparam(%struct.scsi_device* %0, %struct.block_device* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_RAID_CH(%struct.TYPE_7__* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %4
  store i32 64, i32* %12, align 4
  store i32 32, i32* %13, align 4
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 %30, %33
  store i32 %34, i32* %14, align 4
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp sge i32 %36, 2097152
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  store i32 255, i32* %12, align 4
  store i32 63, i32* %13, align 4
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 %40, %43
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %38, %28
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  br label %112

55:                                               ; preds = %4
  %56 = load %struct.block_device*, %struct.block_device** %7, align 8
  %57 = call i8* @scsi_bios_ptable(%struct.block_device* %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = call i32 @scsi_partsize(i8* %61, i64 %62, i32* %64, i32* %66, i32* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @kfree(i8* %70)
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %5, align 4
  br label %113

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %83 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_info(i32* %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i32 64, i32* %12, align 4
  store i32 32, i32* %13, align 4
  %86 = load i64, i64* %8, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sdiv i32 %87, %90
  store i32 %91, i32* %14, align 4
  %92 = load i64, i64* %8, align 8
  %93 = trunc i64 %92 to i32
  %94 = icmp sge i32 %93, 2097152
  br i1 %94, label %95, label %102

95:                                               ; preds = %77
  store i32 255, i32* %12, align 4
  store i32 63, i32* %13, align 4
  %96 = load i64, i64* %8, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sdiv i32 %97, %100
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %95, %77
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %102, %45
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %74
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @IS_RAID_CH(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @scsi_bios_ptable(%struct.block_device*) #1

declare dso_local i32 @scsi_partsize(i8*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
