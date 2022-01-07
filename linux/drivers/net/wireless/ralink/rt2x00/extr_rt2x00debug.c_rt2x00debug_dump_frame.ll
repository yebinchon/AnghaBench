; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00debug.c_rt2x00debug_dump_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00debug.c_rt2x00debug_dump_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_3__, %struct.rt2x00debug_intf* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.rt2x00debug_intf = type { i32, i32, i32 }
%struct.queue_entry = type { i32, %struct.TYPE_4__*, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.skb_frame_desc = type { i32, i32, i32 }
%struct.rt2x00dump_hdr = type { i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.timespec64 = type { i32, i32 }

@FRAME_DUMP_FILE_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"txrx dump queue length exceeded\0A\00", align 1
@SKBDESC_DESC_IN_SKB = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to copy skb for dump\0A\00", align 1
@DUMP_HEADER_VERSION = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00debug_dump_frame(%struct.rt2x00_dev* %0, i32 %1, %struct.queue_entry* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.queue_entry*, align 8
  %7 = alloca %struct.rt2x00debug_intf*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.skb_frame_desc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rt2x00dump_hdr*, align 8
  %12 = alloca %struct.timespec64, align 4
  %13 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.queue_entry* %2, %struct.queue_entry** %6, align 8
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %14, i32 0, i32 1
  %16 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %15, align 8
  store %struct.rt2x00debug_intf* %16, %struct.rt2x00debug_intf** %7, align 8
  %17 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %18 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %17, i32 0, i32 2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff* %20)
  store %struct.skb_frame_desc* %21, %struct.skb_frame_desc** %9, align 8
  %22 = load i32, i32* @FRAME_DUMP_FILE_OPEN, align 4
  %23 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %24 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %23, i32 0, i32 1
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %183

32:                                               ; preds = %3
  %33 = call i32 @ktime_get_ts64(%struct.timespec64* %12)
  %34 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %35 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %34, i32 0, i32 0
  %36 = call i32 @skb_queue_len(i32* %35)
  %37 = icmp sgt i32 %36, 20
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %40 = call i32 @rt2x00_dbg(%struct.rt2x00_dev* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %183

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %46 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %53 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %51, %41
  %58 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %59 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 88, %61
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %62, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call %struct.sk_buff* @alloc_skb(i32 %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %57
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %73 = call i32 @rt2x00_dbg(%struct.rt2x00_dev* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %183

74:                                               ; preds = %57
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = call %struct.rt2x00dump_hdr* @skb_put(%struct.sk_buff* %75, i32 88)
  store %struct.rt2x00dump_hdr* %76, %struct.rt2x00dump_hdr** %11, align 8
  %77 = load i32, i32* @DUMP_HEADER_VERSION, align 4
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %80 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %79, i32 0, i32 11
  store i8* %78, i8** %80, align 8
  %81 = call i8* @cpu_to_le32(i32 88)
  %82 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %83 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %82, i32 0, i32 10
  store i8* %81, i8** %83, align 8
  %84 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %85 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %89 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %88, i32 0, i32 9
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %93 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %92, i32 0, i32 8
  store i8* %91, i8** %93, align 8
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %95 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %100 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %102 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @cpu_to_le16(i32 %104)
  %106 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %107 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %109 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @cpu_to_le16(i32 %111)
  %113 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %114 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %118 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %117, i32 0, i32 4
  store i8* %116, i8** %118, align 8
  %119 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %120 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %125 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %127 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %130 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @cpu_to_le32(i32 %132)
  %134 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %135 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @NSEC_PER_USEC, align 4
  %139 = sdiv i32 %137, %138
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %11, align 8
  %142 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %144 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %74
  %150 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %151 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %152 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %155 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @skb_put_data(%struct.sk_buff* %150, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %149, %74
  %159 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @skb_put_data(%struct.sk_buff* %159, i32 %162, i32 %165)
  %167 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %168 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %167, i32 0, i32 0
  %169 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %170 = call i32 @skb_queue_tail(i32* %168, %struct.sk_buff* %169)
  %171 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %172 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %171, i32 0, i32 2
  %173 = call i32 @wake_up_interruptible(i32* %172)
  %174 = load i32, i32* @FRAME_DUMP_FILE_OPEN, align 4
  %175 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %176 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %175, i32 0, i32 1
  %177 = call i32 @test_bit(i32 %174, i32* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %158
  %180 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %181 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %180, i32 0, i32 0
  %182 = call i32 @skb_queue_purge(i32* %181)
  br label %183

183:                                              ; preds = %31, %38, %71, %179, %158
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @rt2x00_dbg(%struct.rt2x00_dev*, i8*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.rt2x00dump_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
