; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_setup_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_setup_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_device = type { i32 }
%struct.knav_range_info = type { i32, i32, %struct.knav_acc_channel*, i32, %struct.knav_acc_info }
%struct.knav_acc_channel = type { i64*, i32 }
%struct.knav_acc_info = type { i32, i32, i32 }
%struct.knav_reg_acc_command = type { i32, i32, i8*, i8*, i32 }

@RANGE_MULTI_QUEUE = common dso_local global i32 0, align 4
@ACC_LIST_ENTRY_TYPE = common dso_local global i32 0, align 4
@ACC_CFG_MULTI_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knav_device*, %struct.knav_range_info*, %struct.knav_reg_acc_command*, i32)* @knav_acc_setup_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knav_acc_setup_cmd(%struct.knav_device* %0, %struct.knav_range_info* %1, %struct.knav_reg_acc_command* %2, i32 %3) #0 {
  %5 = alloca %struct.knav_device*, align 8
  %6 = alloca %struct.knav_range_info*, align 8
  %7 = alloca %struct.knav_reg_acc_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.knav_acc_info*, align 8
  %10 = alloca %struct.knav_acc_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.knav_device* %0, %struct.knav_device** %5, align 8
  store %struct.knav_range_info* %1, %struct.knav_range_info** %6, align 8
  store %struct.knav_reg_acc_command* %2, %struct.knav_reg_acc_command** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.knav_range_info*, %struct.knav_range_info** %6, align 8
  %14 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %13, i32 0, i32 4
  store %struct.knav_acc_info* %14, %struct.knav_acc_info** %9, align 8
  %15 = load %struct.knav_range_info*, %struct.knav_range_info** %6, align 8
  %16 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RANGE_MULTI_QUEUE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.knav_range_info*, %struct.knav_range_info** %6, align 8
  %23 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %22, i32 0, i32 2
  %24 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %23, align 8
  store %struct.knav_acc_channel* %24, %struct.knav_acc_channel** %10, align 8
  %25 = load %struct.knav_range_info*, %struct.knav_range_info** %6, align 8
  %26 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.knav_range_info*, %struct.knav_range_info** %6, align 8
  %29 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @BIT(i32 %30)
  %32 = getelementptr i8, i8* %31, i64 -1
  store i8* %32, i8** %12, align 8
  br label %45

33:                                               ; preds = %4
  %34 = load %struct.knav_range_info*, %struct.knav_range_info** %6, align 8
  %35 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %34, i32 0, i32 2
  %36 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %36, i64 %38
  store %struct.knav_acc_channel* %39, %struct.knav_acc_channel** %10, align 8
  %40 = load %struct.knav_range_info*, %struct.knav_range_info** %6, align 8
  %41 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %11, align 4
  store i8* null, i8** %12, align 8
  br label %45

45:                                               ; preds = %33, %21
  %46 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %7, align 8
  %47 = call i32 @memset(%struct.knav_reg_acc_command* %46, i32 0, i32 32)
  %48 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %10, align 8
  %49 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %7, align 8
  %52 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %7, align 8
  %55 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %10, align 8
  %57 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %7, align 8
  %63 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.knav_acc_info*, %struct.knav_acc_info** %9, align 8
  %65 = getelementptr inbounds %struct.knav_acc_info, %struct.knav_acc_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %7, align 8
  %69 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %7, align 8
  %72 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @ACC_LIST_ENTRY_TYPE, align 4
  %76 = shl i32 %75, 18
  %77 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %7, align 8
  %78 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.knav_range_info*, %struct.knav_range_info** %6, align 8
  %80 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RANGE_MULTI_QUEUE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %45
  %86 = load i32, i32* @ACC_CFG_MULTI_QUEUE, align 4
  %87 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %7, align 8
  %88 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %45
  %92 = load %struct.knav_acc_info*, %struct.knav_acc_info** %9, align 8
  %93 = getelementptr inbounds %struct.knav_acc_info, %struct.knav_acc_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 16
  %96 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %7, align 8
  %97 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.knav_acc_info*, %struct.knav_acc_info** %9, align 8
  %101 = getelementptr inbounds %struct.knav_acc_info, %struct.knav_acc_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %7, align 8
  %104 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  ret void
}

declare dso_local i8* @BIT(i32) #1

declare dso_local i32 @memset(%struct.knav_reg_acc_command*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
