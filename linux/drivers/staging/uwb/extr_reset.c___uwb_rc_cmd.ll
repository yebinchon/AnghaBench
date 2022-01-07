; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c___uwb_rc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c___uwb_rc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rccb = type { i32 }
%struct.uwb_rceb = type { i32 }
%struct.uwb_rc_cmd_done_params = type { i64, %struct.uwb_rceb*, i32 }

@uwb_rc_cmd_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%s: confirmation event 0x%02x/%04x/%02x reception failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uwb_rc*, i8*, %struct.uwb_rccb*, i64, %struct.uwb_rceb*, i64, i32, i32, %struct.uwb_rceb**)* @__uwb_rc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__uwb_rc_cmd(%struct.uwb_rc* %0, i8* %1, %struct.uwb_rccb* %2, i64 %3, %struct.uwb_rceb* %4, i64 %5, i32 %6, i32 %7, %struct.uwb_rceb** %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.uwb_rc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.uwb_rccb*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.uwb_rceb*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.uwb_rceb**, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.device*, align 8
  %22 = alloca %struct.uwb_rc_cmd_done_params, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct.uwb_rccb* %2, %struct.uwb_rccb** %13, align 8
  store i64 %3, i64* %14, align 8
  store %struct.uwb_rceb* %4, %struct.uwb_rceb** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.uwb_rceb** %8, %struct.uwb_rceb*** %19, align 8
  store i64 0, i64* %20, align 8
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %11, align 8
  %24 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.device* %25, %struct.device** %21, align 8
  %26 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %22, i32 0, i32 2
  %27 = call i32 @init_completion(i32* %26)
  %28 = load %struct.uwb_rceb*, %struct.uwb_rceb** %15, align 8
  %29 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %22, i32 0, i32 1
  store %struct.uwb_rceb* %28, %struct.uwb_rceb** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %22, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load %struct.uwb_rc*, %struct.uwb_rc** %11, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load %struct.uwb_rccb*, %struct.uwb_rccb** %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @uwb_rc_cmd_done, align 4
  %39 = call i64 @uwb_rc_cmd_async(%struct.uwb_rc* %32, i8* %33, %struct.uwb_rccb* %34, i64 %35, i32 %36, i32 %37, i32 %38, %struct.uwb_rc_cmd_done_params* %22)
  store i64 %39, i64* %20, align 8
  %40 = load i64, i64* %20, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %9
  %43 = load i64, i64* %20, align 8
  store i64 %43, i64* %10, align 8
  br label %72

44:                                               ; preds = %9
  %45 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %22, i32 0, i32 2
  %46 = call i32 @wait_for_completion(i32* %45)
  %47 = load %struct.uwb_rceb**, %struct.uwb_rceb*** %19, align 8
  %48 = icmp ne %struct.uwb_rceb** %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %22, i32 0, i32 1
  %51 = load %struct.uwb_rceb*, %struct.uwb_rceb** %50, align 8
  %52 = load %struct.uwb_rceb**, %struct.uwb_rceb*** %19, align 8
  store %struct.uwb_rceb* %51, %struct.uwb_rceb** %52, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %22, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load %struct.device*, %struct.device** %21, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load %struct.uwb_rccb*, %struct.uwb_rccb** %13, align 8
  %63 = getelementptr inbounds %struct.uwb_rccb, %struct.uwb_rccb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %22, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %60, i32 %61, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %57, %53
  %70 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %22, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %69, %42
  %73 = load i64, i64* %10, align 8
  ret i64 %73
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @uwb_rc_cmd_async(%struct.uwb_rc*, i8*, %struct.uwb_rccb*, i64, i32, i32, i32, %struct.uwb_rc_cmd_done_params*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
