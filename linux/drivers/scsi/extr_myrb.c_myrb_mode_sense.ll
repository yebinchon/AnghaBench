; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_mode_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { i64, i32 }
%struct.scsi_cmnd = type { i32* }
%struct.myrb_ldev_info = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrb_hba*, %struct.scsi_cmnd*, %struct.myrb_ldev_info*)* @myrb_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrb_mode_sense(%struct.myrb_hba* %0, %struct.scsi_cmnd* %1, %struct.myrb_ldev_info* %2) #0 {
  %4 = alloca %struct.myrb_hba*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.myrb_ldev_info*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.myrb_hba* %0, %struct.myrb_hba** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.myrb_ldev_info* %2, %struct.myrb_ldev_info** %6, align 8
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
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 4
  store i8* %36, i8** %11, align 8
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 3
  store i8 8, i8* %37, align 1
  %38 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %6, align 8
  %39 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = call i32 @put_unaligned_be32(i32 %40, i8* %42)
  %44 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %45 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 5
  %49 = call i32 @put_unaligned_be32(i32 %46, i8* %48)
  br label %50

50:                                               ; preds = %35, %26
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 8, i8* %52, align 1
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8 18, i8* %54, align 1
  %55 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %6, align 8
  %56 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, 4
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  br label %66

66:                                               ; preds = %59, %50
  %67 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %68 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, 8
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %73, align 1
  %78 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %79 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 14
  %83 = call i32 @put_unaligned_be16(i64 %80, i8* %82)
  br label %84

84:                                               ; preds = %71, %66
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @scsi_sg_copy_from_buffer(%struct.scsi_cmnd* %85, i8* %86, i64 %87)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @put_unaligned_be16(i64, i8*) #1

declare dso_local i32 @scsi_sg_copy_from_buffer(%struct.scsi_cmnd*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
