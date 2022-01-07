; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-sysfs.c_ufs_sysfs_read_desc_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-sysfs.c_ufs_sysfs_read_desc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%04X\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0x%016llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32, i32, i32, i32*, i32)* @ufs_sysfs_read_desc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_sysfs_read_desc_param(%struct.ufs_hba* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ufs_hba*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = bitcast [8 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 32, i1 false)
  %17 = load i32, i32* %13, align 4
  %18 = icmp sgt i32 %17, 8
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %59

22:                                               ; preds = %6
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @ufshcd_read_desc_param(%struct.ufs_hba* %23, i32 %24, i32 %25, i32 %26, i32* %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %59

35:                                               ; preds = %22
  %36 = load i32, i32* %13, align 4
  switch i32 %36, label %57 [
    i32 1, label %37
    i32 2, label %42
    i32 4, label %47
    i32 8, label %52
  ]

37:                                               ; preds = %35
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = call i32 @sprintf(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %15, align 4
  br label %57

42:                                               ; preds = %35
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %45 = call i32 @get_unaligned_be16(i32* %44)
  %46 = call i32 @sprintf(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %15, align 4
  br label %57

47:                                               ; preds = %35
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %50 = call i32 @get_unaligned_be32(i32* %49)
  %51 = call i32 @sprintf(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %15, align 4
  br label %57

52:                                               ; preds = %35
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %55 = call i32 @get_unaligned_be64(i32* %54)
  %56 = call i32 @sprintf(i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %35, %52, %47, %42, %37
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %32, %19
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ufshcd_read_desc_param(%struct.ufs_hba*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @sprintf(i32*, i8*, i32) #2

declare dso_local i32 @get_unaligned_be16(i32*) #2

declare dso_local i32 @get_unaligned_be32(i32*) #2

declare dso_local i32 @get_unaligned_be64(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
