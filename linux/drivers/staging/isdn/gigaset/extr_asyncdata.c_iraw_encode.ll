; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_iraw_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_iraw_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8*, i64 }

@DLE_FLAG = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*)* @iraw_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @iraw_encode(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 2, %10
  %12 = sext i32 %11 to i64
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call %struct.sk_buff* @dev_alloc_skb(i64 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %21)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @skb_reset_mac_header(%struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @skb_reserve(%struct.sk_buff* %26, i64 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @skb_mac_header(%struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @skb_mac_header(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @memcpy(i32 %32, i32 %34, i64 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %6, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %69, %23
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i32
  %59 = call zeroext i8 @bitrev8(i32 %58)
  store i8 %59, i8* %5, align 1
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @DLE_FLAG, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i8, i8* %5, align 1
  %68 = call i32 @skb_put_u8(%struct.sk_buff* %66, i8 zeroext %67)
  br label %69

69:                                               ; preds = %65, %54
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load i8, i8* %5, align 1
  %72 = call i32 @skb_put_u8(%struct.sk_buff* %70, i8 zeroext %71)
  br label %50

73:                                               ; preds = %50
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %76, %struct.sk_buff** %2, align 8
  br label %77

77:                                               ; preds = %73, %20
  %78 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %78
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local zeroext i8 @bitrev8(i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
