; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_fc_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_fc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.sk_buff = type { i8* }
%struct.TYPE_2__ = type { i32, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcoe_fc_crc(%struct.fc_frame* %0) #0 {
  %2 = alloca %struct.fc_frame*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fc_frame* %0, %struct.fc_frame** %2, align 8
  %11 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %12 = call %struct.sk_buff* @fp_skb(%struct.fc_frame* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i64 @skb_headlen(%struct.sk_buff* %16)
  %18 = call i32 @crc32(i32 -1, i8* %15, i64 %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %75, %1
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @skb_frag_off(i32* %34)
  store i64 %35, i64* %6, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @skb_frag_size(i32* %36)
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %41, %26
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @PAGE_MASK, align 8
  %46 = xor i64 %45, -1
  %47 = and i64 %44, %46
  %48 = sub i64 %43, %47
  %49 = call i64 @min(i64 %42, i64 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @skb_frag_page(i32* %50)
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @PAGE_SHIFT, align 8
  %54 = lshr i64 %52, %53
  %55 = add i64 %51, %54
  %56 = call i8* @kmap_atomic(i64 %55)
  store i8* %56, i8** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @PAGE_MASK, align 8
  %61 = xor i64 %60, -1
  %62 = and i64 %59, %61
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @crc32(i32 %57, i8* %63, i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @kunmap_atomic(i8* %66)
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %7, align 8
  br label %38

74:                                               ; preds = %38
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %19

78:                                               ; preds = %19
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local %struct.sk_buff* @fp_skb(%struct.fc_frame*) #1

declare dso_local i32 @crc32(i32, i8*, i64) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_off(i32*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @kmap_atomic(i64) #1

declare dso_local i64 @skb_frag_page(i32*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
