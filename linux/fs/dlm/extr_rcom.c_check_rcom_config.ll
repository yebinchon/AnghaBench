; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_check_rcom_config.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_check_rcom_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i64, i64 }
%struct.dlm_rcom = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.rcom_config = type { i32, i32 }

@DLM_HEADER_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"version mismatch: %x nodeid %d: %x\00", align 1
@DLM_HEADER_MINOR = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"config mismatch: %d,%x nodeid %d: %d,%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_rcom*, i32)* @check_rcom_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rcom_config(%struct.dlm_ls* %0, %struct.dlm_rcom* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_rcom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rcom_config*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %10 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rcom_config*
  store %struct.rcom_config* %12, %struct.rcom_config** %8, align 8
  %13 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %14 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, -65536
  %18 = load i32, i32* @DLM_HEADER_MAJOR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %22 = load i32, i32* @DLM_HEADER_MAJOR, align 4
  %23 = load i32, i32* @DLM_HEADER_MINOR, align 4
  %24 = or i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %29 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.dlm_ls*, i8*, i64, i64, i32, ...) @log_error(%struct.dlm_ls* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %27, i32 %31)
  %33 = load i32, i32* @EPROTO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %3
  %36 = load %struct.rcom_config*, %struct.rcom_config** %8, align 8
  %37 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  %40 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %41 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load %struct.rcom_config*, %struct.rcom_config** %8, align 8
  %46 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  %49 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %50 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %44, %35
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %55 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %56 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %59 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.rcom_config*, %struct.rcom_config** %8, align 8
  %63 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le32_to_cpu(i32 %64)
  %66 = load %struct.rcom_config*, %struct.rcom_config** %8, align 8
  %67 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  %70 = call i32 (%struct.dlm_ls*, i8*, i64, i64, i32, ...) @log_error(%struct.dlm_ls* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %60, i32 %61, i64 %65, i64 %69)
  %71 = load i32, i32* @EPROTO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %53, %20
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i64, i64, i32, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
