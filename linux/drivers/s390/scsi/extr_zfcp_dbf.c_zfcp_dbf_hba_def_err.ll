; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_def_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_def_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_pay }
%struct.zfcp_dbf_pay = type { i32, i32, i32, i32 }

@zfcp_dbf_hba_def_err.level = internal constant i32 1, align 4
@.str = private unnamed_addr constant [8 x i8] c"def_err\00", align 1
@ZFCP_DBF_PAY_MAX_REC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_hba_def_err(%struct.zfcp_adapter* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.zfcp_dbf*, align 8
  %10 = alloca %struct.zfcp_dbf_pay*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %13, i32 0, i32 0
  %15 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %14, align 8
  store %struct.zfcp_dbf* %15, %struct.zfcp_dbf** %9, align 8
  %16 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %9, align 8
  %17 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %16, i32 0, i32 2
  store %struct.zfcp_dbf_pay* %17, %struct.zfcp_dbf_pay** %10, align 8
  %18 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %9, align 8
  %19 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @debug_level_enabled(i32 %20, i32 1)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %97

28:                                               ; preds = %4
  %29 = load i8**, i8*** %8, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %97

32:                                               ; preds = %28
  %33 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %9, align 8
  %34 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %33, i32 0, i32 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %10, align 8
  %38 = call i32 @memset(%struct.zfcp_dbf_pay* %37, i32 0, i32 16)
  %39 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %10, align 8
  %40 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %10, align 8
  %45 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %10, align 8
  %47 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load i64, i64* @ZFCP_DBF_PAY_MAX_REC, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @min(i32 4, i32 %49)
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %68, %32
  %52 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %10, align 8
  %53 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i8**, i8*** %8, align 8
  %59 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %10, align 8
  %60 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %58, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br label %66

66:                                               ; preds = %57, %51
  %67 = phi i1 [ false, %51 ], [ %65, %57 ]
  br i1 %67, label %68, label %92

68:                                               ; preds = %66
  %69 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %10, align 8
  %70 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8**, i8*** %8, align 8
  %73 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %10, align 8
  %74 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %72, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @memcpy(i32 %71, i8* %78, i32 %79)
  %81 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %9, align 8
  %82 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @zfcp_dbf_plen(i32 %85)
  %87 = call i32 @debug_event(i32 %83, i32 1, %struct.zfcp_dbf_pay* %84, i32 %86)
  %88 = load %struct.zfcp_dbf_pay*, %struct.zfcp_dbf_pay** %10, align 8
  %89 = getelementptr inbounds %struct.zfcp_dbf_pay, %struct.zfcp_dbf_pay* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %51

92:                                               ; preds = %66
  %93 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %9, align 8
  %94 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %93, i32 0, i32 0
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %92, %31, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_level_enabled(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_pay*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_pay*, i32) #1

declare dso_local i32 @zfcp_dbf_plen(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
