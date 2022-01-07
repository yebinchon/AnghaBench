; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_dif_copy_prot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_dif_copy_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.sg_mapping_iter = type { i8*, i32 }

@dif_storep = common dso_local global i8* null, align 8
@sdebug_store_sectors = common dso_local global i32 0, align 4
@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, i64, i32, i32)* @dif_copy_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dif_copy_prot(%struct.scsi_cmnd* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sg_mapping_iter, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** @dif_storep, align 8
  %17 = load i32, i32* @sdebug_store_sectors, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %16, i64 %18
  store i8* %19, i8** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %21, 1
  store i64 %22, i64* %9, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %23)
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %26 = call i32 @scsi_prot_sg_count(%struct.scsi_cmnd* %25)
  %27 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @SG_MITER_TO_SG, align 4
  br label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @SG_MITER_FROM_SG, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = or i32 %27, %35
  %37 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %12, i32 %24, i32 %26, i32 %36)
  br label %38

38:                                               ; preds = %112, %34
  %39 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %12)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = icmp ugt i64 %42, 0
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  br i1 %45, label %46, label %120

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %12, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @min(i32 %48, i64 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i8* @dif_store(i64 %51)
  store i8* %52, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr i8, i8* %54, i64 %55
  %57 = icmp ult i8* %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = load i8*, i8** %14, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr i8, i8* %59, i64 %60
  %62 = load i8*, i8** %11, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  store i64 %65, i64* %15, align 8
  br label %66

66:                                               ; preds = %58, %46
  %67 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %12, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %10, align 8
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %15, align 8
  %76 = sub i64 %74, %75
  %77 = call i32 @memcpy(i8* %72, i8* %73, i64 %76)
  br label %85

78:                                               ; preds = %66
  %79 = load i8*, i8** %14, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %15, align 8
  %83 = sub i64 %81, %82
  %84 = call i32 @memcpy(i8* %79, i8* %80, i64 %83)
  br label %85

85:                                               ; preds = %78, %71
  %86 = load i64, i64* %15, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr i8, i8* %92, i64 %93
  %95 = load i64, i64* %15, align 8
  %96 = sub i64 0, %95
  %97 = getelementptr i8, i8* %94, i64 %96
  %98 = load i8*, i8** @dif_storep, align 8
  %99 = load i64, i64* %15, align 8
  %100 = call i32 @memcpy(i8* %97, i8* %98, i64 %99)
  br label %111

101:                                              ; preds = %88
  %102 = load i8*, i8** @dif_storep, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr i8, i8* %103, i64 %104
  %106 = load i64, i64* %15, align 8
  %107 = sub i64 0, %106
  %108 = getelementptr i8, i8* %105, i64 %107
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @memcpy(i8* %102, i8* %108, i64 %109)
  br label %111

111:                                              ; preds = %101, %91
  br label %112

112:                                              ; preds = %111, %85
  %113 = load i64, i64* %13, align 8
  %114 = udiv i64 %113, 1
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %9, align 8
  %119 = sub i64 %118, %117
  store i64 %119, i64* %9, align 8
  br label %38

120:                                              ; preds = %44
  %121 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %12)
  ret void
}

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, i32, i32, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i64 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i8* @dif_store(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
