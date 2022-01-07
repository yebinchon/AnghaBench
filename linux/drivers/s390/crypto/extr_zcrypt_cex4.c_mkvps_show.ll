; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex4.c_mkvps_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex4.c_mkvps_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cca_info = type { i8, i8, i8, i32, i32, i32 }
%struct.zcrypt_queue = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.zcrypt_queue* }

@mkvps_show.cao_state = internal constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@mkvps_show.new_state = internal constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"partial\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"AES NEW: %s 0x%016llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"AES NEW: - -\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"AES CUR: %s 0x%016llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"AES CUR: - -\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"AES OLD: %s 0x%016llx\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"AES OLD: - -\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @mkvps_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkvps_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cca_info, align 4
  %9 = alloca %struct.zcrypt_queue*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.TYPE_4__* @to_ap_queue(%struct.device* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %12, align 8
  store %struct.zcrypt_queue* %13, %struct.zcrypt_queue** %9, align 8
  %14 = call i32 @memset(%struct.cca_info* %8, i32 0, i32 16)
  %15 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %9, align 8
  %16 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @AP_QID_CARD(i32 %19)
  %21 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %9, align 8
  %22 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @AP_QID_QUEUE(i32 %25)
  %27 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %9, align 8
  %28 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @cca_get_info(i32 %20, i32 %26, %struct.cca_info* %8, i32 %29)
  %31 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 0
  %32 = load i8, i8* %31, align 4
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 49
  br i1 %34, label %35, label %53

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 0
  %37 = load i8, i8* %36, align 4
  %38 = sext i8 %37 to i32
  %39 = icmp sle i32 %38, 51
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 0
  %44 = load i8, i8* %43, align 4
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 49
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* @mkvps_show.new_state, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %49, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %57

53:                                               ; preds = %35, %3
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %40
  %58 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sge i32 %60, 49
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %65, 50
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i64, i64* @PAGE_SIZE, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %72, %74
  %76 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 49
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i8*], [2 x i8*]* @mkvps_show.cao_state, i64 0, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %71, i64 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %82, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %100

88:                                               ; preds = %62, %57
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i64, i64* @PAGE_SIZE, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %93, %95
  %97 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %92, i64 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %88, %67
  %101 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 2
  %102 = load i8, i8* %101, align 2
  %103 = sext i8 %102 to i32
  %104 = icmp sge i32 %103, 49
  br i1 %104, label %105, label %131

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 2
  %107 = load i8, i8* %106, align 2
  %108 = sext i8 %107 to i32
  %109 = icmp sle i32 %108, 50
  br i1 %109, label %110, label %131

110:                                              ; preds = %105
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i64, i64* @PAGE_SIZE, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %115, %117
  %119 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 2
  %120 = load i8, i8* %119, align 2
  %121 = sext i8 %120 to i32
  %122 = sub nsw i32 %121, 49
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x i8*], [2 x i8*]* @mkvps_show.cao_state, i64 0, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %8, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %114, i64 %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %125, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %7, align 4
  br label %143

131:                                              ; preds = %105, %100
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i64, i64* @PAGE_SIZE, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %136, %138
  %140 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %135, i64 %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %131, %110
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_4__* @to_ap_queue(%struct.device*) #1

declare dso_local i32 @memset(%struct.cca_info*, i32, i32) #1

declare dso_local i32 @cca_get_info(i32, i32, %struct.cca_info*, i32) #1

declare dso_local i32 @AP_QID_CARD(i32) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
