; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_send_safw_hostttime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_send_safw_hostttime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.aac_dev = type { i32 }
%struct.timespec64 = type { i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@__const.aac_send_safw_hostttime.wellness_str = private unnamed_addr constant [23 x i8] c"<HW>TD\08\00\00\00\00\00\00\00\00\00DW\00\00ZZ\00", align 16
@ENODEV = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_send_safw_hostttime(%struct.aac_dev* %0, %struct.timespec64* %1) #0 {
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca %struct.tm, align 4
  %6 = alloca [23 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %10 = bitcast [23 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.aac_send_safw_hostttime.wellness_str, i32 0, i32 0), i64 23, i1 false)
  store i32 23, i32* %7, align 4
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %14 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %20 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %23 = mul nsw i32 %22, 60
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %21, %24
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @time64_to_tm(i64 %26, i32 0, %struct.tm* %5)
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1900
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call signext i8 @bin2bcd(i32 %35)
  %37 = getelementptr inbounds [23 x i8], [23 x i8]* %6, i64 0, i64 8
  store i8 %36, i8* %37, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call signext i8 @bin2bcd(i32 %39)
  %41 = getelementptr inbounds [23 x i8], [23 x i8]* %6, i64 0, i64 9
  store i8 %40, i8* %41, align 1
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call signext i8 @bin2bcd(i32 %43)
  %45 = getelementptr inbounds [23 x i8], [23 x i8]* %6, i64 0, i64 10
  store i8 %44, i8* %45, align 2
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call signext i8 @bin2bcd(i32 %47)
  %49 = getelementptr inbounds [23 x i8], [23 x i8]* %6, i64 0, i64 12
  store i8 %48, i8* %49, align 4
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call signext i8 @bin2bcd(i32 %51)
  %53 = getelementptr inbounds [23 x i8], [23 x i8]* %6, i64 0, i64 13
  store i8 %52, i8* %53, align 1
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 100
  %57 = call signext i8 @bin2bcd(i32 %56)
  %58 = getelementptr inbounds [23 x i8], [23 x i8]* %6, i64 0, i64 14
  store i8 %57, i8* %58, align 2
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %60, 100
  %62 = call signext i8 @bin2bcd(i32 %61)
  %63 = getelementptr inbounds [23 x i8], [23 x i8]* %6, i64 0, i64 15
  store i8 %62, i8* %63, align 1
  %64 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %65 = getelementptr inbounds [23 x i8], [23 x i8]* %6, i64 0, i64 0
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @aac_send_wellness_command(%struct.aac_dev* %64, i8* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %18, %17
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @time64_to_tm(i64, i32, %struct.tm*) #2

declare dso_local signext i8 @bin2bcd(i32) #2

declare dso_local i32 @aac_send_wellness_command(%struct.aac_dev*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
