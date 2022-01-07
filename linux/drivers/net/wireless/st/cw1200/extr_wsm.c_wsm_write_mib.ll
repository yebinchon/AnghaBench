; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_write_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_write_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.wsm_buf }
%struct.wsm_buf = type { i32 }
%struct.wsm_mib = type { i64, i8*, i64 }

@WSM_WRITE_MIB_REQ_ID = common dso_local global i32 0, align 4
@WSM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_write_mib(%struct.cw1200_common* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cw1200_common*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wsm_buf*, align 8
  %12 = alloca %struct.wsm_mib, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 0
  store %struct.wsm_buf* %14, %struct.wsm_buf** %11, align 8
  %15 = getelementptr inbounds %struct.wsm_mib, %struct.wsm_mib* %12, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.wsm_mib, %struct.wsm_mib* %12, i32 0, i32 1
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.wsm_mib, %struct.wsm_mib* %12, i32 0, i32 2
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %19, align 8
  %21 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %22 = call i32 @wsm_cmd_lock(%struct.cw1200_common* %21)
  %23 = load %struct.wsm_buf*, %struct.wsm_buf** %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @WSM_PUT16(%struct.wsm_buf* %23, i64 %24)
  %26 = load %struct.wsm_buf*, %struct.wsm_buf** %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @WSM_PUT16(%struct.wsm_buf* %26, i64 %27)
  %29 = load %struct.wsm_buf*, %struct.wsm_buf** %11, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @WSM_PUT(%struct.wsm_buf* %29, i8* %30, i64 %31)
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %34 = load %struct.wsm_buf*, %struct.wsm_buf** %11, align 8
  %35 = load i32, i32* @WSM_WRITE_MIB_REQ_ID, align 4
  %36 = load i32, i32* @WSM_CMD_TIMEOUT, align 4
  %37 = call i32 @wsm_cmd_send(%struct.cw1200_common* %33, %struct.wsm_buf* %34, %struct.wsm_mib* %12, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %39 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; No predecessors!
  %42 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %43 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %4
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @wsm_cmd_lock(%struct.cw1200_common*) #1

declare dso_local i32 @WSM_PUT16(%struct.wsm_buf*, i64) #1

declare dso_local i32 @WSM_PUT(%struct.wsm_buf*, i8*, i64) #1

declare dso_local i32 @wsm_cmd_send(%struct.cw1200_common*, %struct.wsm_buf*, %struct.wsm_mib*, i32, i32) #1

declare dso_local i32 @wsm_cmd_unlock(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
