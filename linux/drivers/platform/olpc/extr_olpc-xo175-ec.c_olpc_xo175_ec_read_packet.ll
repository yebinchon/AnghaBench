; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-xo175-ec.c_olpc_xo175_ec_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-xo175-ec.c_olpc_xo175_ec_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.olpc_xo175_ec = type { i32 }

@__const.olpc_xo175_ec_read_packet.nonce = private unnamed_addr constant [2 x i32] [i32 165, i32 90], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.olpc_xo175_ec*)* @olpc_xo175_ec_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @olpc_xo175_ec_read_packet(%struct.olpc_xo175_ec* %0) #0 {
  %2 = alloca %struct.olpc_xo175_ec*, align 8
  %3 = alloca [2 x i32], align 4
  store %struct.olpc_xo175_ec* %0, %struct.olpc_xo175_ec** %2, align 8
  %4 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([2 x i32]* @__const.olpc_xo175_ec_read_packet.nonce to i8*), i64 8, i1 false)
  %5 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %2, align 8
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %7 = call i32 @olpc_xo175_ec_send_command(%struct.olpc_xo175_ec* %5, i32* %6, i32 8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @olpc_xo175_ec_send_command(%struct.olpc_xo175_ec*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
