; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c_uwb_rc_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c_uwb_rc_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_rceb = type { i32 }
%struct.uwb_rc_cmd_done_params = type { i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, i8*, %struct.uwb_rceb*, i32)* @uwb_rc_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rc_cmd_done(%struct.uwb_rc* %0, i8* %1, %struct.uwb_rceb* %2, i32 %3) #0 {
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uwb_rceb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uwb_rc_cmd_done_params*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.uwb_rceb* %2, %struct.uwb_rceb** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.uwb_rc_cmd_done_params*
  store %struct.uwb_rc_cmd_done_params* %11, %struct.uwb_rc_cmd_done_params** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %4
  %15 = load %struct.uwb_rc_cmd_done_params*, %struct.uwb_rc_cmd_done_params** %9, align 8
  %16 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.uwb_rc_cmd_done_params*, %struct.uwb_rc_cmd_done_params** %9, align 8
  %21 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @min(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %31

25:                                               ; preds = %14
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call i64 @kmalloc(i32 %26, i32 %27)
  %29 = load %struct.uwb_rc_cmd_done_params*, %struct.uwb_rc_cmd_done_params** %9, align 8
  %30 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.uwb_rc_cmd_done_params*, %struct.uwb_rc_cmd_done_params** %9, align 8
  %33 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.uwb_rc_cmd_done_params*, %struct.uwb_rc_cmd_done_params** %9, align 8
  %38 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.uwb_rceb*, %struct.uwb_rceb** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @memcpy(i64 %39, %struct.uwb_rceb* %40, i32 %41)
  br label %46

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.uwb_rc_cmd_done_params*, %struct.uwb_rc_cmd_done_params** %9, align 8
  %50 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.uwb_rc_cmd_done_params*, %struct.uwb_rc_cmd_done_params** %9, align 8
  %52 = getelementptr inbounds %struct.uwb_rc_cmd_done_params, %struct.uwb_rc_cmd_done_params* %51, i32 0, i32 0
  %53 = call i32 @complete(i32* %52)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, %struct.uwb_rceb*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
