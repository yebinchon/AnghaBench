; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_r8712_decryptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_r8712_decryptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv }
%struct.security_priv = type { i32, i64 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.recv_frame* @r8712_decryptor(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca %struct.rx_pkt_attrib*, align 8
  %6 = alloca %struct.security_priv*, align 8
  %7 = alloca %union.recv_frame*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %8 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %9 = bitcast %union.recv_frame* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.rx_pkt_attrib* %11, %struct.rx_pkt_attrib** %5, align 8
  %12 = load %struct._adapter*, %struct._adapter** %3, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 0
  store %struct.security_priv* %13, %struct.security_priv** %6, align 8
  %14 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %14, %union.recv_frame** %7, align 8
  %15 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %16 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %2
  %20 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %21 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %26 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24, %19
  %30 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %31 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %33 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %50 [
    i32 128, label %35
    i32 129, label %35
    i32 130, label %40
    i32 131, label %45
  ]

35:                                               ; preds = %29, %29
  %36 = load %struct._adapter*, %struct._adapter** %3, align 8
  %37 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %38 = bitcast %union.recv_frame* %37 to i32*
  %39 = call i32 @r8712_wep_decrypt(%struct._adapter* %36, i32* %38)
  br label %51

40:                                               ; preds = %29
  %41 = load %struct._adapter*, %struct._adapter** %3, align 8
  %42 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %43 = bitcast %union.recv_frame* %42 to i32*
  %44 = call i32 @r8712_tkip_decrypt(%struct._adapter* %41, i32* %43)
  br label %51

45:                                               ; preds = %29
  %46 = load %struct._adapter*, %struct._adapter** %3, align 8
  %47 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %48 = bitcast %union.recv_frame* %47 to i32*
  %49 = call i32 @r8712_aes_decrypt(%struct._adapter* %46, i32* %48)
  br label %51

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50, %45, %40, %35
  br label %61

52:                                               ; preds = %24, %2
  %53 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %54 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %59 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %union.recv_frame*, %union.recv_frame** %7, align 8
  ret %union.recv_frame* %62
}

declare dso_local i32 @r8712_wep_decrypt(%struct._adapter*, i32*) #1

declare dso_local i32 @r8712_tkip_decrypt(%struct._adapter*, i32*) #1

declare dso_local i32 @r8712_aes_decrypt(%struct._adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
