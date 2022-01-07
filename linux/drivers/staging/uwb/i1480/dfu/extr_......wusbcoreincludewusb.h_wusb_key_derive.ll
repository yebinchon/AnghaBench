; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_......wusbcoreincludewusb.h_wusb_key_derive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_......wusbcoreincludewusb.h_wusb_key_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_ccm_label = type { i8* }
%struct.wusb_keydvt_out = type { i32 }
%struct.aes_ccm_nonce = type { i32 }
%struct.wusb_keydvt_in = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Pair-wise keys\00", align 1
@__const.wusb_key_derive.a = private unnamed_addr constant %struct.aes_ccm_label { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wusb_keydvt_out*, i32*, %struct.aes_ccm_nonce*, %struct.wusb_keydvt_in*)* @wusb_key_derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusb_key_derive(%struct.wusb_keydvt_out* %0, i32* %1, %struct.aes_ccm_nonce* %2, %struct.wusb_keydvt_in* %3) #0 {
  %5 = alloca %struct.wusb_keydvt_out*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aes_ccm_nonce*, align 8
  %8 = alloca %struct.wusb_keydvt_in*, align 8
  %9 = alloca %struct.aes_ccm_label, align 8
  store %struct.wusb_keydvt_out* %0, %struct.wusb_keydvt_out** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.aes_ccm_nonce* %2, %struct.aes_ccm_nonce** %7, align 8
  store %struct.wusb_keydvt_in* %3, %struct.wusb_keydvt_in** %8, align 8
  %10 = bitcast %struct.aes_ccm_label* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.aes_ccm_label* @__const.wusb_key_derive.a to i8*), i64 8, i1 false)
  %11 = load %struct.wusb_keydvt_out*, %struct.wusb_keydvt_out** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.aes_ccm_nonce*, %struct.aes_ccm_nonce** %7, align 8
  %14 = load %struct.wusb_keydvt_in*, %struct.wusb_keydvt_in** %8, align 8
  %15 = call i32 @wusb_prf_256(%struct.wusb_keydvt_out* %11, i32 4, i32* %12, %struct.aes_ccm_nonce* %13, %struct.aes_ccm_label* %9, %struct.wusb_keydvt_in* %14, i32 4)
  ret i32 %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wusb_prf_256(%struct.wusb_keydvt_out*, i32, i32*, %struct.aes_ccm_nonce*, %struct.aes_ccm_label*, %struct.wusb_keydvt_in*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
