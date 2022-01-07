; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_plog_fchdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_plog_fchdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_plog_s = type { i64 }
%struct.fchs_s = type { i32 }
%struct.bfa_plog_rec_s = type { i32 }

@BFA_PL_INT_LOG_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_plog_fchdr(%struct.bfa_plog_s* %0, i32 %1, i32 %2, i32 %3, %struct.fchs_s* %4) #0 {
  %6 = alloca %struct.bfa_plog_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fchs_s*, align 8
  %11 = alloca %struct.bfa_plog_rec_s, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.bfa_plog_s* %0, %struct.bfa_plog_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fchs_s* %4, %struct.fchs_s** %10, align 8
  %15 = load %struct.fchs_s*, %struct.fchs_s** %10, align 8
  %16 = bitcast %struct.fchs_s* %15 to i32*
  store i32* %16, i32** %12, align 8
  %17 = load i32, i32* @BFA_PL_INT_LOG_SZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %6, align 8
  %22 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %5
  %26 = call i32 @memset(%struct.bfa_plog_rec_s* %11, i32 0, i32 4)
  %27 = load i32*, i32** %12, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %29, i32* %30, align 16
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %37, i32* %38, align 8
  %39 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @bfa_plog_intarr(%struct.bfa_plog_s* %39, i32 %40, i32 %41, i32 %42, i32* %20, i32 3)
  br label %44

44:                                               ; preds = %25, %5
  %45 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.bfa_plog_rec_s*, i32, i32) #2

declare dso_local i32 @bfa_plog_intarr(%struct.bfa_plog_s*, i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
