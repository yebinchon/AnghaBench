; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8*, i8* }
%struct.sdebug_dev_info = type { i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@iec_m_pg = common dso_local global i32* null, align 8
@THRESHOLD_EXCEEDED = common dso_local global i8 0, align 1
@sdebug_dsense = common dso_local global i32 0, align 4
@NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_requests(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.sdebug_dev_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %4, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i32 18, i32* %10, align 4
  %18 = trunc i64 %15 to i32
  %19 = call i32 @memset(i8* %17, i32 0, i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %5, align 8
  %32 = load i32*, i32** @iec_m_pg, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %2
  %38 = load i32*, i32** @iec_m_pg, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  %42 = icmp eq i32 6, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 114, i8* %47, align 16
  %48 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %48, align 1
  %49 = load i8, i8* @THRESHOLD_EXCEEDED, align 1
  %50 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 %49, i8* %50, align 2
  %51 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 -1, i8* %51, align 1
  store i32 8, i32* %10, align 4
  br label %59

52:                                               ; preds = %43
  %53 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 112, i8* %53, align 16
  %54 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 0, i8* %54, align 2
  %55 = getelementptr inbounds i8, i8* %17, i64 7
  store i8 10, i8* %55, align 1
  %56 = load i8, i8* @THRESHOLD_EXCEEDED, align 1
  %57 = getelementptr inbounds i8, i8* %17, i64 12
  store i8 %56, i8* %57, align 4
  %58 = getelementptr inbounds i8, i8* %17, i64 13
  store i8 -1, i8* %58, align 1
  br label %59

59:                                               ; preds = %52, %46
  br label %126

60:                                               ; preds = %37, %2
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %63 = call i32 @memcpy(i8* %17, i8* %61, i32 %62)
  %64 = getelementptr inbounds i8, i8* %17, i64 0
  %65 = load i8, i8* %64, align 16
  %66 = zext i8 %65 to i32
  %67 = icmp sge i32 %66, 112
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @sdebug_dsense, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %125

73:                                               ; preds = %68, %60
  %74 = getelementptr inbounds i8, i8* %17, i64 0
  %75 = load i8, i8* %74, align 16
  %76 = zext i8 %75 to i32
  %77 = icmp sle i32 %76, 112
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = call i32 @memset(i8* %17, i32 0, i32 8)
  %83 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 114, i8* %83, align 16
  store i32 8, i32* %10, align 4
  br label %88

84:                                               ; preds = %78
  %85 = call i32 @memset(i8* %17, i32 0, i32 18)
  %86 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 112, i8* %86, align 16
  %87 = getelementptr inbounds i8, i8* %17, i64 7
  store i8 10, i8* %87, align 1
  br label %88

88:                                               ; preds = %84, %81
  br label %124

89:                                               ; preds = %73
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = call i32 @memset(i8* %17, i32 0, i32 8)
  %94 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 114, i8* %94, align 16
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %97, i8* %98, align 1
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 12
  %101 = load i8, i8* %100, align 1
  %102 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 %101, i8* %102, align 2
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 13
  %105 = load i8, i8* %104, align 1
  %106 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 %105, i8* %106, align 1
  store i32 8, i32* %10, align 4
  br label %123

107:                                              ; preds = %89
  %108 = call i32 @memset(i8* %17, i32 0, i32 18)
  %109 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 112, i8* %109, align 16
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 %112, i8* %113, align 2
  %114 = getelementptr inbounds i8, i8* %17, i64 7
  store i8 10, i8* %114, align 1
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = getelementptr inbounds i8, i8* %17, i64 12
  store i8 %117, i8* %118, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  %121 = load i8, i8* %120, align 1
  %122 = getelementptr inbounds i8, i8* %17, i64 13
  store i8 %121, i8* %122, align 1
  br label %123

123:                                              ; preds = %107, %92
  br label %124

124:                                              ; preds = %123, %88
  br label %125

125:                                              ; preds = %124, %72
  br label %126

126:                                              ; preds = %125, %59
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %128 = load i32, i32* @NO_ADDITIONAL_SENSE, align 4
  %129 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %127, i32 0, i32 %128, i32 0)
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %130, i8* %17, i32 %131)
  %133 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %133)
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @mk_sense_buffer(%struct.scsi_cmnd*, i32, i32, i32) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
