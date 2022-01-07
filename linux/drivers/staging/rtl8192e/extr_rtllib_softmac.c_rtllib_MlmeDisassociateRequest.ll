; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_MlmeDisassociateRequest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_MlmeDisassociateRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { %struct.TYPE_2__, i32, i32 (i32, i32, i32*)*, i8*, i32 }
%struct.TYPE_2__ = type { i32* }

@RTLLIB_NOLINK = common dso_local global i32 0, align 4
@RT_OP_MODE_NO_LINK = common dso_local global i8* null, align 8
@HW_VAR_MEDIA_STATUS = common dso_local global i32 0, align 4
@HW_VAR_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, i32*, i32)* @rtllib_MlmeDisassociateRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_MlmeDisassociateRequest(%struct.rtllib_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @RemovePeerTS(%struct.rtllib_device* %9, i32* %10)
  %12 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %13 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @memcmp(i32* %15, i32* %16, i32 6)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %3
  %20 = load i32, i32* @RTLLIB_NOLINK, align 4
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %22 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %34, %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %28 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 34, i32* %33, align 4
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %23

37:                                               ; preds = %23
  %38 = load i8*, i8** @RT_OP_MODE_NO_LINK, align 8
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i8*, i8** @RT_OP_MODE_NO_LINK, align 8
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %44 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %43, i32 0, i32 2
  %45 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %44, align 8
  %46 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %47 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @HW_VAR_MEDIA_STATUS, align 4
  %50 = call i32 %45(i32 %48, i32 %49, i32* %8)
  %51 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %52 = call i32 @rtllib_disassociate(%struct.rtllib_device* %51)
  %53 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %54 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %53, i32 0, i32 2
  %55 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %54, align 8
  %56 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %57 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HW_VAR_BSSID, align 4
  %60 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %61 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 %55(i32 %58, i32 %59, i32* %63)
  br label %65

65:                                               ; preds = %37, %3
  ret void
}

declare dso_local i32 @RemovePeerTS(%struct.rtllib_device*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @rtllib_disassociate(%struct.rtllib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
