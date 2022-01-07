; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_revision = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"acx fw rev\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_FW_REV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ACX_FW_REV interrogate failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_fw_version(%struct.wl1251* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.acx_revision*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @DEBUG_ACX, align 4
  %11 = call i32 @wl1251_debug(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.acx_revision* @kzalloc(i32 4, i32 %12)
  store %struct.acx_revision* %13, %struct.acx_revision** %8, align 8
  %14 = load %struct.acx_revision*, %struct.acx_revision** %8, align 8
  %15 = icmp ne %struct.acx_revision* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %21 = load i32, i32* @ACX_FW_REV, align 4
  %22 = load %struct.acx_revision*, %struct.acx_revision** %8, align 8
  %23 = call i32 @wl1251_cmd_interrogate(%struct.wl1251* %20, i32 %21, %struct.acx_revision* %22, i32 4)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @wl1251_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %42

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.acx_revision*, %struct.acx_revision** %8, align 8
  %31 = getelementptr inbounds %struct.acx_revision, %struct.acx_revision* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @min(i64 %33, i32 4)
  %35 = call i32 @strncpy(i8* %29, i32 %32, i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @min(i64 %37, i32 4)
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %28, %26
  %43 = load %struct.acx_revision*, %struct.acx_revision** %8, align 8
  %44 = call i32 @kfree(%struct.acx_revision* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_revision* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_interrogate(%struct.wl1251*, i32, %struct.acx_revision*, i32) #1

declare dso_local i32 @wl1251_warning(i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @kfree(%struct.acx_revision*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
