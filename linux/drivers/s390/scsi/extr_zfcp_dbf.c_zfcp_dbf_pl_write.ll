; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_pl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_pl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_pay }
%struct.zfcp_dbf_pay = type { i32, i32, i32, i32 }

@ZFCP_DBF_TAG_LEN = common dso_local global i32 0, align 4
@ZFCP_DBF_PAY_MAX_REC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_dbf*, i8*, i64, i8*, i32)* @zfcp_dbf_pl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_pl_write(%struct.zfcp_dbf* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.zfcp_dbf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zfcp_dbf_pay*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.zfcp_dbf* %0, %struct.zfcp_dbf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %15 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %14, i32 0, i32 2
  store %struct.zfcp_dbf_pay* %15, %struct.zfcp_dbf_pay** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %17 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %11, align 8
  %20 = call i32 @memset(%struct.zfcp_dbf_pay* %19, i32 0, i32 16)
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %11, align 8
  %23 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %11, align 8
  %25 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* @ZFCP_DBF_TAG_LEN, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @memcpy(i32 %26, i8* %27, i64 %29)
  br label %31

31:                                               ; preds = %35, %5
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load i64, i64* @ZFCP_DBF_PAY_MAX_REC, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %12, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i64 @min(i64 %36, i64 %39)
  store i64 %40, i64* %13, align 8
  %41 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %11, align 8
  %42 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr i8, i8* %44, i64 %45
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @memcpy(i32 %43, i8* %46, i64 %47)
  %49 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %50 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %11, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @zfcp_dbf_plen(i64 %53)
  %55 = call i32 @debug_event(i32 %51, i32 1, %struct.zfcp_dbf_pay* %52, i32 %54)
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %12, align 8
  %59 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %11, align 8
  %60 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %31

63:                                               ; preds = %31
  %64 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %65 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_pay*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_pay*, i32) #1

declare dso_local i32 @zfcp_dbf_plen(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
