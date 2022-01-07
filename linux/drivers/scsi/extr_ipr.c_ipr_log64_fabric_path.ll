; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log64_fabric_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log64_fabric_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.ipr_hostrcb = type { i32 }
%struct.ipr_hostrcb64_fabric_desc = type { i64, i32 }

@IPR_PATH_ACTIVE_MASK = common dso_local global i64 0, align 8
@IPR_PATH_STATE_MASK = common dso_local global i64 0, align 8
@IPR_MAX_RES_PATH_LENGTH = common dso_local global i32 0, align 4
@path_active_desc = common dso_local global %struct.TYPE_4__* null, align 8
@path_state_desc = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s %s: Resource Path=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Path state=%02X Resource Path=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_hostrcb*, %struct.ipr_hostrcb64_fabric_desc*)* @ipr_log64_fabric_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_log64_fabric_path(%struct.ipr_hostrcb* %0, %struct.ipr_hostrcb64_fabric_desc* %1) #0 {
  %3 = alloca %struct.ipr_hostrcb*, align 8
  %4 = alloca %struct.ipr_hostrcb64_fabric_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ipr_hostrcb* %0, %struct.ipr_hostrcb** %3, align 8
  store %struct.ipr_hostrcb64_fabric_desc* %1, %struct.ipr_hostrcb64_fabric_desc** %4, align 8
  %13 = load %struct.ipr_hostrcb64_fabric_desc*, %struct.ipr_hostrcb64_fabric_desc** %4, align 8
  %14 = getelementptr inbounds %struct.ipr_hostrcb64_fabric_desc, %struct.ipr_hostrcb64_fabric_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @IPR_PATH_ACTIVE_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @IPR_PATH_STATE_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* @IPR_MAX_RES_PATH_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %84, %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_active_desc, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %87

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_active_desc, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %84

41:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %80, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_state_desc, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_state_desc, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %80

57:                                               ; preds = %47
  %58 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_active_desc, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_state_desc, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %72 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ipr_hostrcb64_fabric_desc*, %struct.ipr_hostrcb64_fabric_desc** %4, align 8
  %75 = getelementptr inbounds %struct.ipr_hostrcb64_fabric_desc, %struct.ipr_hostrcb64_fabric_desc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = trunc i64 %23 to i32
  %78 = call i32 @ipr_format_res_path(i32 %73, i32 %76, i8* %25, i32 %77)
  %79 = call i32 @ipr_hcam_err(%struct.ipr_hostrcb* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %70, i32 %78)
  store i32 1, i32* %12, align 4
  br label %98

80:                                               ; preds = %56
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %42

83:                                               ; preds = %42
  br label %84

84:                                               ; preds = %83, %40
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %26

87:                                               ; preds = %26
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %90 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ipr_hostrcb64_fabric_desc*, %struct.ipr_hostrcb64_fabric_desc** %4, align 8
  %93 = getelementptr inbounds %struct.ipr_hostrcb64_fabric_desc, %struct.ipr_hostrcb64_fabric_desc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = trunc i64 %23 to i32
  %96 = call i32 @ipr_format_res_path(i32 %91, i32 %94, i8* %25, i32 %95)
  %97 = call i32 @ipr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %88, i32 %96)
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %87, %57
  %99 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %12, align 4
  switch i32 %100, label %102 [
    i32 0, label %101
    i32 1, label %101
  ]

101:                                              ; preds = %98, %98
  ret void

102:                                              ; preds = %98
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #2

declare dso_local i32 @ipr_hcam_err(%struct.ipr_hostrcb*, i8*, i32, i32, i32) #2

declare dso_local i32 @ipr_format_res_path(i32, i32, i8*, i32) #2

declare dso_local i32 @ipr_err(i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
