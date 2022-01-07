; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_mode_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32 }
%struct.scsi_cmnd = type { i32* }
%struct.myrs_ldev_info = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@MYRS_LOGICALDEVICE_RO = common dso_local global i64 0, align 8
@MYRS_READCACHE_DISABLED = common dso_local global i64 0, align 8
@MYRS_WRITECACHE_ENABLED = common dso_local global i64 0, align 8
@MYRS_INTELLIGENT_WRITECACHE_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrs_hba*, %struct.scsi_cmnd*, %struct.myrs_ldev_info*)* @myrs_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_mode_sense(%struct.myrs_hba* %0, %struct.scsi_cmnd* %1, %struct.myrs_ldev_info* %2) #0 {
  %4 = alloca %struct.myrs_hba*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.myrs_ldev_info*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.myrs_hba* %0, %struct.myrs_hba** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.myrs_ldev_info* %2, %struct.myrs_ldev_info** %6, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 8
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  store i64 24, i64* %10, align 8
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 4
  store i8* %23, i8** %8, align 8
  br label %26

24:                                               ; preds = %3
  store i64 32, i64* %10, align 8
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 12
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i32 0, i32 32)
  %29 = load i64, i64* %10, align 8
  %30 = sub i64 %29, 1
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8 %31, i8* %32, align 16
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 2
  store i8 16, i8* %33, align 2
  %34 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %35 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MYRS_LOGICALDEVICE_RO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 2
  %42 = load i8, i8* %41, align 2
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, 128
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 2
  br label %46

46:                                               ; preds = %40, %26
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 4
  store i8* %50, i8** %11, align 8
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 3
  store i8 8, i8* %51, align 1
  %52 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %53 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = call i32 @put_unaligned_be32(i32 %54, i8* %56)
  %58 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %59 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 5
  %63 = call i32 @put_unaligned_be32(i32 %60, i8* %62)
  br label %64

64:                                               ; preds = %49, %46
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 8, i8* %66, align 1
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 18, i8* %68, align 1
  %69 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %70 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MYRS_READCACHE_DISABLED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, 1
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 1
  br label %82

82:                                               ; preds = %75, %64
  %83 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %84 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MYRS_WRITECACHE_ENABLED, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %82
  %90 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %91 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MYRS_INTELLIGENT_WRITECACHE_ENABLED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %89, %82
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %100, 4
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %98, align 1
  br label %103

103:                                              ; preds = %96, %89
  %104 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %105 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %112, 8
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %110, align 1
  %115 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %116 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 1, %117
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 14
  %121 = call i32 @put_unaligned_be16(i32 %118, i8* %120)
  br label %122

122:                                              ; preds = %108, %103
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @scsi_sg_copy_from_buffer(%struct.scsi_cmnd* %123, i8* %124, i64 %125)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local i32 @scsi_sg_copy_from_buffer(%struct.scsi_cmnd*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
