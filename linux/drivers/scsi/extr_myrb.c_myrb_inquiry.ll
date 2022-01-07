; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { i32, i32*, i32* }
%struct.scsi_cmnd = type { i32 }

@__const.myrb_inquiry.inq = private unnamed_addr constant [36 x i8] c"\00\00\03\02 \00\01\00MYLEX                       ", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrb_hba*, %struct.scsi_cmnd*)* @myrb_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrb_inquiry(%struct.myrb_hba* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.myrb_hba*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca [36 x i8], align 16
  store %struct.myrb_hba* %0, %struct.myrb_hba** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = bitcast [36 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([36 x i8], [36 x i8]* @__const.myrb_inquiry.inq, i32 0, i32 0), i64 36, i1 false)
  %7 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %8 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 16
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 7
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %14, 64
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %12, align 1
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %19 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 8
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 7
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, 32
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %23, align 1
  br label %28

28:                                               ; preds = %22, %17
  %29 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 16
  %30 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %31 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @memcpy(i8* %29, i32* %32, i32 16)
  %34 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 32
  %35 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %36 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @memcpy(i8* %34, i32* %37, i32 1)
  %39 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 33
  %40 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %41 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = call i32 @memcpy(i8* %39, i32* %43, i32 2)
  %45 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 35
  %46 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %47 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 7
  %50 = call i32 @memcpy(i8* %45, i32* %49, i32 1)
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 0
  %53 = call i32 @scsi_sg_copy_from_buffer(%struct.scsi_cmnd* %51, i8* %52, i32 36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @scsi_sg_copy_from_buffer(%struct.scsi_cmnd*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
