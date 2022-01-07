; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_dif_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_dif_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_pi_tuple = type { i64, i32 }

@sdebug_sector_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"GUARD check failed on sector %lu rcvd 0x%04x, data 0x%04x\0A\00", align 1
@sdebug_dif = common dso_local global i64 0, align 8
@T10_PI_TYPE1_PROTECTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"REF check failed on sector %lu\0A\00", align 1
@T10_PI_TYPE2_PROTECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t10_pi_tuple*, i8*, i32, i32)* @dif_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dif_verify(%struct.t10_pi_tuple* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.t10_pi_tuple*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.t10_pi_tuple* %0, %struct.t10_pi_tuple** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @sdebug_sector_size, align 4
  %13 = call i64 @dif_compute_csum(i8* %11, i32 %12)
  store i64 %13, i64* %10, align 8
  %14 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %6, align 8
  %15 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %6, align 8
  %23 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @be16_to_cpu(i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @be16_to_cpu(i64 %26)
  %28 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %25, i32 %27)
  store i32 1, i32* %5, align 4
  br label %60

29:                                               ; preds = %4
  %30 = load i64, i64* @sdebug_dif, align 8
  %31 = load i64, i64* @T10_PI_TYPE1_PROTECTION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %6, align 8
  %35 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  store i32 3, i32* %5, align 4
  br label %60

44:                                               ; preds = %33, %29
  %45 = load i64, i64* @sdebug_dif, align 8
  %46 = load i64, i64* @T10_PI_TYPE2_PROTECTION, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %6, align 8
  %50 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  store i32 3, i32* %5, align 4
  br label %60

59:                                               ; preds = %48, %44
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %55, %40, %19
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @dif_compute_csum(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
