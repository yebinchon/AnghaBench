; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_rpm.c_glink_rpm_tx_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_rpm.c_glink_rpm_tx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink_pipe = type { i32 }
%struct.glink_rpm_pipe = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Glink Header length must be 4 bytes aligned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_glink_pipe*, i8*, i64, i8*, i64)* @glink_rpm_tx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glink_rpm_tx_write(%struct.qcom_glink_pipe* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.qcom_glink_pipe*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.glink_rpm_pipe*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [8 x i8], align 1
  %16 = alloca i64, align 8
  store %struct.qcom_glink_pipe* %0, %struct.qcom_glink_pipe** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load %struct.qcom_glink_pipe*, %struct.qcom_glink_pipe** %6, align 8
  %18 = call %struct.glink_rpm_pipe* @to_rpm_pipe(%struct.qcom_glink_pipe* %17)
  store %struct.glink_rpm_pipe* %18, %struct.glink_rpm_pipe** %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %12, align 8
  %22 = bitcast [8 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %22, i8 0, i64 8, i1 false)
  %23 = load i64, i64* %8, align 8
  %24 = urem i64 %23, 4
  %25 = call i64 @WARN(i64 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %77

28:                                               ; preds = %5
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @ALIGN_DOWN(i64 %29, i32 4)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %13, align 8
  %41 = sub i64 %39, %40
  %42 = call i32 @memcpy(i8* %35, i8* %38, i64 %41)
  br label %43

43:                                               ; preds = %34, %28
  %44 = load %struct.glink_rpm_pipe*, %struct.glink_rpm_pipe** %11, align 8
  %45 = getelementptr inbounds %struct.glink_rpm_pipe, %struct.glink_rpm_pipe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @readl(i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.glink_rpm_pipe*, %struct.glink_rpm_pipe** %11, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @glink_rpm_tx_write_one(%struct.glink_rpm_pipe* %48, i32 %49, i8* %50, i64 %51)
  store i32 %52, i32* %14, align 4
  %53 = load %struct.glink_rpm_pipe*, %struct.glink_rpm_pipe** %11, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @glink_rpm_tx_write_one(%struct.glink_rpm_pipe* %53, i32 %54, i8* %55, i64 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @ALIGN(i64 %58, i32 8)
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @ALIGN_DOWN(i64 %60, i32 4)
  %62 = sub i64 %59, %61
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %43
  %66 = load %struct.glink_rpm_pipe*, %struct.glink_rpm_pipe** %11, align 8
  %67 = load i32, i32* %14, align 4
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %69 = load i64, i64* %16, align 8
  %70 = call i32 @glink_rpm_tx_write_one(%struct.glink_rpm_pipe* %66, i32 %67, i8* %68, i64 %69)
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %65, %43
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.glink_rpm_pipe*, %struct.glink_rpm_pipe** %11, align 8
  %74 = getelementptr inbounds %struct.glink_rpm_pipe, %struct.glink_rpm_pipe* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @writel(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %27
  ret void
}

declare dso_local %struct.glink_rpm_pipe* @to_rpm_pipe(%struct.qcom_glink_pipe*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @WARN(i64, i8*) #1

declare dso_local i64 @ALIGN_DOWN(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @glink_rpm_tx_write_one(%struct.glink_rpm_pipe*, i32, i8*, i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
