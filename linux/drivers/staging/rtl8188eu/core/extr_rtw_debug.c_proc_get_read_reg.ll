; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_debug.c_proc_get_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_debug.c_proc_get_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { i32 }

@proc_get_read_addr = common dso_local global i32 0, align 4
@proc_get_read_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"usb_read8(0x%x)=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"usb_read16(0x%x)=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"usb_read32(0x%x)=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"error read length=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_get_read_reg(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.adapter*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = bitcast i8* %17 to %struct.net_device*
  store %struct.net_device* %18, %struct.net_device** %14, align 8
  %19 = load %struct.net_device*, %struct.net_device** %14, align 8
  %20 = call i64 @rtw_netdev_priv(%struct.net_device* %19)
  %21 = inttoptr i64 %20 to %struct.adapter*
  store %struct.adapter* %21, %struct.adapter** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @proc_get_read_addr, align 4
  %23 = icmp eq i32 %22, -286331154
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32*, i32** %12, align 8
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %7, align 4
  br label %89

27:                                               ; preds = %6
  %28 = load i32, i32* @proc_get_read_len, align 4
  switch i32 %28, label %74 [
    i32 1, label %29
    i32 2, label %44
    i32 4, label %59
  ]

29:                                               ; preds = %27
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %16, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* @proc_get_read_addr, align 4
  %38 = load %struct.adapter*, %struct.adapter** %15, align 8
  %39 = load i32, i32* @proc_get_read_addr, align 4
  %40 = call i32 @usb_read8(%struct.adapter* %38, i32 %39)
  %41 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %33, i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %16, align 4
  br label %86

44:                                               ; preds = %27
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %16, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* @proc_get_read_addr, align 4
  %53 = load %struct.adapter*, %struct.adapter** %15, align 8
  %54 = load i32, i32* @proc_get_read_addr, align 4
  %55 = call i32 @usb_read16(%struct.adapter* %53, i32 %54)
  %56 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %48, i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %16, align 4
  br label %86

59:                                               ; preds = %27
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %16, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* @proc_get_read_addr, align 4
  %68 = load %struct.adapter*, %struct.adapter** %15, align 8
  %69 = load i32, i32* @proc_get_read_addr, align 4
  %70 = call i32 @usb_read32(%struct.adapter* %68, i32 %69)
  %71 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %63, i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %16, align 4
  br label %86

74:                                               ; preds = %27
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %16, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* @proc_get_read_len, align 4
  %83 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %78, i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %74, %59, %44, %29
  %87 = load i32*, i32** %12, align 8
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %86, %24
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

declare dso_local i32 @usb_read16(%struct.adapter*, i32) #1

declare dso_local i32 @usb_read32(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
