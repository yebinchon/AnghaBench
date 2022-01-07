; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_is_passthru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_is_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ips_is_passthru\00", align 1
@IPS_IOCTL_COMMAND = common dso_local global i64 0, align 8
@IPS_ADAPTER_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ips_is_passthru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_is_passthru(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1)
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = icmp ne %struct.scsi_cmnd* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

11:                                               ; preds = %1
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPS_IOCTL_COMMAND, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %106

19:                                               ; preds = %11
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %106

26:                                               ; preds = %19
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPS_ADAPTER_ID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %106

34:                                               ; preds = %26
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %106

41:                                               ; preds = %34
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %43 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %42)
  %44 = icmp ne %struct.scatterlist* %43, null
  br i1 %44, label %45, label %106

45:                                               ; preds = %41
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %47 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %46)
  store %struct.scatterlist* %47, %struct.scatterlist** %5, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @local_irq_save(i64 %48)
  %50 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %51 = call i32 @sg_page(%struct.scatterlist* %50)
  %52 = call i8* @kmap_atomic(i32 %51)
  %53 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %54 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %95

60:                                               ; preds = %45
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 67
  br i1 %65, label %66, label %95

66:                                               ; preds = %60
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 79
  br i1 %71, label %72, label %95

72:                                               ; preds = %66
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 80
  br i1 %77, label %78, label %95

78:                                               ; preds = %72
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 80
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %87 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds i8, i8* %85, i64 %90
  %92 = call i32 @kunmap_atomic(i8* %91)
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @local_irq_restore(i64 %93)
  store i32 1, i32* %2, align 4
  br label %107

95:                                               ; preds = %78, %72, %66, %60, %45
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %98 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i8, i8* %96, i64 %101
  %103 = call i32 @kunmap_atomic(i8* %102)
  %104 = load i64, i64* %4, align 8
  %105 = call i32 @local_irq_restore(i64 %104)
  br label %106

106:                                              ; preds = %95, %41, %34, %26, %19, %11
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %84, %10
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
