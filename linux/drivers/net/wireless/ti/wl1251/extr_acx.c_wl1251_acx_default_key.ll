; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_default_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_default_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i8* }
%struct.acx_dot11_default_key = type { i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"acx dot11_default_key (%d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DOT11_DEFAULT_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't set default key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_default_key(%struct.wl1251* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acx_dot11_default_key*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @DEBUG_ACX, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @wl1251_debug(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.acx_dot11_default_key* @kzalloc(i32 8, i32 %11)
  store %struct.acx_dot11_default_key* %12, %struct.acx_dot11_default_key** %6, align 8
  %13 = load %struct.acx_dot11_default_key*, %struct.acx_dot11_default_key** %6, align 8
  %14 = icmp ne %struct.acx_dot11_default_key* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.acx_dot11_default_key*, %struct.acx_dot11_default_key** %6, align 8
  %21 = getelementptr inbounds %struct.acx_dot11_default_key, %struct.acx_dot11_default_key* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %23 = load i32, i32* @DOT11_DEFAULT_KEY, align 4
  %24 = load %struct.acx_dot11_default_key*, %struct.acx_dot11_default_key** %6, align 8
  %25 = call i32 @wl1251_cmd_configure(%struct.wl1251* %22, i32 %23, %struct.acx_dot11_default_key* %24, i32 8)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 @wl1251_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %34

30:                                               ; preds = %18
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %33 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %28
  %35 = load %struct.acx_dot11_default_key*, %struct.acx_dot11_default_key** %6, align 8
  %36 = call i32 @kfree(%struct.acx_dot11_default_key* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @wl1251_debug(i32, i8*, i8*) #1

declare dso_local %struct.acx_dot11_default_key* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_dot11_default_key*, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @kfree(%struct.acx_dot11_default_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
