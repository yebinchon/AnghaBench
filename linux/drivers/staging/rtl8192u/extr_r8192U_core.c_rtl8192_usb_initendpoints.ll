; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_usb_initendpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_usb_initendpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_4__**, i32*, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@MAX_RX_URB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i16 0, align 2
@i = common dso_local global i32 0, align 4
@RX_URB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Endpoint Alloc Failure\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"End of initendpoints\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*)* @rtl8192_usb_initendpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @rtl8192_usb_initendpoints(%struct.net_device* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %4, align 8
  %7 = load i32, i32* @MAX_RX_URB, align 4
  %8 = add nsw i32 %7, 1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_4__** @kmalloc_array(i32 %8, i32 8, i32 %9)
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  store %struct.TYPE_4__** %10, %struct.TYPE_4__*** %12, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %14, align 8
  %16 = icmp ne %struct.TYPE_4__** %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load i16, i16* @ENOMEM, align 2
  %19 = sext i16 %18 to i32
  %20 = sub nsw i32 0, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %2, align 2
  br label %126

22:                                               ; preds = %1
  store i32 0, i32* @i, align 4
  br label %23

23:                                               ; preds = %88, %22
  %24 = load i32, i32* @i, align 4
  %25 = load i32, i32* @MAX_RX_URB, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %23
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @usb_alloc_urb(i32 0, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_4__*
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* @i, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %39, align 8
  %41 = load i32, i32* @i, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %28
  %47 = load i16, i16* @ENOMEM, align 2
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 0, %48
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %2, align 2
  br label %126

51:                                               ; preds = %28
  %52 = load i32, i32* @RX_URB_SIZE, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kmalloc(i32 %52, i32 %53)
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %56, align 8
  %58 = load i32, i32* @i, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i8* %54, i8** %62, align 8
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i32, i32* @i, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %51
  %74 = load i16, i16* @ENOMEM, align 2
  %75 = sext i16 %74 to i32
  %76 = sub nsw i32 0, %75
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %2, align 2
  br label %126

78:                                               ; preds = %51
  %79 = load i32, i32* @RX_URB_SIZE, align 4
  %80 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %81, align 8
  %83 = load i32, i32* @i, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %82, i64 %84
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %79, i32* %87, align 8
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* @i, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @i, align 4
  br label %23

91:                                               ; preds = %23
  %92 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %93 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %93, align 8
  %95 = load i32, i32* @MAX_RX_URB, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 8, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memset(%struct.TYPE_4__** %94, i32 0, i32 %98)
  %100 = load i32, i32* @MAX_RX_URB, align 4
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i32* @kcalloc(i32 %100, i32 8, i32 %101)
  %103 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %104 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %103, i32 0, i32 1
  store i32* %102, i32** %104, align 8
  %105 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %106 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %123, label %109

109:                                              ; preds = %91
  %110 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %111 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %111, align 8
  %113 = call i32 @kfree(%struct.TYPE_4__** %112)
  %114 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %115 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %114, i32 0, i32 1
  store i32* null, i32** %115, align 8
  %116 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %117 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %116, i32 0, i32 0
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %117, align 8
  %118 = call i32 @DMESGE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %119 = load i16, i16* @ENOMEM, align 2
  %120 = sext i16 %119 to i32
  %121 = sub nsw i32 0, %120
  %122 = trunc i32 %121 to i16
  store i16 %122, i16* %2, align 2
  br label %126

123:                                              ; preds = %91
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = call i32 @netdev_dbg(%struct.net_device* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i16 0, i16* %2, align 2
  br label %126

126:                                              ; preds = %123, %109, %73, %46, %17
  %127 = load i16, i16* %2, align 2
  ret i16 %127
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__** @kmalloc_array(i32, i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__**, i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__**) #1

declare dso_local i32 @DMESGE(i8*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
