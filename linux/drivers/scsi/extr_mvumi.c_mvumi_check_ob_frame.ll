; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_check_ob_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_check_ob_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, %struct.TYPE_6__**, %struct.TYPE_5__*, i64, %struct.TYPE_4__, %struct.mvumi_rsp_frame* }
%struct.TYPE_6__ = type { i16 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i16 }
%struct.mvumi_rsp_frame = type { i16, i16 }

@.str = private unnamed_addr constant [21 x i8] c"ob frame data error\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"tag[0x%x] with NO command\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"request ID from FW:0x%x,cmd request ID:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mvumi_hba*, i32, %struct.mvumi_rsp_frame*)* @mvumi_check_ob_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @mvumi_check_ob_frame(%struct.mvumi_hba* %0, i32 %1, %struct.mvumi_rsp_frame* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.mvumi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvumi_rsp_frame*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mvumi_rsp_frame* %2, %struct.mvumi_rsp_frame** %7, align 8
  %10 = call i32 @udelay(i32 1)
  %11 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %12 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %11, i32 0, i32 5
  %13 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %16 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul i32 %14, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %13, i64 %19
  store %struct.mvumi_rsp_frame* %20, %struct.mvumi_rsp_frame** %7, align 8
  %21 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %7, align 8
  %22 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 2
  store i16 %23, i16* %9, align 2
  %24 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %7, align 8
  %25 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %24, i32 0, i32 1
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* %8, align 2
  %27 = load i16, i16* %8, align 2
  %28 = zext i16 %27 to i32
  %29 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %30 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 8
  %33 = zext i16 %32 to i32
  %34 = icmp sgt i32 %28, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %37 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8 -1, i8* %4, align 1
  br label %97

41:                                               ; preds = %3
  %42 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %43 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %43, align 8
  %45 = load i16, i16* %8, align 2
  %46 = zext i16 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp eq %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %52 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i16, i16* %8, align 2
  %56 = zext i16 %55 to i32
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i8 -1, i8* %4, align 1
  br label %97

58:                                               ; preds = %41
  %59 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %60 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i16, i16* %8, align 2
  %63 = zext i16 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* %9, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %58
  %73 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %74 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %79 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i16, i16* %9, align 2
  %83 = zext i16 %82 to i32
  %84 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %85 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %85, align 8
  %87 = load i16, i16* %8, align 2
  %88 = zext i16 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %86, i64 %88
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i16, i16* %91, align 2
  %93 = zext i16 %92 to i32
  %94 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %93)
  store i8 -1, i8* %4, align 1
  br label %97

95:                                               ; preds = %72, %58
  br label %96

96:                                               ; preds = %95
  store i8 0, i8* %4, align 1
  br label %97

97:                                               ; preds = %96, %77, %50, %35
  %98 = load i8, i8* %4, align 1
  ret i8 %98
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
