; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_auth_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_auth_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.rtllib_authentication = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid len in auth resp: %d\0A\00", align 1
@MFIE_TYPE_CHALLENGE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, i32**, i32*)* @auth_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_parse(%struct.net_device* %0, %struct.sk_buff* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rtllib_authentication*, align 8
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netdev_dbg(%struct.net_device* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 51966, i32* %5, align 4
  br label %68

23:                                               ; preds = %4
  %24 = load i32**, i32*** %8, align 8
  store i32* null, i32** %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = bitcast i32* %27 to %struct.rtllib_authentication*
  store %struct.rtllib_authentication* %28, %struct.rtllib_authentication** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %32, 7
  br i1 %33, label %34, label %63

34:                                               ; preds = %23
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %11, align 8
  %41 = load i32, i32* %39, align 4
  %42 = load i32, i32* @MFIE_TYPE_CHALLENGE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %34
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %11, align 8
  %47 = load i32, i32* %45, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i32* @kmemdup(i32* %49, i32 %51, i32 %52)
  %54 = load i32**, i32*** %8, align 8
  store i32* %53, i32** %54, align 8
  %55 = load i32**, i32*** %8, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %68

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62, %23
  %64 = load %struct.rtllib_authentication*, %struct.rtllib_authentication** %10, align 8
  %65 = getelementptr inbounds %struct.rtllib_authentication, %struct.rtllib_authentication* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %58, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
