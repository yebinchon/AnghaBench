; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_validate_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_validate_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.cxgbit_sock* }
%struct.cxgbit_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cxgbit_device* }
%struct.cxgbit_device = type { i64 }
%struct.iscsi_param = type { i32 }

@MAXXMITDATASEGMENTLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MaxXmitDataSegmentLength=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbit_validate_params(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.cxgbit_sock*, align 8
  %5 = alloca %struct.cxgbit_device*, align 8
  %6 = alloca %struct.iscsi_param*, align 8
  %7 = alloca i64, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 1
  %10 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %9, align 8
  store %struct.cxgbit_sock* %10, %struct.cxgbit_sock** %4, align 8
  %11 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %12 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.cxgbit_device*, %struct.cxgbit_device** %13, align 8
  store %struct.cxgbit_device* %14, %struct.cxgbit_device** %5, align 8
  %15 = load i32, i32* @MAXXMITDATASEGMENTLENGTH, align 4
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %15, i32 %18)
  store %struct.iscsi_param* %19, %struct.iscsi_param** %6, align 8
  %20 = load %struct.iscsi_param*, %struct.iscsi_param** %6, align 8
  %21 = icmp ne %struct.iscsi_param* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %46

23:                                               ; preds = %1
  %24 = load %struct.iscsi_param*, %struct.iscsi_param** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @kstrtou32(i32 %26, i32 0, i64* %7)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %46

30:                                               ; preds = %23
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %33 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %38 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %39 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @iscsi_change_param_sprintf(%struct.iscsi_conn* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %46

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %30
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %43, %29, %22
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i64 @kstrtou32(i32, i32, i64*) #1

declare dso_local i64 @iscsi_change_param_sprintf(%struct.iscsi_conn*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
