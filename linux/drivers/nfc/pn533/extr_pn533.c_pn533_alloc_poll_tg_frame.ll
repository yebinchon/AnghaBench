; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_alloc_poll_tg_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_alloc_poll_tg_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pn533 = type { i32*, i64 }

@__const.pn533_alloc_poll_tg_frame.mifare_params = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 64], align 16
@PN533_INIT_TARGET_DEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.pn533*)* @pn533_alloc_poll_tg_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @pn533_alloc_poll_tg_frame(%struct.pn533* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.pn533*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [18 x i32], align 16
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.pn533* %0, %struct.pn533** %3, align 8
  %12 = load %struct.pn533*, %struct.pn533** %3, align 8
  %13 = getelementptr inbounds %struct.pn533, %struct.pn533* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.pn533*, %struct.pn533** %3, align 8
  %16 = getelementptr inbounds %struct.pn533, %struct.pn533* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = bitcast [18 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 72, i1 false)
  %19 = bitcast i8* %18 to [18 x i32]*
  %20 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i32 0, i32 0
  store i32 1, i32* %20, align 16
  %21 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i32 0, i32 1
  store i32 254, i32* %21, align 4
  %22 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i32 0, i32 16
  store i32 255, i32* %22, align 16
  %23 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i32 0, i32 17
  store i32 255, i32* %23, align 4
  %24 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([6 x i32]* @__const.pn533_alloc_poll_tg_frame.mifare_params to i8*), i64 24, i1 false)
  %25 = load i64, i64* %8, align 8
  %26 = add i64 36, %25
  %27 = add i64 %26, 1
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load %struct.pn533*, %struct.pn533** %3, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.sk_buff* @pn533_alloc_skb(%struct.pn533* %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %63

35:                                               ; preds = %1
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i64, i64* @PN533_INIT_TARGET_DEP, align 8
  %38 = call i32 @skb_put_u8(%struct.sk_buff* %36, i64 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %41 = call i32* @skb_put_data(%struct.sk_buff* %39, i32* %40, i64 6)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 0
  %44 = call i32* @skb_put_data(%struct.sk_buff* %42, i32* %43, i64 18)
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = call i32 @get_random_bytes(i32* %46, i32 6)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32* @skb_put_zero(%struct.sk_buff* %48, i32 10)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @memcpy(i32* %50, i32* %51, i32 8)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @skb_put_u8(%struct.sk_buff* %53, i64 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32* @skb_put_data(%struct.sk_buff* %56, i32* %57, i64 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @skb_put_u8(%struct.sk_buff* %60, i64 0)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %62, %struct.sk_buff** %2, align 8
  br label %63

63:                                               ; preds = %35, %34
  %64 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @pn533_alloc_skb(%struct.pn533*, i32) #2

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i64) #2

declare dso_local i32* @skb_put_data(%struct.sk_buff*, i32*, i64) #2

declare dso_local i32 @get_random_bytes(i32*, i32) #2

declare dso_local i32* @skb_put_zero(%struct.sk_buff*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
