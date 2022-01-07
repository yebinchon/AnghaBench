; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c___lcs_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c___lcs_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i64, i64, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.lcs_header = type { i64, i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hardxmit\00", align 1
@DEV_STATE_UP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@LCS_IOBUFFERSIZE = common dso_local global i64 0, align 8
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@lcs_txbuffer_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*, %struct.sk_buff*, %struct.net_device*)* @__lcs_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lcs_start_xmit(%struct.lcs_card* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcs_card*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.lcs_header*, align 8
  %9 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %10 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @trace, align 4
  %12 = call i32 @LCS_DBF_TEXT(i32 5, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = icmp eq %struct.sk_buff* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %17 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %22 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %216

27:                                               ; preds = %3
  %28 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %29 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DEV_STATE_UP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i32 @dev_kfree_skb(%struct.sk_buff* %34)
  %36 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %37 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %42 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %47 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %216

52:                                               ; preds = %27
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @ETH_P_IPV6, align 4
  %57 = call i64 @htons(i32 %56)
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @dev_kfree_skb(%struct.sk_buff* %60)
  %62 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %216

63:                                               ; preds = %52
  %64 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %65 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @netif_stop_queue(i32 %66)
  %68 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %69 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %68, i32 0, i32 2
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %72 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %63
  %76 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %77 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 16
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %81, %84
  %86 = add i64 %85, 4
  %87 = load i64, i64* @LCS_IOBUFFERSIZE, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %75
  %90 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %91 = call i32 @__lcs_emit_txbuffer(%struct.lcs_card* %90)
  br label %92

92:                                               ; preds = %89, %75, %63
  %93 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %94 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = icmp eq %struct.TYPE_4__* %95, null
  br i1 %96, label %97, label %124

97:                                               ; preds = %92
  %98 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %99 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %98, i32 0, i32 8
  %100 = call %struct.TYPE_4__* @lcs_get_buffer(i32* %99)
  %101 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %102 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %101, i32 0, i32 3
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %102, align 8
  %103 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %104 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = icmp eq %struct.TYPE_4__* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %97
  %108 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %109 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %113, i32* %9, align 4
  br label %211

114:                                              ; preds = %97
  %115 = load i32, i32* @lcs_txbuffer_cb, align 4
  %116 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %117 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %116, i32 0, i32 3
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  store i32 %115, i32* %119, align 8
  %120 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %121 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %120, i32 0, i32 3
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %114, %92
  %125 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %126 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %125, i32 0, i32 3
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %131 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %130, i32 0, i32 3
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %129, %134
  %136 = inttoptr i64 %135 to %struct.lcs_header*
  store %struct.lcs_header* %136, %struct.lcs_header** %8, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 16
  %141 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %142 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %141, i32 0, i32 3
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, %140
  store i64 %146, i64* %144, align 8
  %147 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %148 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %147, i32 0, i32 3
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.lcs_header*, %struct.lcs_header** %8, align 8
  %153 = getelementptr inbounds %struct.lcs_header, %struct.lcs_header* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %155 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.lcs_header*, %struct.lcs_header** %8, align 8
  %158 = getelementptr inbounds %struct.lcs_header, %struct.lcs_header* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %160 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.lcs_header*, %struct.lcs_header** %8, align 8
  %163 = getelementptr inbounds %struct.lcs_header, %struct.lcs_header* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = load %struct.lcs_header*, %struct.lcs_header** %8, align 8
  %166 = getelementptr inbounds %struct.lcs_header, %struct.lcs_header* %165, i64 1
  %167 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %164, %struct.lcs_header* %166, i64 %169)
  %171 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %172 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %171, i32 0, i32 2
  %173 = call i32 @spin_unlock(i32* %172)
  %174 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %178 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %176
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  %184 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %185 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = call i32 @dev_kfree_skb(%struct.sk_buff* %189)
  %191 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %192 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @netif_wake_queue(i32 %193)
  %195 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %196 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %195, i32 0, i32 2
  %197 = call i32 @spin_lock(i32* %196)
  %198 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %199 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp sle i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %124
  %203 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %204 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %203, i32 0, i32 3
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = icmp ne %struct.TYPE_4__* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %209 = call i32 @__lcs_emit_txbuffer(%struct.lcs_card* %208)
  br label %210

210:                                              ; preds = %207, %202, %124
  br label %211

211:                                              ; preds = %210, %107
  %212 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %213 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %212, i32 0, i32 2
  %214 = call i32 @spin_unlock(i32* %213)
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %211, %59, %33, %15
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__lcs_emit_txbuffer(%struct.lcs_card*) #1

declare dso_local %struct.TYPE_4__* @lcs_get_buffer(i32*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, %struct.lcs_header*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
