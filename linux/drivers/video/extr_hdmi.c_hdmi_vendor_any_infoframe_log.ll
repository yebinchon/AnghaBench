; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_vendor_any_infoframe_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_vendor_any_infoframe_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.hdmi_vendor_any_infoframe = type { %struct.hdmi_vendor_infoframe }
%struct.hdmi_vendor_infoframe = type { i64, i64, i64 }
%struct.hdmi_any_infoframe = type { i32 }
%struct.TYPE_2__ = type { i64 }

@HDMI_IEEE_OUI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"    not a HDMI vendor infoframe\0A\00", align 1
@HDMI_3D_STRUCTURE_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"    empty frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"    HDMI VIC: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"    3D structure: %s\0A\00", align 1
@HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"    3D extension data: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.device*, %union.hdmi_vendor_any_infoframe*)* @hdmi_vendor_any_infoframe_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_vendor_any_infoframe_log(i8* %0, %struct.device* %1, %union.hdmi_vendor_any_infoframe* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %union.hdmi_vendor_any_infoframe*, align 8
  %7 = alloca %struct.hdmi_vendor_infoframe*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %union.hdmi_vendor_any_infoframe* %2, %union.hdmi_vendor_any_infoframe** %6, align 8
  %8 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %6, align 8
  %9 = bitcast %union.hdmi_vendor_any_infoframe* %8 to %struct.hdmi_vendor_infoframe*
  store %struct.hdmi_vendor_infoframe* %9, %struct.hdmi_vendor_infoframe** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %6, align 8
  %13 = bitcast %union.hdmi_vendor_any_infoframe* %12 to %struct.hdmi_any_infoframe*
  %14 = call i32 @hdmi_infoframe_log_header(i8* %10, %struct.device* %11, %struct.hdmi_any_infoframe* %13)
  %15 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %6, align 8
  %16 = bitcast %union.hdmi_vendor_any_infoframe* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HDMI_IEEE_OUI, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %69

23:                                               ; preds = %3
  %24 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %7, align 8
  %25 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %7, align 8
  %30 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HDMI_3D_STRUCTURE_INVALID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %69

36:                                               ; preds = %28, %23
  %37 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %7, align 8
  %38 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %7, align 8
  %43 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %7, align 8
  %48 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HDMI_3D_STRUCTURE_INVALID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %7, align 8
  %54 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @hdmi_3d_structure_get_name(i64 %55)
  %57 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %7, align 8
  %59 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %7, align 8
  %65 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %63, %52
  br label %69

69:                                               ; preds = %21, %34, %68, %46
  ret void
}

declare dso_local i32 @hdmi_infoframe_log_header(i8*, %struct.device*, %struct.hdmi_any_infoframe*) #1

declare dso_local i32 @hdmi_log(i8*, ...) #1

declare dso_local i64 @hdmi_3d_structure_get_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
