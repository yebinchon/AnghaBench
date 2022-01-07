; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_rcv_wr_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_rcv_wr_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.cxgbi_sock*, i32)* }
%struct.sk_buff = type { i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"csk 0x%p,%u,0x%lx,%u, cr %u,%u+%u, snd_una %u,%d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"csk 0x%p,%u,0x%lx,%u, cr %u,%u+%u, empty.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"csk 0x%p,%u,0x%lx,%u, cr %u,%u+%u, < %u.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"csk 0x%p,%u,0x%lx,%u, snd_una %u/%u.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_sock_rcv_wr_ack(%struct.cxgbi_sock* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %20 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %27 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %30 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @log_debug(i32 %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %15, i32 %18, i32 %21, i32 %24, i32 %25, i64 %28, i64 %31, i32 %32, i32 %33)
  %35 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %36 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %35, i32 0, i32 4
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %41 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %45 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %48 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %51 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = icmp sgt i64 %46, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %4
  %56 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %57 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %60 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %64 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %55, %4
  br label %66

66:                                               ; preds = %144, %65
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %145

69:                                               ; preds = %66
  %70 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %71 = call %struct.sk_buff* @cxgbi_sock_peek_wr(%struct.cxgbi_sock* %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %9, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %69
  %79 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %80 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %81 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %84 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %87 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %91 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %94 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %79, i32 %82, i32 %85, i32 %88, i32 %89, i64 %92, i64 %95)
  br label %145

97:                                               ; preds = %69
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ult i32 %98, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %97
  %107 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %108 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %109 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %112 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %115 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %119 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %123 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, %struct.cxgbi_sock*, i32, i32, i32, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_sock* %107, i32 %110, i32 %113, i32 %116, i32 %117, i32 %121, i64 %124, i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sub i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %145

134:                                              ; preds = %97
  %135 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %136 = call i32 @cxgbi_sock_dequeue_wr(%struct.cxgbi_sock* %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sub i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %143 = call i32 @kfree_skb(%struct.sk_buff* %142)
  br label %144

144:                                              ; preds = %134
  br label %66

145:                                              ; preds = %106, %78, %66
  %146 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %147 = call i32 @cxgbi_sock_check_wr_invariants(%struct.cxgbi_sock* %146)
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %189

150:                                              ; preds = %145
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %153 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @before(i32 %151, i32 %154)
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %150
  %159 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %160 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %161 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %164 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %167 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %171 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i8*, %struct.cxgbi_sock*, i32, i32, i32, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_sock* %159, i32 %162, i32 %165, i32 %168, i32 %169, i32 %172)
  br label %211

174:                                              ; preds = %150
  %175 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %176 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %174
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %183 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %185 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @dst_confirm(i32 %186)
  br label %188

188:                                              ; preds = %180, %174
  br label %189

189:                                              ; preds = %188, %145
  %190 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %191 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %190, i32 0, i32 6
  %192 = call i64 @skb_queue_len(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %189
  %195 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %196 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %195, i32 0, i32 5
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i64 (%struct.cxgbi_sock*, i32)*, i64 (%struct.cxgbi_sock*, i32)** %198, align 8
  %200 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %201 = call i64 %199(%struct.cxgbi_sock* %200, i32 0)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %194
  %204 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %205 = call i32 @cxgbi_conn_tx_open(%struct.cxgbi_sock* %204)
  br label %206

206:                                              ; preds = %203, %194
  br label %210

207:                                              ; preds = %189
  %208 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %209 = call i32 @cxgbi_conn_tx_open(%struct.cxgbi_sock* %208)
  br label %210

210:                                              ; preds = %207, %206
  br label %211

211:                                              ; preds = %210, %158
  %212 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %213 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %212, i32 0, i32 4
  %214 = call i32 @spin_unlock_bh(i32* %213)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @cxgbi_sock_peek_wr(%struct.cxgbi_sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_sock*, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @pr_warn(i8*, %struct.cxgbi_sock*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @cxgbi_sock_dequeue_wr(%struct.cxgbi_sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cxgbi_sock_check_wr_invariants(%struct.cxgbi_sock*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i32 @dst_confirm(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @cxgbi_conn_tx_open(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
